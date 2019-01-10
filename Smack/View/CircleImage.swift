//
//  CircleImage.swift
//  Smack
//
//  Created by Sergei Litovchenko on 1/9/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        setupView()
    }
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
