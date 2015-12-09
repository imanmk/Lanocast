//
//  SignupViewController.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/4/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//


import UIKit
import Spring

class SignupViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var confirmPasswordTextField: UITextField!
    @IBOutlet var birthdateTextField: UITextField!
    @IBOutlet var sexPickerTextField: UITextField!
    
    //display date wheels for user birthdate
    
    @IBAction func birthdatePickerTextField(sender: UITextField) {
        let birthdatePickerView:UIDatePicker = UIDatePicker()
        
        birthdatePickerView.datePickerMode = UIDatePickerMode.Date
        
        sender.inputView = birthdatePickerView
        
        birthdatePickerView.addTarget(self, action: Selector("birthdatePickerValueChanged:"),
            forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func birthdatePickerValueChanged(sender: UIDatePicker) {
        
        let textFieldBirthDateFormatter = NSDateFormatter()
        let userBirthDateFormatter = NSDateFormatter()
        var tempBirthDate = NSDate()
        
        userBirthDateFormatter.dateFormat = "yyyy-MM-dd"
        
        textFieldBirthDateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        
        textFieldBirthDateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        
        birthdateTextField.text = textFieldBirthDateFormatter.stringFromDate(sender.date)
        
        //#warning check nil here
        
        tempBirthDate = userBirthDateFormatter.dateFromString(birthdateTextField.text!)!
        User.birthdate = userBirthDateFormatter.stringFromDate(tempBirthDate)
        
    }
    
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sexPickerView = UIPickerView()
        sexPickerView.delegate = self
        sexPickerTextField.inputView = sexPickerView
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //number of components in sex picker wheel
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    //number of components in sex picker wheel
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return Constants.sexOptions.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Constants.sexOptions[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sexPickerTextField.text = Constants.sexOptions[row]
    }
    
    
}

