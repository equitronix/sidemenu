//
//  SideMenuViewController.swift
//  sidemenu
//
//  Created by Admin on 03/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {

    @IBOutlet weak var rightView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleDismiss(sender:)));
        rightView.addGestureRecognizer(tap)
        print("gesture recognizer set")

    }
    
    @objc func handleDismiss(sender: UITapGestureRecognizer? = nil){
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
