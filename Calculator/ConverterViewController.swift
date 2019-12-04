//
//  ViewController.swift
//  Calculator
//
//  Created by Daniel Lock on 10/31/19.
//  Copyright © 2019 Daniel Lock. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    var optionsArray = [Option]()
    var converter = Converter()
    @IBOutlet weak var inputLabel: UITextField!
    @IBOutlet weak var outputLabel: UITextField!
    @IBOutlet weak var inputUnit: UILabel!
    @IBOutlet weak var outputUnit: UILabel!
    
    
    @IBAction func converterClick(_ sender: Any) {
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        for option in self.optionsArray{
            let action = UIAlertAction(title: option.label, style:.default, handler: {
                (alert: UIAlertAction!) -> Void in
                self.inputUnit.text! = option.input_unit
                self.outputUnit.text! = option.output_unit
                self.converter = option.converter
            })
            optionMenu.addAction(action)
        }
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.converter.currentFormula = .C
        self.optionsArray.append(Option("fahrenheit to celcius","°F","°C"))
        self.optionsArray.append(Option("celcius to fahrenheit","°C","°F"))
        self.optionsArray.append(Option("miles to kilometers","mi","km"))
        self.optionsArray.append(Option("kilometers to miles","km","mi"))
    }
    
    @IBAction func clearValues(_ sender: Any) {
        clearAllOptions()
        outputLabel.text = "0"
        inputLabel.text = "0"
    }
    
    @IBAction func addNegative(_ sender: Any) {
        converter.appendInput(num: "-")
        if(inputLabel.text != "0"){
            outputLabel.text = String(converter.convertValues())
            inputLabel.text = String(converter.currentInput)
        }
    }
    
    @IBAction func zeroClick(_ sender: Any) {
        converter.appendInput(num: "0")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func dotClick(_ sender: Any) {
        converter.appendInput(num: ".")
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func oneClick(_ sender: Any) {
        converter.appendInput(num: "1")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func twoClick(_ sender: Any) {
        converter.appendInput(num: "2")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func threeClick(_ sender: Any) {
        converter.appendInput(num: "3")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func fourClick(_ sender: Any) {
        converter.appendInput(num: "4")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func fiveClick(_ sender: Any) {
        converter.appendInput(num: "5")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func sixClick(_ sender: Any) {
        converter.appendInput(num: "6")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func sevenClick(_ sender: Any) {
        converter.appendInput(num: "7")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func eightClick(_ sender: Any) {
        converter.appendInput(num: "8")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    @IBAction func nineClick(_ sender: Any) {
        converter.appendInput(num: "9")
        outputLabel.text = String(converter.convertValues())
        inputLabel.text = String(converter.currentInput)
    }
    
    func clearAllOptions(){
        for option in self.optionsArray{
            option.converter.clearValues()
        }
    }
}

