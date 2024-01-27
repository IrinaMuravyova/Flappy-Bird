//
//  ScoreView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI

struct ScoreView: View {
    
    let score: Int
    let highScore: Int
    
    var body: some View {
        VStack {
            Text("Game over")
                .font(.largeTitle)
                .padding()
            Text("Score \(score)")
                .font(.title)
                .padding()
            Text("Best score \(highScore)")
                .font(.title)
                .padding()
        }
        .background(.white)
        .opacity(0.6)
        .clipShape(.rect(cornerRadius: 30))
    }
}

#Preview {
    ScoreView(score: 3, highScore: 5)
}
