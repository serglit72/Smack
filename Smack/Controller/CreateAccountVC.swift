//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Sergei Litovchenko on 12/28/18.
//  Copyright © 2018 Sergei Litovchenko. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func createAccntBtnPressed(_ sender: Any) {
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
