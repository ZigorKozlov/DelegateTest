//
//  SecondViewConttoller.swift
//  LiveCycleVCTest
//
//  Created by Игорь Козлов on 05.10.2020.
//  Copyright © 2020 Игорь Козлов. All rights reserved.
//

import UIKit

protocol SecondVCDelegate {
     func fillTheLableWith(info: String?)
}

class SecondViewConttoller: UIViewController {

    var delegate: SecondVCDelegate?
    
    @IBOutlet weak var textField: UITextField!
    var inputText: String? {
        didSet {
            print("Text field was inited")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")
        if let inputText = inputText {
            textField.placeholder = inputText
        }
    }
    

    
    @IBAction func goBackPressed(_ sender: Any) {
        delegate?.fillTheLableWith(info: textField.text)
        dismiss(animated: true, completion: nil)
    }
}
