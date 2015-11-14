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
    @IBOutlet var baDumTsssImage: UIImageView!

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
        baDumTsssImage.hidden = true
        jokeItselfValue = model.getRandomJoke(self.easternEuropeMode)
    }

    @IBAction func getJoke(sender: UIButton) {
        jokeItself!.hidden = false
        baDumTsssImage.hidden = true
        jokeItselfValue = model.getRandomJoke(self.easternEuropeMode)
    }
    
    @IBAction func playSound(sender: UIButton) {
        jokeItself!.hidden = true
        baDumTsssImage.hidden = false
        SKAction.playSoundFileNamed("Ba-dum-tss-Tu-dum-tsss.mp3", waitForCompletion: false)
    }
    
    @IBAction func switchMode(sender: UISwitch) {
        easternEuropeMode = (sender.on)
        jokeItself!.hidden = false
        baDumTsssImage.hidden = true
        jokeItselfValue = model.getRandomJoke(self.easternEuropeMode)
    }
}

