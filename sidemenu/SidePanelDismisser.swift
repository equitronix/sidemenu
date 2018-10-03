//
//  SidePanelDismisser.swift
//  sidemenu
//
//  Created by Admin on 03/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit

class SidePanelDismisser: NSObject, UIViewControllerAnimatedTransitioning{
    let duration:TimeInterval = 1;
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration;
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let fromView = transitionContext.view(forKey: .from)!;
        UIView.animate(withDuration: duration,
                       animations: {fromView.center.x = -fromView.bounds.width/2},
                       completion: {_ in
                        fromView.removeFromSuperview();
                        transitionContext.completeTransition(true)
        })
    }
    
}



