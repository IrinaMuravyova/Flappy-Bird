//
//  Bird.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI

struct Bird: View {
    var body: some View {
        Image(.flappyBird)
            .resizable()
            .scaledToFit()
            .frame(width: 100)
    }
}

#Preview {
    Bird()
}
