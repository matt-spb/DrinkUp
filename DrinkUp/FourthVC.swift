//
//  FourthVC.swift
//  DrinkUp
//
//  Created by macbook on 16/12/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class FourthVC: UIViewController {
    var info: InfoData!
    
    @IBOutlet weak var inputTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self

    }
    @IBAction func goToFifrhVC(_ sender: UIButton) {
        guard let fifthVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FifthVC") as? FifthVC else { return }
        
        guard let weight = UInt(inputTextField.text!) else { return }
        
        info.weight = weight
        
        fifthVC.labelText = info.result
        
        present(fifthVC, animated: true, completion: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        guard let weight = UInt(inputTextField.text!) else { return }
//
//        info.weight = weight
//
//        guard let nextController = segue.destination as? FifthVC else { return }
//
//        nextController.labelText = info?.result ?? "Nothing passed"
//    }
}


extension FourthVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}
