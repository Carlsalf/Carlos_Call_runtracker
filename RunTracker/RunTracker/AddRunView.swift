//
//  AddRunView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 18/2/26.
//

import SwiftUI
import CoreData

struct AddRunView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.managedObjectContext) private var viewContext

    @State private var date = Date()
    @State private var distanceText = ""
    @State private var notes = ""

    var body: some View {
        NavigationStack {
            Form {
                DatePicker("Date", selection: $date, displayedComponents: .date)

                TextField("Distance (km)", text: $distanceText)
                    .keyboardType(.decimalPad)

                TextField("Notes", text: $notes)
            }
            .navigationTitle("New Run")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") { save() }
                        .disabled(!canSave)
                }
            }
        }
    }

    private var canSave: Bool {
        Double(distanceText.replacingOccurrences(of: ",", with: ".")) != nil
    }

    private func save() {
        let run = RunEntity(context: viewContext)
        run.id = UUID()
        run.date = date
        run.distanceKm = Double(distanceText.replacingOccurrences(of: ",", with: ".")) ?? 0
        run.notes = notes

        do {
            try viewContext.save()
            dismiss()
        } catch {
            print("Save error:", error)
        }
    }
}
