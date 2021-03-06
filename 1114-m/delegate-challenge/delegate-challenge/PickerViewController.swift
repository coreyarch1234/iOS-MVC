//
//  PickerViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
  @IBOutlet weak var pickerView: UIPickerView!
  @IBOutlet weak var cityLabel: UILabel!
  
  let cities = ["New York", "San Francisco", "Berlin", "Hamburg", "Paris"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.pickerView.delegate = self
    self.pickerView.dataSource = self
  }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        cityLabel.text = cities[row]
        return cities[row]
    }

    

}
