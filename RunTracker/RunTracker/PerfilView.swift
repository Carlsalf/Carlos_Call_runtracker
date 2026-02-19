//
//  PerfilView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 19/2/26.
//

import SwiftUI

struct PerfilView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Spacer(minLength: 10)

                // Avatar + Nombre
                HStack(spacing: 16) {
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 72))
                        .foregroundStyle(.gray)

                    Text("Nombre")
                        .font(.system(size: 44, weight: .bold, design: .rounded))
                        .foregroundStyle(.primary)
                        .lineLimit(1)
                        .minimumScaleFactor(0.7)

                    Spacer()

                    Image(systemName: "figure.stand")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal)

                Divider()
                    .padding(.horizontal)

                // Datos (mock)
                VStack(alignment: .leading, spacing: 18) {
                    PerfilRow(label: "Peso:", value: "00 kg")
                    PerfilRow(label: "Edad:", value: "00 años")
                    PerfilRow(label: "Altura:", value: "000 cm")
                }
                .padding(.horizontal)

                Spacer()
            }
            .navigationTitle("Perfil")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

private struct PerfilRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack(spacing: 10) {
            Text(label)
                .font(.title2.weight(.bold))

            Text(value)
                .font(.title2.weight(.semibold))
                .foregroundStyle(.secondary)

            Spacer()
        }
    }
}

#Preview {
    PerfilView()
}
