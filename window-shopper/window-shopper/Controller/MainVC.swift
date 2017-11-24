//
//  ViewController.swift
//  window-shopper
//
//  Created by Leon Roe on 23/11/2017.
//  Copyright © 2017 Devroe. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: currencyBtn!
    @IBOutlet weak var priceTxt: currencyBtn!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)      // Always use setTitle (not title) - for setting text on a button
        calcButton.setTitleColor( #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcButton
        priceTxt.inputAccessoryView = calcButton
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {            // @objc feature
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true) // dismiss the keyboard
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, forPrice: price))"
            }
            
        }
    }

    @IBAction func clearCalc(_ sender: Any) {
            resultLbl.isHidden = true
            hoursLbl.isHidden = true
            wageTxt.text = ""
            priceTxt.text = ""
    }
    
}


