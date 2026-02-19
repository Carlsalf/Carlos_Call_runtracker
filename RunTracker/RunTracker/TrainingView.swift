//
//  TrainingView.swift
//  RunTracker
//
//  Created by Carlos Alfredo Call on 19/2/26.
//

import SwiftUI

struct TrainingView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button(action: {
                    // TODO: iniciar entrenamiento / pantalla futura
                }) {
                    Image(systemName: "play.fill")
                        .font(.system(size: 48))
                        .padding(30)
                        .background(Circle().fill(Color.gray.opacity(0.2)))
                }
                Spacer()
            }
            .navigationTitle("Entreno")
        }
    }
}
