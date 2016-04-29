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
    var bulletsArray = [UIImageView]()
    var imageIndex = 0
    let DIM_ALPHA: CGFloat = 0.45
    let OPAQUE: CGFloat = 1.0

    @IBOutlet weak var photoImg: UIImageView!
    @IBOutlet weak var bullet1Img: UIImageView!
    @IBOutlet weak var bullet2Img: UIImageView!
    @IBOutlet weak var bullet3Img: UIImageView!
    @IBOutlet weak var bullet4Img: UIImageView!
    @IBOutlet weak var bullet5Img: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(PhotosViewController.swiped(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(PhotosViewController.swiped(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        photoImg.image = UIImage(named:photosArray[imageIndex])
        
        bulletsArray = [bullet1Img, bullet2Img, bullet3Img, bullet4Img, bullet5Img]
        
        updateBulletImg()
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
                    updateBulletImg()
                
                case UISwipeGestureRecognizerDirection.Left:
                    if imageIndex >= photosArray.count {
                        imageIndex = 0
                    }
                    photoImg.image = UIImage(named: photosArray[imageIndex])
                    updateBulletImg()
                    imageIndex += 1
                
                default:
                    break
            }
        }
    }
    
    func updateBulletImg() {
        for index in 0...4 {
            if index == imageIndex {
                bulletsArray[index].alpha = OPAQUE
            } else {
                bulletsArray[index].alpha = DIM_ALPHA
            }
        }
    }

}
