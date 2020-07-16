//
//  ViewController.swift
//  updatedApp
//
//  Created by Julianne on 7/14/20.
//  Copyright © 2020 Julianne Chen. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController,MFMailComposeViewControllerDelegate {

    @IBOutlet weak var textViewBody: UITextView!
    @IBOutlet weak var textFieldSubject: UITextField!
    @IBOutlet weak var textFieldTo: UITextField!
    @IBOutlet weak var rohingyaCrisis: UIImageView!
    override func viewDidLoad() {
            super.viewDidLoad()
            // create tap gesture recognizer
//            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.imageTapped(gesture:)))
//
//            // add it to the image view;
//            rohingyaCrisis.addGestureRecognizer(tapGesture)
//            // make sure imageView can be interacted with by user
//            rohingyaCrisis.isUserInteractionEnabled = true
        }
    
//    @objc func imageTapped(gesture: UIGestureRecognizer) {
//        // if the tapped view is a UIImageView then set it to imageview
//        if (gesture.view as? UIImageView) != nil {
//            print("Image Tapped")
//            //Here you can initiate your new ViewController
//
//            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//
//            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "rohingyaArticleView") as! RohingyaArticleViewController
//            self.navigationController!.pushViewController(nextViewController, animated: true)
//            //self.present(nextViewController, animated:true, completion:nil)
//
//        }
//    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonHandlerSendEmail(_ sender: Any) {
        
      let mailComposeViewController = configureMailComposer()
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true, completion: nil)
        }else{
            print("Can't send email")
        }
    }
    func configureMailComposer() -> MFMailComposeViewController{
        let mailComposeVC = MFMailComposeViewController()
        mailComposeVC.mailComposeDelegate = self
        mailComposeVC.setToRecipients([self.textFieldTo.text!])
        mailComposeVC.setSubject(self.textFieldSubject.text!)
        mailComposeVC.setMessageBody(self.textViewBody.text!, isHTML: false)
        return mailComposeVC
    }
    //MARK: - MFMail compose method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }

}
