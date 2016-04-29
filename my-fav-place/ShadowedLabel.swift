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
        self.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.35)
        self.textColor = UIColor.whiteColor()
    }

}
