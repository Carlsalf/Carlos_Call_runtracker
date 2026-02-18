//
//  RunDetailView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 18/2/26.
//

import SwiftUI

struct RunDetailView: View {
    let run: RunEntity

    var body: some View {
        Form {
            Section("Date") {
                Text(run.date ?? Date(), style: .date)
            }
            Section("Distance") {
                Text("\(run.distanceKm, specifier: "%.2f") km")
            }
            Section("Notes") {
                Text(run.notes ?? "-")
            }
        }
        .navigationTitle("Run")
    }
}

