//
//  Qbutton.swift
//  Calc
//
//  Created by BILLY on 5/27/16.
//  Copyright © 2016 BILLY. All rights reserved.
//

import UIKit

class Qbutton: UIButton {
	
	var isSelected: Bool = defaults.boolForKey("isButtonChecked")
	
	// Images
	let selectedImage = UIImage(named: "Selected")
	let unselectedImage = UIImage(named: "Unselected")
	
	
	//Bool Property
	var isChecked:Bool = false{
		didSet{
			if isChecked == true{
				self.setImage(selectedImage, forState: UIControlState.Normal)
			}else{
				self.setImage(unselectedImage, forState: UIControlState.Normal)
			}
			defaults.setObject(isChecked, forKey: "isButtonChecked")
		}
	}
	
	override init(frame: CGRect){
		super.init(frame:frame)
		self.layer.masksToBounds = true
		self.setImage(unselectedImage, forState: UIControlState.Normal)
		
		self.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
		self.isChecked = false
	}
	
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	func buttonClicked(sender: UIButton) {
		if(sender == self){
			if isChecked == true{
				isChecked = false
			}else{
				isChecked = true
			}
		}
	}
}
