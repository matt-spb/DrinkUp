//
//  ViewController.swift
//  DrinkUp
//
//  Created by macbook on 07/12/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var info = InfoData()
    
    @IBAction func backInitialVC (_ segue: UIStoryboardSegue) {}
    
    @IBAction func alcoTapped(_ sender: UIButton) { //как привести сендер типа Any? к UIButton?
        switch sender.tag {
        case 1: info.drinkSrength = 0.05; info.bottleVolume = 0.5
        case 2: info.drinkSrength = 0.12; info.bottleVolume = 0.7
        case 3: info.drinkSrength = 0.4; info.bottleVolume = 0.7
        default:   // что обычно пишется в дефолте?
            return
        }
        guard let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SecondVC") as? SecondVC else { return }
        
        secondVC.info = info
        
        present(secondVC, animated: true, completion: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let nextController = segue.destination as? SecondVC else { return }
//        //SecondVC.inf
//        nextController.info = info
//    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

// сдеать проверку ввода, если не введено, то не переходить
// вывести грамм на экран

// попробовать выдать уведомление, что окно не заполнено









/*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextController = segue.destination as? SecondVC else { return }
        
        let inputString = inputTextFiled.text ?? "нихуя"
        let randomString = UUID().uuidString
        
         путь пидора
        nextController.loadViewIfNeeded() //принудительно загружаем вью
        nextController.label.text = randomString
        
        норм путь
        nextController.labelText = randomString
        nextController.labelText = inputString
    }
*/
