//
//  ChannelVC.swift
//  Smack
//
//  Created by Sergei Litovchenko on 12/27/18.
//  Copyright © 2018 Sergei Litovchenko. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlets
    
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
}

    
    @IBAction func LoginBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
