//
//  ViewController.swift
//  Lab3
//
//  Created by Local Account 436-01 on 9/27/17.
//  Copyright © 2017 Local Account 436-01. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var ClassSelectedDisplay: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let courseNumbers = ["400", "402", "430", "436", "445", "466", "477", "480", "484", "491"];
    
    let classNames = ["Special Problems", "Software Requirements Engineering", "Programming Languages I", "Mobile Application Development", "Theory of Computation I", "Knowledge Discovery from Data", "Scientific and Information Visualization", "Artificial Intelligence", "User-Centered Interface Design and Development", "Senior Project I"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectClassOption(_ sender: UIButton) {
        let index = pickerView.selectedRow(inComponent: 0)
        
        ClassSelectedDisplay.text = courseNumbers[index] + " " + classNames[index];
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courseNumbers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courseNumbers[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

}

