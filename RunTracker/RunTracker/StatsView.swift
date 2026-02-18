//
//  StatsView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 18/2/26.
//

import SwiftUI
import CoreData

struct StatsView: View {
    @FetchRequest(
        sortDescriptors: [],
        animation: .default
    )
    private var runs: FetchedResults<RunEntity>

    private var totalKm: Double {
        runs.reduce(0) { $0 + $1.distanceKm }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Total distance")
                    .font(.headline)
                Text("\(totalKm, specifier: "%.2f") km")
                    .font(.largeTitle)
                    .bold()
            }
            .padding()
            .navigationTitle("Stats")
        }
    }
}
