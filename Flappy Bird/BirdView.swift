//
//  BirdView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI

struct BirdView: View {
    
    let birdSize: CGFloat
    
    var body: some View {
        Image(.flappyBird)
            .resizable()
            .scaledToFit()
            .frame(width: birdSize)
    }
}

#Preview {
    BirdView(birdSize: 100)
}
