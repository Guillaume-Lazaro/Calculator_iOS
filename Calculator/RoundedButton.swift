//
//  RoundedButton.swift
//  Calculator
//
//  Created by Guillaume Lazaro on 24/10/2017.
//  Copyright © 2017 Guillaume Lazaro. All rights reserved.
//

import Foundation
import UIKit

class RoundedButton : UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.width/3
        

    }
    
}
