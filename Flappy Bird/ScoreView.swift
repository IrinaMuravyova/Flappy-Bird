//
//  ScoreView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI
///Show score data, include current score, best score
struct ScoreView: View {
    ///Current score
    let score: Int
    ///Best score, reset after app off
    let highScore: Int
    ///Start new game and current score starts from zero
    let resetAction: () -> Void
    
    var body: some View {
        VStack {
            Text("Game over")
                .font(.largeTitle)
                .padding()
            Text("Score \(score)")
                .font(.title)
            Text("BEST \(highScore)")
                .font(.title)
                .padding()
            Button("Reset", 
                   action: resetAction)
            .buttonStyle(.borderedProminent)
            .font(.largeTitle)
            .controlSize(.large)
            .padding()
        }
        .background(.white.opacity(0.6))
        .clipShape(.rect(cornerRadius: 30))
    }
}

#Preview {
    ScoreView(score: 3, 
              highScore: 5,
              resetAction: {})
}
