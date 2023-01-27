//
//  ViewController.swift
//  EggTimer
//
//  Created by Марк Райтман on 27.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Constants
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12

    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: Buttons
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        if hardness == "Soft" {
            print(softTime)
        } else if hardness == "Medium" {
            print(mediumTime)
        } else if hardness == "Hard" {
            print(hardTime)
        } else {
            print("Error!")
        }
    }
 }


