//
//  ViewController3.swift
//  DrinkUp
//
//  Created by macbook on 11/12/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    var info: InfoData? //почему мы так можем сделать? А где экземпляр структуры?
    
    @IBAction func genderTapped(_ sender: UIButton) {
        switch sender.tag {
        case 4: info?.genderFactor = 0.7
        case 5: info?.genderFactor = 0.6
        case 6: info?.genderFactor = 0.3
        default:
            return
        }
        
        guard let fourthVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthVC") as? FourthVC else { return }
        
        fourthVC.info = info
        
        present(fourthVC, animated: true, completion: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let nextController = segue.destination as? FourthVC else { return }
//        nextController.info = info
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
