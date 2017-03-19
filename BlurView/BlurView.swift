//
//  BlurView.swift
//  BlurView
//
//  Created by Vikash Kumar on 19/03/17.
//  Copyright © 2017 Vikash Kumar. All rights reserved.
//

import UIKit

 class BlurView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0.0

    func setBlurEffect(blurEffectStyle: UIBlurEffectStyle) {
        self.backgroundColor = UIColor.clear
        let blurEffect = UIBlurEffect(style: blurEffectStyle)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        //always fill the view
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
        self.sendSubview(toBack: blurEffectView)
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        
    }

}

  class BlurViewLight: BlurView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setBlurEffect(blurEffectStyle: .light)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setBlurEffect(blurEffectStyle: .light)
    }
    
}

class BlurViewExtraLight: BlurView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBlurEffect(blurEffectStyle: .extraLight)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setBlurEffect(blurEffectStyle: .extraLight)
    }
    
}

class BlurViewDark: BlurView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBlurEffect(blurEffectStyle: .dark)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setBlurEffect(blurEffectStyle: .dark)
    }
    
}

