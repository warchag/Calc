//Added IBInspectable property so the checkbox can be turned on and off in interface builder.

import UIKit

class CheckBox: UIButton {
	
	//images
	let checkedImage = UIImage(named: "check")
	let unCheckedImage = UIImage(named: "uncheck")
	
	//bool propety

	@IBInspectable var isChecked:Bool =  true {
		didSet{
			isChecked = true
			self.updateImage()
		
			print(isChecked)
		}
	}
	
	internal static func rancom(value:Bool) ->Bool {
		var status = Bool()
		status = value
		
		return status
		
	}
	
	


	override func awakeFromNib() {
		self.addTarget(self, action: #selector(CheckBox.buttonClicked(_:)), forControlEvents: UIControlEvents.TouchUpInside)
		self.updateImage()
	}
	
	
	func updateImage() {
		if isChecked == true{
			self.setImage(checkedImage, forState: .Normal)
		}else{
			self.setImage(unCheckedImage, forState: .Normal)
		}
		
	}
	
	func buttonClicked(sender:UIButton) {
		if(sender == self){
			isChecked = !isChecked
		
		}
	}
	
}
