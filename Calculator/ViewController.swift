//
//  ViewController.swift
//  Calculator
//
//  Created by Guillaume Lazaro on 23/10/2017.
//  Copyright © 2017 Guillaume Lazaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var secondOperandLabel: UILabel!
    @IBOutlet weak var operatorLabel: UILabel!

    @IBAction func crashButton(_ sender: Any) {
        
        fatalError()
        //let testCrash: Int
        
    }
    var operA: Int = 0
    var operB: Int = 0

    var oppActual: OPP = OPP.add

    enum OPP {
        case add
        case sub
        case mult
        case div
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.resultLabel.alpha = 0
    }

    override func viewDidAppear (_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate (withDuration: 2) {
            self.resultLabel.alpha = 1
        }
    }

    /*override func viewWilldisappear(_ animated: Bool) {
        super?viewWilldisappear(<#T##animated: Bool##Bool#>)
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressNumber(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        if resultLabel.text == "0" {
            resultLabel.text = button.titleLabel?.text
        } else {
            resultLabel.text?.append(button.titleLabel?.text ?? "")
        }
    }

    @IBAction func didPressAdd(_ sender: Any) {
        oppActual = OPP.add
        if(operB>(-1)) {
            operA = Int(resultLabel.text ?? "") ?? 0
            operB /= operA
        } else {
            operB = Int(resultLabel.text ?? "") ?? 0
        }
        secondOperandLabel.text = String(operB)
        resetDisplay()
    }
    
    @IBAction func didPressSub(_ sender: Any) {
        oppActual = OPP.sub
    }
    
    @IBAction func didPressReset(_ sender: Any) {
        resetDisplay()
        secondOperandLabel.text = ""
    }
    
    @IBAction func didPressEqual(_ sender: Any) {
        if operB>0 {
            //Add:
            operA=Int(resultLabel.text ?? "") ?? 0
            secondOperandLabel.text = String(operA+operB)
            resetDisplay()
        }
    }
    
    func resetDisplay() {
        resultLabel.text = "0"
    }
}

