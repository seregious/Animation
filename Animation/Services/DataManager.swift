//
//  DataManager.swift
//  Animation
//
//  Created by Сергей Иванчихин on 15.04.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let animationNames = ["shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX", "flipY", "fall", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp", "slideLeft", "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn", "zoomOut", "flash"]
    let curveNames = ["linear", "spring", "easeIn", "easeOut", "easeInOut"]
    
    var forse: Double {
        Double.random(in: 0.5...1.5)
    }
    
    var duration: Double {
        Double.random(in: 1...2)
    }
    
    var delay: Double {
        Double.random(in: 0.1...0.5)
    }
    
    private init() {}
}
