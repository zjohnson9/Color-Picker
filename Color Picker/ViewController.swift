//
//  ViewController.swift
//  Color Picker
//
//  Created by Zac Johnson on 10/5/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    struct Color {
        var colorName: String!
        var colorDisplay: UIColor!
    }
    
    var colorArray = [Color(colorName: "Red", colorDisplay: UIColor.red),
                      Color(colorName: "Orange", colorDisplay: UIColor.orange),
                      Color(colorName: "Yellow", colorDisplay: UIColor.yellow),
                      Color(colorName: "Green", colorDisplay: UIColor.green),
                      Color(colorName: "Blue", colorDisplay: UIColor.blue),
                      Color(colorName: "Purple", colorDisplay: UIColor.purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorArray[row].colorName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colorArray[row].colorName
        view.backgroundColor = colorArray[row].colorDisplay
    }
}
