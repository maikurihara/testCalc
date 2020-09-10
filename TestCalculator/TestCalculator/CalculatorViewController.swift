//
//  ViewController.swift
//  TestCalculator
//
//  Created by 栗原　真依 on 2020/09/10.
//  Copyright © 2020 栗原　真依. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    enum CalculateMethod {
        case plus
        case minus
        case multi
        case div
        case non
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    
    private var previousValue: Int = 0
    private var currentValue: Int = 0
    private var isMethodTapped: Bool = false
    private var method: CalculateMethod = .non

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func zeroIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 0
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func oneIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 1
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 1
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func twoIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 2
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 2
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func threeIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 3
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 3
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func forIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 4
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 4
        }
            answerLabel.text = String(currentValue)
    }
    
    @IBAction func fiveIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 5
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 5
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func sixIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 6
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 6
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func sevenIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 7
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 7
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func eightIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 8
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 8
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func nineIsTapped(_ sender: Any) {
        if isMethodTapped {
            currentValue = 9
            isMethodTapped = false
        } else {
            currentValue = currentValue * 10 + 9
        }
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func allClearIsTapped(_ sender: Any) {
        currentValue = 0
        answerLabel.text = String(currentValue)
    }
    
    @IBAction func percentIsTapped(_ sender: Any) {
    }
    
    @IBAction func divIsTapped(_ sender: Any) {
    }
    
    @IBAction func multiIsTapped(_ sender: Any) {
        isMethodTapped = true
        previousValue = currentValue
        method = .multi
    }
    
    @IBAction func minusIsTapped(_ sender: Any) {
        isMethodTapped = true
        previousValue = currentValue
        method = .minus
    }
    
    @IBAction func plusIsTapped(_ sender: Any) {
        isMethodTapped = true
        previousValue = currentValue
        method = .plus
    }
    
    @IBAction func equalIsTapped(_ sender: Any) {
        switch method {
        case .plus:
            currentValue = currentValue + previousValue
        case .minus:
            currentValue = previousValue - currentValue
        case .multi:
            currentValue = currentValue * previousValue
        default:
            break
        }
        answerLabel.text = String(currentValue)
    }
    
}
