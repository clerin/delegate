//
//  secondViewController.swift
//  delegate
//
//  Created by clerin binil on 29/07/19.
//  Copyright © 2019 clerin binil. All rights reserved.
//

import UIKit

@objc protocol nameDelegate {
    func getFullName (lastName : String)
}

class secondViewController: UIViewController {

    @IBOutlet var lnameTextField: UITextField!
    var delegate : nameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    

    @IBAction func gotoHomePageBtnPressed(_ sender: UIButton) {
    // optional chaining
        self.delegate?.getFullName(lastName: lnameTextField.text!)
        dismiss(animated: true, completion: nil)
        
    }
    
}
