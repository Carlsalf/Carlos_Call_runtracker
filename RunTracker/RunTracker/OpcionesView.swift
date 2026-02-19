//
//  OpcionesView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 19/2/26.
//

import SwiftUI

struct OpcionesView: View {

    @State private var notificationsEnabled: Bool = true
    @State private var darkModeEnabled: Bool = false

    var body: some View {
        NavigationStack {
            List {

                Section("Preferencias") {

                    Toggle(isOn: $notificationsEnabled) {
                        Label("Notificaciones", systemImage: "bell")
                    }

                    Toggle(isOn: $darkModeEnabled) {
                        Label("Modo oscuro", systemImage: "moon")
                    }
                }

                Section("Cuenta") {

                    HStack {
                        Label("Editar perfil", systemImage: "person.crop.circle")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }

                    HStack {
                        Label("Cerrar sesión", systemImage: "arrow.backward.circle")
                            .foregroundStyle(.red)
                        Spacer()
                    }
                }

                Section("Información") {

                    HStack {
                        Label("Versión", systemImage: "info.circle")
                        Spacer()
                        Text("1.0")
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Opciones")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    OpcionesView()
}
