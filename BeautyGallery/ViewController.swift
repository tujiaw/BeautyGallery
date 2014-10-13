//
//  ViewController.swift
//  BeautyGallery
//
//  Created by tujiaw on 14-10-12.
//  Copyright (c) 2014年 tujiaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    let members = ["yangmi":"杨幂", "libingbing":"李冰冰", "wangfei":"王菲", "zhouxun":"周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GotoGallery" {
            let index = self.beautyPicker.selectedRowInComponent(0)
            let dst = segue.destinationViewController as GalleryViewController
            dst.imageName_ = members.keys.array[index]
            dst.galleryName_ = members.values.array[index]
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        println("close")
    }
}

