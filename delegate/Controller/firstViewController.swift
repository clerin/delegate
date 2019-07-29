//
//  ViewController.swift
//  delegate
//
//  Created by clerin binil on 29/07/19.
//  Copyright © 2019 clerin binil. All rights reserved.
//

import UIKit

class firstViewController: UIViewController,nameDelegate{

    @IBOutlet var firstNameTextField: UITextField!
    
    
    @IBOutlet var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToNextPageBtnPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "second", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! secondViewController
        destinationVC.delegate = self
    }
    
    func getFullName(lastName: String) {
        fullNameLabel.text = firstNameTextField.text! + " " + lastName
    }
    
}

