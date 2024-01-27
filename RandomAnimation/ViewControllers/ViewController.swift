//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Serge Bowski on 1/25/24.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet private weak var springView: SpringView!
    
    @IBOutlet private weak var presetLabel: UILabel!
    @IBOutlet private weak var curveLabel: UILabel!
    @IBOutlet private weak var forceLabel: UILabel!
    @IBOutlet private weak var durationLabel: UILabel!
    @IBOutlet private weak var delayLabel: UILabel!
    
    private let springModel = SpringModel.getModel()
    private var firstEntry = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presetLabel.text = "Preset: \(springModel.animationPreset)"
        curveLabel.text = "Curve: \(springModel.curvePreset)"
        forceLabel.text = "Force: \(springModel.force)"
        durationLabel.text = "Duration: \(springModel.duration)"
        delayLabel.text = "Delay: \(springModel.delay)"
    }
    

    @IBAction private func animationButtonPressed(_ sender: UIButton) {
        if firstEntry {
            springView.animation = springModel.animationPreset.rawValue
            springView.curve = springModel.curvePreset.rawValue
            springView.force = springModel.force
            springView.duration = springModel.duration
            springView.delay = springModel.delay
            
            springView.animate()
            firstEntry.toggle()
            
            springView.animation = AnimationPreset.allCases.randomElement()?.rawValue ?? ""
            sender.setTitle("Run \(springView.animation)", for: .normal)
        } else {
            springView.animation = sender.titleLabel?.text?.deletingPrefix("Run ") ?? ""
            springView.curve = AnimationCurve.allCases.randomElement()?.rawValue ?? ""
               
            springView.force = CGFloat.random(in: (1.0...2.0))
            springView.duration = CGFloat.random(in: (0.1...1.5))
            springView.delay = CGFloat.random(in: (0.0...1.0))
            
            presetLabel.text = "Preset: \(springView.animation)"
            curveLabel.text = "Curve: \(springView.curve)"
            forceLabel.text = String(format: "Force: %0.2f", springView.force)
            durationLabel.text = String(format: "Duration: %0.2f", springView.duration)
            delayLabel.text = String(format: "Delay: %0.2f", springView.delay)
            
            springView.animate()
            
            springView.animation = AnimationPreset.allCases.randomElement()?.rawValue ?? ""
            sender.setTitle("Run \(springView.animation)", for: .normal)
        }
    }
}
