//
//  PipesView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI
///Discribtion top and bottom pipes
struct PipesView: View {
    ///The same for top and bottom pipes
    let pipeWeight: CGFloat
    ///Space between pipes
    let spacingHeight: CGFloat
    ///Hight of the top pipe
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
