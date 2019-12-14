//
//  ViewController2.swift
//  DrinkUp
//
//  Created by macbook on 07/12/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var labelText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = labelText

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var label: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
