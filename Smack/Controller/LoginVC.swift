//
//  LoginVC.swift
//  Smack
//
//  Created by Sergei Litovchenko on 12/28/18.
//  Copyright © 2018 Sergei Litovchenko. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createAccntBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }

}
