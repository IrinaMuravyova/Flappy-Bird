//
//  BirdView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI
///Discribtion flyed bird
struct BirdView: View {
    ///bird's size = bird's weight = bird's hight
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
