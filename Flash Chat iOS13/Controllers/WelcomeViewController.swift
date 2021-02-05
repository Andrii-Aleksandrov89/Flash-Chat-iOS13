//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        let label = K.appName
        var charIndex = 0.0
        for char in label {
            Timer.scheduledTimer(withTimeInterval: charIndex * 0.1, repeats: false) { (timer) in
                self.titleLabel.text?.append(char)
            }
            charIndex += 1
        }
    }
    
}
