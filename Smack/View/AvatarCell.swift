//
//  AvatarCell.swift
//  Smack
//
//  Created by Sergei Litovchenko on 1/6/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
  
    @IBOutlet weak var avatarImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
    
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
}
}
