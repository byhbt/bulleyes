//
//  Game.swift
//  Bulleyes
//
//  Created by Thanh Huynh on 6/4/22.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1..<100)
  var score: Int = 0
  var round: Int = 1
  
  func points(sliderValue: Int) -> Int {
    100 - abs(sliderValue - target)
  }
}
