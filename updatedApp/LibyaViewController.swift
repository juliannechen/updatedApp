//
//  LibyaViewController.swift
//  updatedApp
//
//  Created by Julianne on 7/16/20.
//  Copyright © 2020 Julianne Chen. All rights reserved.
//

import UIKit

class LibyaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func donateButtonTapped(_ sender: Any) {
        
        UIApplication.shared.open(URL(string:"https://www.iom.int/donate/")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func youtubeTapped(_ sender: Any) {
                        UIApplication.shared.open(URL(string:"https://www.youtube.com/watch?v=2S2qtGisT34")! as URL, options: [:], completionHandler: nil)
    }

    @IBAction func articleTapped(_ sender: Any) {
                                UIApplication.shared.open(URL(string:"https://time.com/5042560/libya-slave-trade/")! as URL, options: [:], completionHandler: nil)
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
