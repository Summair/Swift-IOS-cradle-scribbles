//
//  MiddleVC.swift
//  Order of Events Mohammed
//
//  Created by Mohammed Brohi on 3/31/19.
//  Copyright © 2019 Mohammed Brohi. All rights reserved.
//

import UIKit

class MiddleVC: UIViewController {

    
    @IBOutlet weak var MiddleVCLabel: UILabel!
    
    var eventNumber: Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let actualText = MiddleVCLabel.text {
            MiddleVCLabel.text = "\(actualText)\nEvent number \(eventNumber)"
            eventNumber += 1
        }
        
    
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let actualText = MiddleVCLabel.text {
            
            MiddleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewWillAppear"
            eventNumber += 1
        }
    }
    override func viewDidAppear(_ animated:Bool) {
        super.viewDidAppear(animated)
        if  let actualText = MiddleVCLabel.text {
            MiddleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewWillAppear"
            eventNumber += 1
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if  let actualText = MiddleVCLabel.text {
            MiddleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewWillDisappear"
            eventNumber += 1
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if  let actualText = MiddleVCLabel.text {
            MiddleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewWillDidsappear"
            eventNumber += 1
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
