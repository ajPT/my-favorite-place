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
        self.backgroundColor = UIColor(red: 255.0/255.0, green: 145.0/255.0, blue: 29.0/255.0, alpha: 0.65)
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
    
    override var highlighted: Bool {
        didSet {
            if highlighted {
                self.backgroundColor = UIColor(red: 255.0/255.0, green: 145.0/255.0, blue: 29.0/255.0, alpha: 0.65)
            } else {
                self.backgroundColor = UIColor(red: 255.0/255.0, green: 145.0/255.0, blue: 29.0/255.0, alpha: 0.45)
            }
        }
    }
    
}
