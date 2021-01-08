//
//  ViewController.swift
//  Converter2
//
//  Created by Jan Grodecki on 11/11/20.
//  Updated on 01/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var entryTempTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertButtonClicked(_ sender: UIButton) {
        if let result = entryTempTextField.text {
            if(result == "") {
                return
            }
            else {
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    answerLabel.text = String(output)
                }
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

