//
//  MonsterImg.swift
//  MyLittleMonster
//
//  Created by Ramon Lopez on 11/25/15.
//  Copyright © 2015 Ramon Lopez. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init? (coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        
        self.image = UIImage (named: "idle4.png")
        self.animationImages = nil
        var ImgArray = [UIImage]()
        for var x=1 ; x<=4 ; x++ {
            let img = UIImage(named: "idle\(x).png")
            ImgArray.append(img!)
        }
        
        self.animationImages = ImgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        self.image = UIImage (named: "dead5.png")
        self.animationImages = nil
        var ImgArray = [UIImage]()
        for var x=1 ; x<=5  ; x++ {
            let img = UIImage(named: "dead\(x).png")
            ImgArray.append(img!)
        }
        
        self.animationImages = ImgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
}