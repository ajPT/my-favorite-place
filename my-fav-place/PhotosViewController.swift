//
//  PhotosViewController.swift
//  my-fav-place
//
//  Created by Amadeu Andrade on 28/04/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    var photosArray = ["night", "barcos", "ribeira", "bolhao", "caves"]
    var imageIndex = 0

    @IBOutlet weak var photoImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(PhotosViewController.swiped(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(PhotosViewController.swiped(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        photoImg.image = UIImage(named:photosArray[imageIndex])
    }
    
    func swiped(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
                case UISwipeGestureRecognizerDirection.Right:
                    imageIndex -= 1
                    if imageIndex < 0 {
                        imageIndex += photosArray.count
                    }
                    photoImg.image = UIImage(named: photosArray[imageIndex])
                
                case UISwipeGestureRecognizerDirection.Left:
                    if imageIndex >= photosArray.count {
                        imageIndex = 0
                    }
                    photoImg.image = UIImage(named: photosArray[imageIndex])
                    imageIndex += 1
                
                default:
                    break
            }
        }
    }

}
