//
//  GameView.swift
//  Flappy Bird
//
//  Created by Irina Muravyeva on 27.01.2024.
//

import SwiftUI

struct GameView: View {
    
    @State private var birdPosition = CGPoint(x: 100, y: 300)
    @State private var topPipeHeight = CGFloat.random(in: 100...500)
    private let pipeWeight: CGFloat = 100
    private let spacingHeight: CGFloat = 200
    @State private var pipeOffset: CGFloat = 0
    @State private var score: Int = 0
    
    //каждые 0,01 секунды мы будем отправлять в main поток данные в режиме common
    private let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect() 
    
    // сохраняем последнее время того момента, когда таймер обновился
    @State private var lastUpdateTime = Date()
    
    // направление того, куда движется наша птичка (вектор ее свободного падения)
    @State private var birdVelocity = CGVector(dx: 0, dy: 0)
    
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                ZStack {
                    Image(.flappyBirdBackground)
                        .resizable()
                        .ignoresSafeArea()
                        .padding(.bottom, -50)
                        .padding(.trailing, -50)
                    
                    BirdView(birdSize: 100)
                        .position(birdPosition)
                    
                    PipesView(pipeWeight: pipeWeight,
                              spacingHeight: spacingHeight,
                              topPipeHeight: topPipeHeight)
                    .offset(x: geo.size.width + pipeOffset)
                }
                .onTapGesture { //обрабатывает этот код при нажатии на экран
                    // те на эту величину птичка прыгает вверх при тапе на экран
                    birdVelocity = CGVector(dx: 0, dy: -400)
                }
                .onReceive(timer, perform: { currentTime in //получаем сообщения от нашего таймера
                    let deltaTime = currentTime.timeIntervalSince(lastUpdateTime)
                    
                    applyGravity(deltaTime: deltaTime)
                    updateBirdPosition(deltaTime: deltaTime)
                    checkBounds(geometry: geo)
                    updatePipePosition(deltaTime: deltaTime)
                    resetPipePosition(geometry: geo)
                    
                    lastUpdateTime = currentTime
                })
                
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
    private func applyGravity(deltaTime: TimeInterval) {
        birdVelocity.dy += CGFloat(1000 * deltaTime)
    }
    
    private func updateBirdPosition(deltaTime: TimeInterval){
        birdPosition.y += birdVelocity.dy * deltaTime
    }
    
    // проверяю что птичка не выходит за границы
    private func checkBounds(geometry: GeometryProxy){
        if birdPosition.y > geometry.size.height - 50 {
            birdPosition.y = geometry.size.height - 50
            // 50 случайное число, просто чтобы не впритык к экрану
            birdVelocity.dy = 0
        }
        
        if birdPosition.y <= 0 {
            birdPosition.y = 0
        }
    }
    
    private func updatePipePosition(deltaTime: TimeInterval){
        pipeOffset -= 250 * deltaTime // скорость движения труб
    }
    
    //когда правая граница трубы пересекает leading, запускаем трубы снова
    private func resetPipePosition(geometry: GeometryProxy){
        if pipeOffset <= -geometry.size.width - pipeWeight {
            pipeOffset = 0
            topPipeHeight = CGFloat.random(in: 100...500)
        }
    }
}

#Preview {
    GameView()
}
