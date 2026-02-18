//
//  RunsListView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 18/2/26.
//

import SwiftUI
import CoreData

struct RunsListView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \RunEntity.date, ascending: false)],
        animation: .default
    )
    private var runs: FetchedResults<RunEntity>

    @State private var showingAdd = false

    var body: some View {
        NavigationStack {
            List {
                ForEach(runs) { run in
                    NavigationLink {
                        RunDetailView(run: run)
                    } label: {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(run.date ?? Date(), style: .date)
                                .font(.headline)
                            Text("\(run.distanceKm, specifier: "%.2f") km")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .onDelete(perform: deleteRuns)
            }
            .navigationTitle("Runs")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingAdd = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAdd) {
                AddRunView()
            }
        }
    }

    private func deleteRuns(offsets: IndexSet) {
        offsets.map { runs[$0] }.forEach(viewContext.delete)
        do {
            try viewContext.save()
        } catch {
            print("Delete error:", error)
        }
    }
}

