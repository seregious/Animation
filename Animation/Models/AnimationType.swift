//
//  Animation.swift
//  Animation
//
//  Created by Сергей Иванчихин on 15.04.2022.
//

import Foundation

struct AnimationType {
    let name, curve: String
    let force, duration, delay: Double
    
    static func getAnimationList() -> AnimationType {
        let data = DataManager.shared
        return AnimationType(
            name: data.animationNames.randomElement() ?? "pop",
            curve: data.curveNames.randomElement() ?? "linear",
            force: data.forse,
            duration: data.duration,
            delay: data.delay
        )
    }
}
