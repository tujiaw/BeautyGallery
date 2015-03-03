//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by tujiaw on 15/3/3.
//  Copyright (c) 2015年 tujiaw. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {

    @IBOutlet weak var imageShow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func facebookClicked(sender: AnyObject) {
        var controller = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("一起来玩女神画廊吧,www.csdn.net")
        controller.addImage(imageShow.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterClicked(sender: AnyObject) {
        var controller = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神画廊吧,www.csdn.net")
        controller.addImage(imageShow.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func sinaClicked(sender: AnyObject) {
        var controller = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("一起来玩女神画廊吧,www.csdn.net")
        controller.addImage(imageShow.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}
