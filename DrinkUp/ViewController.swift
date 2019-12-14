//
//  ViewController.swift
//  DrinkUp
//
//  Created by macbook on 07/12/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextFiled.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backInitialVC (_ segue: UIStoryboardSegue) {}

    @IBOutlet weak var inputTextFiled: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextController = segue.destination as? ViewController2 else { return }
        
        let inputString = inputTextFiled.text ?? "нихуя"
       // let randomString = UUID().uuidString
        
        // путь пидора
        //nextController.loadViewIfNeeded() //принудительно загружаем вью
        //nextController.label.text = randomString
        
        //норм путь
        //nextController.labelText = randomString
        nextController.labelText = inputString
    }
}


extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //вызывается при нажатии на энтер
        textField.resignFirstResponder()
        
        return true
    }
}
