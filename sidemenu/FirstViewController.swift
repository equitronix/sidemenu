//
//  FirstViewController.swift
//  sidemenu
//
//  Created by Admin on 03/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBAction func openSideMenu(_ sender: UIBarButtonItem) {
        let sidePanelController = storyboard!.instantiateViewController(withIdentifier: "sideMenuPanel") as! SideMenuViewController;
        sidePanelController.transitioningDelegate = self;
        sidePanelController.modalPresentationStyle = .custom
        self.present(sidePanelController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return SidePanelPresenter();
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return SidePanelDismisser();
    }

    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        print("presentation controller called.")
        return PresentationController(presentedViewController: presented, presenting: presenting);
    }
}
