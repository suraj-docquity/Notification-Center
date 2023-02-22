//
//  ViewController.swift
//  Notification Center
//
//  Created by Suraj Jaiswal on 22/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification: )), name: .facebook, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(notification: )), name: .twitter, object: nil)
        
    }
    
    @objc func facebook(notification : Notification){
        label.text = "Facebook"
        imgView.image = UIImage(named: "facebook.png")
    }
    
    @objc func twitter(notification : Notification){
        label.text = "Twitter"
        imgView.image = UIImage(named: "twitter.png")
    }

    @IBAction func chooseBtn(_ sender: Any) {
    }
    
}

extension Notification.Name {
    static let facebook = Notification.Name("Facebook")
    static let twitter = Notification.Name("Twitter")
}

