//
//  IndonesiaPalmViewController.swift
//  updatedApp
//
//  Created by Julianne on 7/17/20.
//  Copyright © 2020 Julianne Chen. All rights reserved.
//

import UIKit

class IndonesiaPalmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkButtonTapped(_ sender: Any) {
                UIApplication.shared.open(URL(string:"http://palmoilscorecard.panda.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
