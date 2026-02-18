//
//  RunTrackerApp.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 18/2/26.
//

import SwiftUI
import CoreData

@main
struct RunTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
