//
//  Game.swift
//  Bullseye
//
//  Created by paulkim on 4/16/21.
//

import Foundation

struct Game {
    var target: Int = 42
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Double) -> Int {
        return Int(sliderValue.rounded())
    }
}
