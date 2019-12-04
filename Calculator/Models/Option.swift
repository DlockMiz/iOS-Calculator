//
//  Option.swift
//  Calculator
//
//  Created by Daniel Lock on 12/4/19.
//  Copyright © 2019 Daniel Lock. All rights reserved.
//

import Foundation

class Option{
    init(_ label: String, _ input_unit: String, _ output_unit:String) {
        self.label = label
        self.input_unit = input_unit
        self.output_unit = output_unit
        
        switch(input_unit){
        case "F":
            converter.currentFormula = .F
        case "C":
            converter.currentFormula = .C
        case "mi":
            converter.currentFormula = .mi
        case "km":
            converter.currentFormula = .km
        default:
            converter.currentFormula = .C
        }
    }
    
    var label: String
    var input_unit: String
    var output_unit: String
    var converter = Converter()
}
