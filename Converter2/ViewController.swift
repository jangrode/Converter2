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
    @IBOutlet weak var btnConvert: UIButton!
    @IBOutlet weak var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureLocalize()
    }

    func configureLocalize(){
        let answer = NSLocalizedString(localizedKeys.answerInCelsius.rawValue, comment: "")
        let convert = NSLocalizedString(localizedKeys.convertToFahrenheit.rawValue, comment: "")
        
        answerLabel.text = answer
        btnConvert.setTitle(convert, for: .normal)
    }
    
    @IBAction func convertButtonClicked(_ sender: UIButton) {
        // you can check empty string using ** result.isEmpty ** if it is true means empty/blank string that's why commented below if condition.
        if let result = entryTempTextField.text, !(result.isEmpty) {
//            if (result == "") {
//                return
//            }
//            else {
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    answerLabel.text = String(output)
                }
//            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

