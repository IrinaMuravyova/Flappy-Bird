//
//  GameView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI

struct GameView: View {
    
    private let birdPosition = CGPoint(x: 100, y: 300)
    private let topPipeHeight = CGFloat.random(in: 100...500)
    private let pipeWeight: CGFloat = 100
    private let spacingHeight: CGFloat = 200
    private let pipeOffset: CGFloat = 0
    private let score: Int = 0
    
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                ZStack {
                    Image(.flappyBirdBackground)
                        .resizable()
                        .ignoresSafeArea()
                        .padding(.bottom, -50)
                        .padding(.trailing, -50)
                    
                    BirdView()
                        .position(birdPosition)
                    
                    PipesView(pipeWeight: pipeWeight,
                              spacingHeight: spacingHeight,
                              topPipeHeight: topPipeHeight)
                    .offset(x: geo.size.width + pipeOffset)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Text(score.formatted())
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    GameView()
}
