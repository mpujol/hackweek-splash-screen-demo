//
//  SplashScreenAnimationViewController.swift
//  splash-screen-demo
//
//  Created by Michael Pujol on 8/5/18.
//  Copyright © 2018 Michael Pujol. All rights reserved.
//

import UIKit
import Lottie

class SplashScreenAnimationViewController: UIViewController {

    @IBOutlet var quoteLabel: UILabel!
    @IBOutlet var quoteAuthorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    private var logoAnimation: LOTAnimationView?
    
    var animationSpeedFactor: CGFloat = 0.8 // 1 is default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        formatDoodleDate()
        
    }
    
    func formatDoodleDate() {
        
        let displayFormatter = DateFormatter()
        displayFormatter.dateFormat = "EEEE,\n MMMM d"
        
        dateLabel.attributedText = formatLineHeightForFont(string: displayFormatter.string(from: Date()).uppercased(), lineHeightMultiple: 0.83)
        
    }
    
    func formatLineHeightForFont(string: String, lineHeightMultiple: CGFloat) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: string)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        attributedString.addAttribute(NSAttributedStringKey.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
        
        return attributedString
        
    }
    
    func startAnimation(animationComplete: @escaping (()->())) {
        
        let quote = VideoGameQuote.generateRandomQuote()
        quoteLabel.attributedText = formatLineHeightForFont(string: quote.quote, lineHeightMultiple: 1.1)

        quoteAuthorLabel.text = quote.author.uppercased()
        
        logoAnimation = LOTAnimationView(name: "Carrot_Splash")
        if let logoAnimation = logoAnimation {
            logoAnimation.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            logoAnimation.contentMode = .scaleAspectFill
            logoAnimation.frame = view.bounds
            view.addSubview(logoAnimation)
            logoAnimation.loopAnimation = false
            logoAnimation.animationSpeed = self.animationSpeedFactor
            logoAnimation.play(fromFrame: 0, toFrame: 45) { (finished: Bool) in
                logoAnimation.play(fromFrame: 0, toFrame: 45, withCompletion: { (finished: Bool) in
                    UIView.animate(withDuration: 0.30, animations: {
                        self.quoteLabel.alpha = 0
                        self.quoteAuthorLabel.alpha = 0
                    })
                    logoAnimation.animationSpeed = ( 0.4 * self.animationSpeedFactor)
                    logoAnimation.play(fromFrame: 45, toFrame: 49, withCompletion: { (finished: Bool) in
                        logoAnimation.animationSpeed = (2 * self.animationSpeedFactor)
                        logoAnimation.play(fromFrame: 49, toFrame: 60, withCompletion: { (finished: Bool) in
                            animationComplete()
                        })
                    })
                    
                })
            }
        }
        
    }

}
