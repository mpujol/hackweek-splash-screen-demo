//
//  RootViewController.swift
//  splash-screen-demo
//
//  Created by Michael Pujol on 8/5/18.
//  Copyright © 2018 Michael Pujol. All rights reserved.
//

import UIKit

import Lottie

class RootViewController: UIViewController, UIGestureRecognizerDelegate,UIScrollViewDelegate {
    
    @IBOutlet weak var refreshView: UIView!
    private var refreshAnimation: LOTAnimationView?
    
    let demoAnimationStrings = ["","Sonar","Mushroom","Pokeball"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after lchoading the view.

        setupStatusBarView()
        setupRefreshView()
        
    }
    
    func setupStatusBarView() {
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        statusBarView.backgroundColor = UIColor(red: 191/255, green: 19/255, blue: 19/255, alpha: 1)
        view.addSubview(statusBarView)
    }
        
    func animateRefreshButton() {
        
        refreshAnimation = LOTAnimationView(name: "refreshWhite")
        if let refreshAnimation = refreshAnimation {
            refreshAnimation.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            refreshAnimation.contentMode = .scaleAspectFill
            refreshAnimation.frame = refreshView.bounds
            refreshView.addSubview(refreshAnimation)
            refreshAnimation.loopAnimation = false
            refreshAnimation.play()
            
        }
    }
    
    func animateSplashScreen() {
        let splashScreenAnimationVC = SplashScreenAnimationViewController()
        splashScreenAnimationVC.view.frame = view.frame
        view.addSubview(splashScreenAnimationVC.view)

        splashScreenAnimationVC.startAnimation {
            
            splashScreenAnimationVC.view.removeFromSuperview()
            self.animateRefreshButton()
        }
    }
    
    //MARK: Refreshbutton
    
    @objc func refreshViewTapped(sender: AnyObject) {
        refreshAnimation?.removeFromSuperview()
        animateSplashScreen()
    }
    
    func setupRefreshView() {
        let UITapRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.refreshViewTapped(sender:)))
        UITapRecognizer.delegate = self
        self.refreshView.addGestureRecognizer(UITapRecognizer)
        self.refreshView.isUserInteractionEnabled = true
        
        refreshView.backgroundColor = UIColor(displayP3Red: 191/255, green: 19/255, blue: 19/255, alpha: 1)
        refreshView.layer.cornerRadius = refreshView.frame.height / 2
        
    }
    
    
}

