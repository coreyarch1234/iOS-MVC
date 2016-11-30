//
//  TextFieldViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate{
  
  @IBOutlet weak var textField: UITextField!
      
  override func viewDidLoad() {
    super.viewDidLoad()
    textField.delegate = self
  }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let nsTextField = textField.text as NSString?
        let newString = nsTextField?.replacingCharacters(in: range, with: (nsTextField?.uppercased)!)
        textField.text = newString
        return true
    }
}
