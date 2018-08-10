//
//  SecondViewController.swift
//  MillCityMade
//
//  Created by Steffen, Carter J on 8/4/18.
//  Copyright © 2018 Steffen, Carter J. All rights reserved.
//

import UIKit
import MessageUI

class SecondViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var emailBody: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickButton(_ sender: UIButton) {
        sendEmail(body: emailBody.text!)
    }
    
    func sendEmail(body:String) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["cartste3@gmail.com"])
            //mail.setMessageBody(?body<#String#>)
            mail.setMessageBody("\(body)", isHTML: false)
            //mail.setSubject(<#T##subject: String##String#>)
            
            present(mail, animated: true)
        } else {
            let alertController = UIAlertController(title: "Email sent failed", message:
                "Hello, world!", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            // show failure alert
        }
        emailBody.text = nil

    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }


}

