//
//  SidePanelPresenter.swift
//  sidemenu
//
//  Created by Admin on 03/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit

class SidePanelPresenter: NSObject, UIViewControllerAnimatedTransitioning{
    let duration:TimeInterval = 1;
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration;
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView;
        let toView = transitionContext.view(forKey: UITransitionContextViewKey.to)!;
        containerView.addSubview(toView);
        
        
        toView.center.x = -toView.bounds.width/2;
        UIView.animate(withDuration: duration,
                       animations: {toView.center.x = toView.bounds.width/2},
                       completion: {_ in
                        transitionContext.completeTransition(true)
        });
        
    
        
    }
    
    
    
}
