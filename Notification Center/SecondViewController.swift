//
//  SecondViewController.swift
//  Notification Center
//
//  Created by Suraj Jaiswal on 22/02/23.
//

import UIKit

class SecondViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func facebookBtn(_ sender: Any) {
        NotificationCenter.default.post(name: .facebook, object: nil)
    }
    @IBAction func twitterBtn(_ sender: Any) {
        NotificationCenter.default.post(name: .twitter, object: nil)
    }
}
