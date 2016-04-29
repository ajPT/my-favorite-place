//
//  ShadowedBackButton.swift
//  my-fav-place
//
//  Created by Amadeu Andrade on 29/04/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class ShadowedBackButton: UIButton {

    override func awakeFromNib() {
        self.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.35)
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }

}
