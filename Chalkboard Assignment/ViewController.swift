//
//  ViewController.swift
//  Chalkboard Assignment
//
//  Created by Payton Binns on 4/11/19.
//  Copyright © 2019 Payton Binns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var placeholderText:String = ""
     @IBOutlet weak var stepOutlet: UIStepper!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var textboxInput: UITextField!
    @IBOutlet weak var chalkboardLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func stepcounterTapped(_ sender: Any) {
       numberLabel.text = String(Int(stepOutlet.value))
    }
   
    @IBAction func writeButtonPressed(_ sender: Any) {
        
        writeStatement(numberOfTimes: Int(stepOutlet.value))
                chalkboardLabel.text = placeholderText
        
       chalkboardLabel.text = placeholderText
        }
        

    func writeStatement (numberOfTimes: Int) {
        for _ in 1...numberOfTimes{
            placeholderText += textboxInput.text! + "\n" }
    }
    
}

