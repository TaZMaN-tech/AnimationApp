//
//  ViewController.swift
//  AnimationApp
//
//  Created by Тадевос Курдоглян on 15.01.2025.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animation = Animation.random()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func runButtonTapped(_ sender: UIButton) {
        applyAnimation()
        springAnimationView.animate()
        animation = Animation.random()
        updateUI()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func updateUI() {
        animationLabel.text = """
            preset: \(animation.preset)
            curve: \(animation.curve)
            force: \(String(format: "%.2f", animation.force))
            duration: \(String(format: "%.2f", animation.duration))
            delay: \(String(format: "%.2f", animation.delay))
            """
    }
    
    private func applyAnimation() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
}
