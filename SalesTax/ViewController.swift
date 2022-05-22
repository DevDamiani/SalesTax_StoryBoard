//
//  ViewController.swift
//  SalesTax
//
//  Created by Douglas Damiani de Paula (P) on 17/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var beforeTaxPrice: Float = 0
    var saleTaxRate: Float = 0
    @IBOutlet weak var afterTaxPriceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beforeTaxPriceChanged(_ sender: UITextField) {
        
        if let value = Float( sender.text! ){
            beforeTaxPrice = value
        } else {
            beforeTaxPrice = 0
        }
        
        
    }
    
    @IBAction func saleTaxRateChanged(_ sender: UITextField) {
        
        if let value = Float( sender.text! ){
            saleTaxRate = value
        } else {
            saleTaxRate = 0
        }
    }
    
    @IBAction func calculateButtonPress(_ sender: Any) {
        
        if !hasValue() { return }
            
        let saleTax = beforeTaxPrice * saleTaxRate / 100
        
        let afterTaxPrice = beforeTaxPrice + saleTax
            
        afterTaxPriceTextField.text = String(afterTaxPrice)
        
    }
    
    func hasValue() -> Bool {
        return beforeTaxPrice != 0
    }
    
}

