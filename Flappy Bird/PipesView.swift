//
//  PipesView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI

struct PipesView: View {
    var body: some View {
        VStack {
            Image(.flappeBirdPipe)
                .resizable()
                .rotationEffect(.degrees(180))
            Spacer(minLength: 100)
            Image(.flappeBirdPipe)
                .resizable()

        }
            }
}

#Preview {
    PipesView()
}
