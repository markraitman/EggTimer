//
//  ViewController.swift
//  EggTimer
//
//  Created by Марк Райтман on 27.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Constants
    let eggTimes = ["Soft" : 300, "Medium" : 450, "Hard" : 720]
    
    var secondsRemaining = 60
    
    var timer = Timer()
    
    //MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Actions
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        secondsRemaining = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        titleLabel.text = "Nice choice! Wait about \(secondsRemaining / 60) min, please(="
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
        }
    }
    
    
    
}


