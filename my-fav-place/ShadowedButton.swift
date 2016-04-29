//
//  ShadowedButton.swift
//  my-fav-place
//
//  Created by Amadeu Andrade on 28/04/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class ShadowedButton: UIButton {

    override func awakeFromNib() {
        self.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.75)
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
    
    override var highlighted: Bool {
        didSet {
            if highlighted {
                self.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.75)
            } else {
                self.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.65)
            }
        }
    }
    
}
