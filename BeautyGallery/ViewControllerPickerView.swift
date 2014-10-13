//
//  ViewControllerPickerView.swift
//  BeautyGallery
//
//  Created by tujiaw on 14-10-13.
//  Copyright (c) 2014年 tujiaw. All rights reserved.
//

import UIKit

extension ViewController : UIPickerViewDataSource {
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return members.count
    }
}

extension ViewController : UIPickerViewDelegate {
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return members.values.array[row]
    }
}