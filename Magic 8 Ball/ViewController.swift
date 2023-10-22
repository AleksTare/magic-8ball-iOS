//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Aleks Tare on 22/10/2023.
//  Copyright © 2023 alekst.al All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImageAnswer: UIImageView!
    
    let ballArray = [UIImage(named: "ball1.jpg"),
                     UIImage(named: "ball2.jpg"),
                     UIImage(named: "ball3.jpg"),
                     UIImage(named: "ball4.jpg"),
                     UIImage(named: "ball5.jpg")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder() // To get shake gesture
    }
    
    // We are willing to become first responder to get shake motion
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            randomizeImage()
        }
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
       randomizeImage()
    }
    
    func randomizeImage(){
        ballImageAnswer.image = ballArray[Int.random(in: 0...4)]
    }
    

}

