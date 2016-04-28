//
//  ShadowedLabel.swift
//  my-fav-place
//
//  Created by Amadeu Andrade on 28/04/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class ShadowedLabel: UILabel {

    override func awakeFromNib() {
        self.backgroundColor = UIColor(red: 255.0/255.0, green: 145.0/255.0, blue: 29.0/255.0, alpha: 0.65)
        self.textColor = UIColor.whiteColor()
    }

}
