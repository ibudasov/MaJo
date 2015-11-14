//
//  ViewController.swift
//  MaJo
//
//  Created by Igor Budasov on 15.10.15.
//  Copyright (c) 2015 Igor Budasov. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var jokeItself: UILabel?

    let model = MaJoModel()

    var easternEuropeMode = false
    var jokeItselfValue: String {
        get {
            return jokeItself!.text!
        }
        set {
            // newValue - is magic variable, like set(newValue)
            jokeItself!.text = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad();
        jokeItselfValue = model.getRandomJoke(self.easternEuropeMode)
    }

    @IBAction func getJoke(sender: UIButton) {
        jokeItselfValue = model.getRandomJoke(self.easternEuropeMode)
    }
    
    @IBAction func playSound(sender: UIButton) {
        jokeItselfValue = "Ba - dum - tssss! \n \n Awesome joke!"
        SKAction.playSoundFileNamed("Ba-dum-tss-Tu-dum-tsss.mp3", waitForCompletion: false)
    }
    
    @IBAction func switchMode(sender: UISwitch) {
        easternEuropeMode = (sender.on)
        jokeItselfValue = model.getRandomJoke(self.easternEuropeMode)
    }
}

