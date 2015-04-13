//
//  resultUIController.swift
//  Roshambo
//
//  Created by Ruben Ramirez on 4/13/15.
//  Copyright (c) 2015 Ruben Ramirez. All rights reserved.
//

import Foundation
import UIKit


class resultUIController: UIViewController {
var firstValue: Int?
var userPlay: String?
var valueToString: String?
@IBOutlet weak var resultLabel: UILabel!
    
@IBOutlet weak var imageResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let firstValue = self.firstValue {
            switch (firstValue)
            {
            case 1:
                valueToString = "paper"
            case 2:
                valueToString = "rock"
            case 3:
                valueToString = "scissor"
            default:
                println("There is an error")
            }
        }
        
        if let userPlay = self.userPlay{
            if let valueToString = self.valueToString {
                if (userPlay == "rock" && valueToString == "paper")
                {
                    resultLabel.text = "You lost - Paper kills rock"
                }
                else if (userPlay == "rock" && valueToString == "scissor")
                {
                    resultLabel.text = "You win - Rock kills scissor"
                }
                else if (userPlay == "rock" && valueToString == "rock")
                {
                    resultLabel.text = "Draw - Rock draws with Rock"
                }
                else if (userPlay == "paper" && valueToString == "scissor")
                {
                    resultLabel.text = "You Lost - Scissor kills Paper"
                }
                else if (userPlay == "paper" && valueToString == "paper")
                {
                    resultLabel.text = "You Draw - Paper and paper are just paper and paper"
                }
                else if (userPlay == "paper" && valueToString == "rock")
                {
                    resultLabel.text = "You win - Paper wraps the rock until she dies?"
                }
                else if (userPlay == "scissor" && valueToString == "paper")
                {
                    resultLabel.text = "You win - Scissor kills Paper"
                }
                else if (userPlay == "scissor" && valueToString == "scissor")
                {
                    resultLabel.text = "You draw - Scissor and scissor just scissoring"
                }
                else if (userPlay == "scissor" && valueToString == "rock")
                {
                    resultLabel.text = "You lost - Rocks kills scissor somehow"
                }
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        
        // The dice will only appear if firstValue and secondValue have been set
        if let firstValue = self.firstValue {
            self.imageResult.image = UIImage(named: "a\(firstValue)")
        } else {
            self.imageResult.image = nil;
        }
        
        self.imageResult.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) {
            self.imageResult.alpha = 1
        }
    }
    
    /**
    * accepts a conditional Int, and returns an dice image, or nil
    */
    
    func imageForValue(value: Int?) -> UIImage? {
        return nil
    }

    @IBAction func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

