//
//  Animation.swift
//  AnimationApp
//
//  Created by Тадевос Курдоглян on 15.01.2025.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func random() -> Animation {
        let dataStore = DataStore.shared
        
        let animation = Animation(
            preset: dataStore.presets.randomElement() ?? "pop",
            curve: dataStore.curves.randomElement() ?? "easeIn",
            force: Double.random(
                in: 0...1
            ),
            duration: Double.random(
                in: 0...1
            ),
            delay: Double.random(
                in: 0...2
            )
        )
        
        return animation
    }
}
