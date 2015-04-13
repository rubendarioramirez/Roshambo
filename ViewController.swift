//
//  ViewController.swift
//  Roshambo
//
//  Created by Ruben Ramirez on 4/7/15.
//  Copyright (c) 2015 Ruben Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func randomValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as resultUIController
        
        controller.firstValue = self.randomValue()
        if (scissorButton.touchInside)
        {
            controller.userPlay = "scissor"
        }
        else if(rockButton.touchInside)
        {
            controller.userPlay = "rock"
        }
        else
        {
            controller.userPlay = "paper"
        }
   
    }
    
    @IBAction func getResults() {
        performSegueWithIdentifier("getResults", sender: self)
    }

}

