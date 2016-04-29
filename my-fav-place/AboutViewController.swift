//
//  AboutViewController.swift
//  my-fav-place
//
//  Created by Amadeu Andrade on 28/04/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onBackPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}
