//
//  ViewController.swift
//  MultiplyApp
//
//  Created by Bennett, Christopher on 11/2/22.
//

import UIKit

class ViewController: UIViewController {
    //makes the Vars for the labels and text fields that are on the screen
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var numberOneField: UITextField!
    @IBOutlet weak var numberTwoField: UITextField!
    @IBOutlet weak var UIImageView1: UIImageView!
    @IBOutlet weak var UIImageView2: UIImageView!
    @IBOutlet weak var sliderNumberOne: UISlider!
    @IBOutlet weak var sliderNumberTwo: UISlider!
    
    
    //Images
    let marioKart = UIImage(named: "char_link")
    let catimg = UIImage(named: "cat")
    let pepeimg = UIImage(named: "pepe")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    // Addition Calc
    @IBAction func additionCalc(_ sender: UIButton) {
        //values and calculation
        let val1 = numberOneField.text!
        let firstValue = (val1 as NSString).integerValue
        
        let val2 = numberTwoField.text!
        let secondValue = (val2 as NSString).integerValue
        
        let totalValue = firstValue + secondValue
        
        productLabel.text = "\(totalValue)"
        
        // Remove the keyboard
        numberOneField.resignFirstResponder()
        numberTwoField.resignFirstResponder()
        
        
    }
    
    // Subtract Button
    @IBAction func subtractButton(_ sender: UIButton) {
        //values and calculation
        let val1 = numberOneField.text!
        let firstValue = (val1 as NSString).integerValue
        
        let val2 = numberTwoField.text!
        let secondValue = (val2 as NSString).integerValue
        
        let totalValue = firstValue - secondValue
        
        productLabel.text = "\(totalValue)"
        
        // Remove the keyboard
        numberOneField.resignFirstResponder()
        numberTwoField.resignFirstResponder()
        
    }

        // MULT THe numbers
    @IBAction func equalsButton(_ sender: UIButton) {
        //values and calculation
        let val1 = numberOneField.text!
        let firstValue = (val1 as NSString).integerValue
        
        let val2 = numberTwoField.text!
        let secondValue = (val2 as NSString).integerValue
        
        let totalValue = firstValue * secondValue
        
        productLabel.text = "\(totalValue)"
        
        // Remove the keyboard
        numberOneField.resignFirstResponder()
        numberTwoField.resignFirstResponder()
        
        // Funny or Funnier Img
        if totalValue % 2 == 0 {
            UIImageView2.image = catimg
        } else {
            UIImageView2.image = pepeimg
            
        }
        
        
        // If Result == 64 Display image
        
        if totalValue == 64 {
            UIImageView1.image = marioKart
        } else {
            return
        }
        
    }
 
    // Divide button
    @IBAction func divideButton(_ sender: UIButton) {
        //values and calculation
        let val1 = numberOneField.text!
        let firstValue = (val1 as NSString).integerValue
        
        let val2 = numberTwoField.text!
        let secondValue = (val2 as NSString).integerValue
        
        let totalValue = firstValue / secondValue
        
        productLabel.text = "\(totalValue)"
        
        // Remove the keyboard
        numberOneField.resignFirstResponder()
        numberTwoField.resignFirstResponder()
    
        
    }
    
    //Slider One for the first Number Text Field
    @IBAction func sliderOne(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        numberOneField.text = "\(currentValue)"
        
    }
    @IBAction func sliderTwo(_ sender: UISlider) {
        let numTwoCurrentValue = Int(sender.value)
        numberTwoField.text = "\(numTwoCurrentValue)"
    }
    
    
    
    
 // Button that resets everything
    @IBAction func resetButton(_ sender: UIButton) {
        numberOneField.text = ""
        numberTwoField.text = ""
        productLabel.text = "Product"
        UIImageView1.image = nil
        UIImageView2.image = nil
    }

    
    

}

