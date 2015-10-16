//
//  ViewController.swift
//  MaJo
//
//  Created by Igor Budasov on 15.10.15.
//  Copyright (c) 2015 Igor Budasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var jokeItself: UITextView!

    @IBAction func getJoke(sender: UIButton) {
        jokeItself.text = getRandomJoke()
    }
    
    @IBAction func playSound(sender: UIButton) {
        jokeItself.text = "Ba - dum - tssss! Awesome joke!"
    }
    
    func getRandomJoke() -> String {
        let pullOfJokes = [
            "test 1",
            "test 2"
        ]
        
        var randomId = Int(arc4random_uniform(UInt32(pullOfJokes.count)))
        
        return pullOfJokes[randomId]
    }
}

