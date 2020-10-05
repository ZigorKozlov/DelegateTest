//
//  ViewController.swift
//  LiveCycleVCTest
//
//  Created by Игорь Козлов on 05.10.2020.
//  Copyright © 2020 Игорь Козлов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    var textFor2VC = "Enter text for first VC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "segueGoToSecondVC" {
            let distinationVC: SecondViewConttoller = segue.destination as! SecondViewConttoller
            distinationVC.delegate = self
            distinationVC.inputText = textFor2VC
        }
    }
    
}

extension ViewController: SecondVCDelegate {
    func fillTheLableWith(info: String?) {
        if let info = info {
            lable.text = info

        }
    }
}
