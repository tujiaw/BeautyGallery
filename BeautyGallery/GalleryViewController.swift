//
//  galleryViewController.swift
//  BeautyGallery
//
//  Created by tujiaw on 14-10-13.
//  Copyright (c) 2014年 tujiaw. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    var imageName_:String?
    var galleryName_:String?
    
    @IBOutlet weak var imageShow: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let imageName = imageName_ {
            imageShow.image = UIImage(named: imageName)
        }
        if let galleryName = galleryName_ {
            navigationItem.title = galleryName
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func share(sender: AnyObject) {
        var controller = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神画廊吧,www.csdn.net")
        controller.addImage(imageShow.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}