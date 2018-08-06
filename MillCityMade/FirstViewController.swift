//
//  FirstViewController.swift
//  MillCityMade
//
//  Created by Steffen, Carter J on 8/4/18.
//  Copyright © 2018 Steffen, Carter J. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image : UIImage = UIImage(named: "Mill_City_Made_Final_Logo.png")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        self.navBar.topItem?.titleView = imageView
        
        //self.navBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 880.0)
        //self.navigationController.navigationBar.frame = CGRectMake(0, 0, self.view.frame.size.width, 80.0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

