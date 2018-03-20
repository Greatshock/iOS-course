//
//  SliderViewController.swift
//  Showcase
//
//  Created by Nikita Marinosyan on 25.09.17.
//  Copyright © 2017 Nikita Marinosyan. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController, UITextFieldDelegate {
    var redColor:CGFloat = 1.0
    var greenColor:CGFloat = 1.0
    var blueColor:CGFloat = 1.0
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValue: UITextField!
    @IBOutlet weak var greenValue: UITextField!
    @IBOutlet weak var blueValue: UITextField!
    
    @IBAction func changeRed(_ sender: Any) {
        redColor = CGFloat(redSlider.value)
        redValue.text = String(format: "%.0f", Float(redColor * 255.0))
        UserDefaults.standard.setValue(redColor, forKey: "redColor")
        updateColor()
    }
    @IBAction func changeGreen(_ sender: Any) {
        greenColor = CGFloat(greenSlider.value)
        greenValue.text = String(format: "%.0f", Float(greenColor * 255.0))
        UserDefaults.standard.setValue(greenColor, forKey: "greenColor")
        updateColor()
    }
    @IBAction func changeBlue(_ sender: Any) {
        blueColor = CGFloat(blueSlider.value)
        blueValue.text = String(format: "%.0f", Float(blueColor * 255.0))
        UserDefaults.standard.setValue(blueColor, forKey: "blueColor")
        updateColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redValue.delegate = self
        greenValue.delegate = self
        blueValue.delegate = self
        redValue.text = String(format: "%.0f", UserDefaults.standard.float(forKey: "redColor") * 255)
        greenValue.text = String(format: "%.0f", UserDefaults.standard.float(forKey: "greenColor") * 255)
        blueValue.text = String(format: "%.0f", UserDefaults.standard.float(forKey: "blueColor") * 255)
        redColor = CGFloat(UserDefaults.standard.float(forKey: "redColor"))
        greenColor = CGFloat(UserDefaults.standard.float(forKey: "greenColor"))
        blueColor = CGFloat(UserDefaults.standard.float(forKey: "blueColor"))
        redSlider.setValue(Float(redColor), animated: false)
        greenSlider.setValue(Float(greenColor), animated: false)
        blueSlider.setValue(Float(blueColor), animated: false)
        updateColor()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateColor() { self.view.backgroundColor =
        UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

