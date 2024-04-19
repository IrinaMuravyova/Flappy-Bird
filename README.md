<p align="center">
      <img src="https://i.ibb.co/qmqv7ZY/2024-04-13-17-42-50.png" width="726">
</p>

<p align="center">
   <img src="https://img.shields.io/badge/Engine-XCode v15.3-blueviolet">
   <img src="https://img.shields.io/badge/Version-v1.0-blue">
   <img src="https://img.shields.io/badge/License-MIT-green">
</p>

## About
Одноименная игра в упрощенном исполнении по вебинару. 
Птичка умеет летать вверх, падать вниз. Трубы на экране движутся.
Если птичка пролетает между трубами, счет игры увеличивается на 1. Если врезается - игра заканчивается.
До перезагрузки игры мы видим текущий счет и лучший счет игры.

**В проекте используются:**

* SwiftUI
* обрабтка нажатия на экран (по нажатию птичка поднимается вверх)
* State переменные
* работа с таймером
* GeometryReader
* обработка границ экрана(проверяю, что птичка не выходит за границы, когда правая граница трубы пересекает leading, запускаем трубы снова)
* проверка пересечения объектов


![screenshot of sample](https://i.ibb.co/BZbfSRF/flappy-bird.png)

## Documentation

### ViewControllers:

* Flappy_BirdApp - точка входа в программу.
  
* GameView - основная логика программы (движение труб, движение птицы, обработка коллизий)
  
* BirdView - отвечает за разамеры птички
  
* PipesView - отвечает за размеры и расположение труб на экране
  
* ScoreView - отвечает за экран с очками по итогу игры
  

## Developers

- [Irina Muravyova](https://github.com/IrinaMuravyova)

## License
Project Flappy Bird is distributed under the MIT license.
