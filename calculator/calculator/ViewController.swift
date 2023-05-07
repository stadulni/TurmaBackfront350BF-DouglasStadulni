//
//  ViewController.swift
//  calculator
//
//  Created by Douglas Stadulni on 06/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: What I need?
    // MARK: firstNumber, secondNumber, operator, haveResult, resultNumber, numberAfterResult
    
    
    @IBOutlet weak var numberOnScreenLabel: UILabel!
    
    @IBOutlet var calculatorButtons: [UIButton]!
    
    var firstNumber: String = ""
    var secondNumber: String = ""
    var operation: String = ""
    var haveResult: Bool = false
    var resultNumber: String = ""
    var numberAfterResult: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in calculatorButtons {
            button.layer.cornerRadius = button.frame.size.height / 2 ;
            button.titleLabel?.font = UIFont(name: "System", size: 30)
        }
        
    }


}

