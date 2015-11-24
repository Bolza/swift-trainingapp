//
//  RatingControl.swift
//  singleview
//
//  Created by Stefano Sergio on 24/11/2015.
//  Copyright © 2015 Stefano Sergio. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    // MARK: Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
//        redirecting the event on .button on the listener in this ctrl
        button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
//        adding element to the view
        addSubview(button)
    }
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    func ratingButtonTapped() {
        
    }
    
    
    
}
