//
//  ViewController.swift
//  MaJo
//
//  Created by Igor Budasov on 15.10.15.
//  Copyright (c) 2015 Igor Budasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var jokeItself: UITextView?
    
    let model = MaJoModel()
    var easternEuropeMode = false
    
    var jokeItselfValue: String {
        get {
            return jokeItself!.text
        }
        set {
            // newValue - is magic variable, like set(newValue)
            jokeItself!.text = newValue
        }
    }

    @IBAction func getJoke(sender: UIButton) {
        jokeItselfValue = model.getRandomJoke(self.easternEuropeMode)
    }
    
    @IBAction func playSound(sender: UIButton) {
        jokeItselfValue = "Ba - dum - tssss! \n \n Awesome joke!"
    }
    
    @IBAction func switchMode(sender: UISwitch) {
        easternEuropeMode = (sender.on)
    }
}

