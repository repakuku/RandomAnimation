//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Алексей Турулин on 6/12/23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var parametersLabel: SpringLabel!
    
    private var animation = Animation.getRandom()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        startLabelAnimation()
        startViewAnimation()

        updateLabel()
        
        animation = Animation.getRandom()
        
        let title = "Run \(animation.preset)"
        sender.setTitle(title, for: .normal)
    }
    
    private func startViewAnimation() {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
    }
    
    private func startLabelAnimation() {
        parametersLabel.animation = "zoomIn"
        parametersLabel.curve = "easeIn"
        parametersLabel.force = 0.8
        parametersLabel.duration = 1
        parametersLabel.delay = 0
        parametersLabel.animate()
    }
    
    private func updateLabel() {
        let force = String(format: "%.2f", animation.force)
        let duration = String(format: "%.2f", animation.duration)
        let delay = String(format: "%.2f", animation.delay)
            
        parametersLabel.text = """
        preset: \(animation.preset)
        curve: \(animation.curve)
        force: \(force)
        duration: \(duration)
        delay: \(delay)
        """
    }
}

