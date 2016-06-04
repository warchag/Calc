//
//  ViewController.swift
//  Calc
//
//  Created by BILLY on 5/27/16.
//  Copyright © 2016 BILLY. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITextFieldDelegate {
	

	@IBOutlet weak var บวก: CheckBox!
	@IBOutlet weak var ลบ: CheckBox!
	@IBOutlet weak var คูณ: CheckBox!
	@IBOutlet weak var หาร: CheckBox!
	@IBOutlet weak var sta: CheckBox!
	var num1:Float = 0.00
	var num2:Float = 0.00
	var result:Float = 0.00
	@IBOutlet weak var output:UILabel!
	@IBOutlet weak var Txt1:UITextField!
	@IBOutlet weak var Txt2:UITextField!
	var opet:String = ""
	

	var tttt = CheckBox()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		Txt1.keyboardType = UIKeyboardType.NumberPad
		Txt2.keyboardType = UIKeyboardType.NumberPad
		let test = CheckBox.rancom(true)
		tttt.isChecked = true
		print(test)
		บวก.isChecked = true

	}
	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
		self.view.endEditing(true)
	}
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		
		// Dispose of any resources that can be recreated.
	}

	@IBAction func clear(sender: AnyObject) {
		
		output.text = "0.00"
		num1 = 0.00
		num2 = 0.00
	}

	
	@IBAction func ch1(sender: UIButton) {
		
		ลบ.isChecked = false
		คูณ.isChecked = false
		หาร.isChecked = false
		บวก.isChecked = true
		opet = "+"
	}
	
	@IBAction func ch2(sender: UIButton) {
		บวก.isChecked = false

		คูณ.isChecked = false
		หาร.isChecked = false
				ลบ.isChecked = true
			opet = "-"
	
	}
	
	@IBAction func ch3(sender: UIButton) {
		บวก.isChecked = false
		ลบ.isChecked = false
		คูณ.isChecked = true
		หาร.isChecked = false
			opet = "*"
	}
	
	@IBAction func ch4(sender: UIButton) {
		บวก.isChecked = false
		ลบ.isChecked = false
		คูณ.isChecked = false
		หาร.isChecked = true
			opet = "/"
	}
	
	
	
	
	var status = true
	func alertbox(){
		let alert = UIAlertController(title: "ตำเตือน", message: "กรุณากรอกข้อมูล", preferredStyle: UIAlertControllerStyle.Alert)
		alert.addAction(UIAlertAction(title: "Click to continue button :)", style: UIAlertActionStyle.Default, handler: { action in
			print("Click of Continue button")
		}))
		
		self.presentViewController(alert, animated: true, completion: nil)
		
	}
	@IBAction func cala(sender:UIButton){
		

		if Txt1.text == "" {
			alertbox()
			return
		}
		if Txt2.text == "" {
			alertbox()
			return
		}
		if opet == "+" {
			result = Float(Txt1.text!)! + Float(Txt2.text!)!
			output.text = "\(result)"
			
		}
		if opet == "-" {
			result = Float(Txt1.text!)! - Float(Txt2.text!)!
			output.text = "\(result)"
			
		}
		if opet == "*" {
			result = Float(Txt1.text!)! * Float(Txt2.text!)!
			output.text = "\(result)"
			
		}
		if opet == "/" {
			result = Float(Txt1.text!)! / Float(Txt2.text!)!
			output.text = "\(result)"
			
		}
	
		
		
	}




}
