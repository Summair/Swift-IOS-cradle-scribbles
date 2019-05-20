//
//  ViewController.swift
//  LoginMB
//
//  Created by Mohammed Brohi on 3/25/19.
//  Copyright © 2019 Mohammed Brohi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotUsername {
             segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPassword {
             segue.destination.navigationItem.title = "Forgot Password"
        } else {
            
             segue.destination.navigationItem.title = userNameTextField.text
            
        }
    }
    
    
    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsenameOrPassword", sender: forgotUsername)
        
    }
    @IBAction func forgotPassword(_ sender: UIButton) {
    performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotPassword)
    
    }
    
    
    
    

}

