//
//  ChatVCViewController.swift
//  Smack
//
//  Created by Sergei Litovchenko on 12/25/18.
//  Copyright © 2018 Sergei Litovchenko. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    //Outlets
    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    
    }
    
}
