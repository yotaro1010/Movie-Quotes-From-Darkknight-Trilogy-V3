//
//  Test2.swift
//  DemoV11
//
//  Created by Yotaro Ito on 2021/03/10.
//
import UIKit
import Foundation
class PopUpOverlayController: UIPresentationController {
    
    var overlayView = UIView()
    
    override func presentationTransitionWillBegin() {
        guard let containerView = containerView else {
            return
        }
        
        overlayView.frame = containerView.bounds
        overlayView.backgroundColor = UIColor.black
        overlayView.gestureRecognizers = [UITapGestureRecognizer(target: self, action: #selector(PopUpOverlayController.overlayViewDidTouch(_:)))]
        overlayView.alpha = 0.0
        
        containerView.addSubview(overlayView)
        
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: {[weak self] context in
            self?.overlayView.alpha = 0.3
        }, completion:nil)
        
    }
    
    
    override func dismissalTransitionWillBegin() {
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: {[weak self] context in
            self?.overlayView.alpha = 0.0
        }, completion:nil)
    }
    
    
    override func dismissalTransitionDidEnd(_ completed: Bool) {
        if completed {
            overlayView.removeFromSuperview()
        }
    }
    
    override func containerViewWillLayoutSubviews() {
        super.containerViewWillLayoutSubviews()
        
        presentedView?.anchor(centerY: overlayView.centerYAnchor,
                              centerX: overlayView.centerXAnchor,
                              width: overlayView.widthAnchor,
                              height: overlayView.heightAnchor,
                              widthMultiplier: 0.9, heightMultiplier: 0.4)
       
        presentedView?.layer.borderWidth = 2.0
        presentedView?.layer.borderColor = UIColor.black.cgColor
        presentedView?.layer.cornerRadius = 25
        presentedView?.clipsToBounds = true
        
    }
    
    override func containerViewDidLayoutSubviews() {
        super.containerViewDidLayoutSubviews()
    }
    
    @objc func overlayViewDidTouch(_ sender: UITapGestureRecognizer) {
        presentingViewController.dismiss(animated: true, completion: nil)
    }
}
