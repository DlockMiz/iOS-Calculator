//
//  ConverterController.swift
//  Calculator
//
//  Created by Daniel Lock on 12/4/19.
//  Copyright © 2019 Daniel Lock. All rights reserved.
//

import Foundation

class Converter {
    enum Formula { case C, F, mi, km}
    
    var currentFormula: Formula?
    var currentInput = ""

    func appendInput(num:String){
        if(currentInput.prefix(1) == "-" && num == "-"){
            currentInput = String(currentInput.suffix(1))
        }else if(num == "-"){
            currentInput = num + currentInput
        }
        else{
            currentInput += num
        }
    }
    
    func convertValues()->Float{
        switch(currentFormula){
        case .C:
            return (Float(currentInput)! * (9/5)) + Float(32)
        case .F:
            return (Float(currentInput)! + Float(32)) * (5/9)
        case .mi:
            return Float(currentInput)! * 1.609
        case .km:
            return Float(currentInput)! / 1.609
        default:
            return 69.0
        }
    }
    
    func clearValues(){
        currentInput = ""
    }
}
