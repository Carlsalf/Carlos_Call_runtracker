//
//  ContentView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 18/2/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RunsListView()
                .tabItem {
                    Label("Runs", systemImage: "figure.run")
                }

            StatsView()
                .tabItem {
                    Label("Stats", systemImage: "chart.bar")
                }
        }
    }
}
