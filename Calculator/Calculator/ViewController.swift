//
//  ViewController.swift
//  Calculator
//
//  Created by Mohammed Brohi on 3/10/19.
//  Copyright © 2019 Mohammed Brohi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var OutputOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performingMath = false
    var result = 0;
    
    @IBOutlet weak var Output: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            
            Output.text = String(sender.tag-1)
            OutputOnScreen = Double(Output.text!)!
            performingMath = false
        }
        else
        {
            Output.text = Output.text! + String(sender.tag-1)
            OutputOnScreen = Double(Output.text!)!
            }
        
        
    
    
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if Output.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(Output.text!)!
  
            if sender.tag == 12 // division function access
            {
                Output.text = "Divide";
            
            } else if  sender.tag == 13 // multiply function access
            {
                Output.text = "Multiply";
                    
                } else if sender.tag == 14 // subtraction function access
            
            {
                    Output.text = "Subtract";
                    
                }else if sender.tag == 15 // addition function
            
            {
                Output.text = "Addition";
            
            
            }
            
            result = sender.tag
            performingMath = true
        }
        
        else if sender.tag == 16 {
            
            if result == 12 {
                
                Output.text = String(previousNumber / OutputOnScreen)
                
                }
           else if result == 13 {
                
                Output.text = String(previousNumber * OutputOnScreen)            }
            else if result == 14 {
                
                Output.text = String(previousNumber - OutputOnScreen)            }
           
            else if result == 15 {
                
                Output.text = String(previousNumber + OutputOnScreen)
            }
            
        }
        
        else if  sender.tag == 11 {
            
            Output.text = ""
            previousNumber = 0;
            OutputOnScreen = 0;
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}



