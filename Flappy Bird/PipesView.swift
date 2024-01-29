//
//  PipesView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI

struct PipesView: View {
    
    let pipeWeight: CGFloat
    let spacingHeight: CGFloat
    let topPipeHeight: CGFloat
    
    var body: some View {
        GeometryReader(content: { geometry in
        
            let avaliableSpacing = geometry.size.height - spacingHeight
            let bottomPipeHeight = avaliableSpacing - topPipeHeight
            
        VStack {
            
            Image(.flappeBirdPipe)
                .resizable()
                .rotationEffect(.degrees(180))
                .frame(width: pipeWeight,
                       height: topPipeHeight)
            
            Spacer()
                .frame(height: spacingHeight)
            
            Image(.flappeBirdPipe)
                .resizable()
                .frame(width: pipeWeight,
                       height: bottomPipeHeight)

        }
        })
            }
}

#Preview {
    PipesView(pipeWeight: 100, spacingHeight: 100, topPipeHeight: 300)
}
