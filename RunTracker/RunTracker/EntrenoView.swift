//
//  EntrenoView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 19/2/26.
//

import SwiftUI

struct EntrenoView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Fondo tipo "mapa" (simulado, sin MapKit)
                MapPlaceholderView()
                    .ignoresSafeArea()

                // Botón Play grande centrado
                Button(action: {
                    // TODO: aquí luego iniciaremos el entrenamiento (timer / GPS / etc.)
                    print("Start training")
                }) {
                    Image(systemName: "play.fill")
                        .font(.system(size: 44, weight: .bold))
                        .foregroundStyle(.blue)
                        .frame(width: 110, height: 110)
                        .background(.ultraThinMaterial)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                }
            }
            .navigationTitle("Entreno")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

private struct MapPlaceholderView: View {
    var body: some View {
        ZStack {
            Color(.systemGray5)

            // Líneas estilo "calles"
            Path { p in
                p.move(to: CGPoint(x: 30, y: 140))
                p.addLine(to: CGPoint(x: 360, y: 220))

                p.move(to: CGPoint(x: 60, y: 420))
                p.addLine(to: CGPoint(x: 380, y: 360))

                p.move(to: CGPoint(x: 120, y: 260))
                p.addLine(to: CGPoint(x: 200, y: 650))

                p.move(to: CGPoint(x: 280, y: 120))
                p.addLine(to: CGPoint(x: 260, y: 720))
            }
            .stroke(Color(.systemGray3), lineWidth: 10)
            .opacity(0.7)

            // "Bloques" tipo edificios
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemGray3).opacity(0.55))
                .frame(width: 180, height: 220)
                .offset(x: -90, y: -40)

            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemGray4).opacity(0.65))
                .frame(width: 160, height: 180)
                .offset(x: 110, y: 40)

            Circle()
                .fill(Color(.systemGray2).opacity(0.6))
                .frame(width: 18, height: 18)
                .offset(x: -10, y: 40)
        }
    }
}

#Preview {
    EntrenoView()
}
