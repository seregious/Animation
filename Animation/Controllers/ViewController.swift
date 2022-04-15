//
//  ViewController.swift
//  Animation
//
//  Created by Сергей Иванчихин on 14.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    private var data = AnimationType.getAnimationList()
    
    @IBOutlet weak var animationView: SpringView!
    
    
    @IBOutlet weak var animationTypeLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 25
        getData()
        makeAnimation(from: data)
    }

    @IBAction func buttonPressed() {
        data = AnimationType.getAnimationList()
        getData()
        makeAnimation(from: data)
    }
    
}

extension ViewController {
    private func getData() {
        animationTypeLabel.text = "Animation: " + data.name
        curveLabel.text = "Curve: " + data.curve
        forceLabel.text = "Force: " + String(format: "%.02f", data.force)
        durationLabel.text = "Duration: " + String(format: "%.02f",data.duration)
        delayLabel.text = "Delay: " + String(format: "%.02f",data.delay)
        buttonLabel.setTitle(data.name, for: .normal)
    }
    
    private func makeAnimation(from animation: AnimationType) {
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
    }
}
