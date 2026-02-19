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
            EntrenoView()
                .tabItem {
                    Label("Entreno", systemImage: "play.circle.fill")
                }

            RunsListView()
                .tabItem {
                    Label("Historial", systemImage: "doc.text")
                }

            PerfilView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }

            OpcionesView()
                .tabItem {
                    Label("Opciones", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    ContentView()
}
