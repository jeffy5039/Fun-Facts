//
//  ColorWheel.swift
//  FunFacts
//
//  Created by jordan on 26/09/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
    let colorsArray = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), //teal color
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), //yellow color
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0), //red color
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), //orange color
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), //dark color
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0), //purple color
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0), //green color
        UIColor(red: 64/255.0, green: 28/255.0, blue: 133/255.0, alpha: 1.0),
        UIColor(red: 218/255.0, green: 150/255.0, blue: 225/255.0, alpha: 1.0),
        UIColor(red: 13/255.0, green: 61/255.0, blue: 95/255.0, alpha: 1.0),
        UIColor(red: 123/255.0, green: 182/255.0, blue: 225/255.0, alpha: 1.0)
        
        
    ]
    
    func randomColor() ->UIColor {
        let unsignedArrayCount = UInt32(colorsArray.count)    //convert array count to unsigned 32 bit integer
        let randomUnsigned = arc4random_uniform(unsignedArrayCount)     //get an unsigned random integer in the range of array count
        let randomNum = Int(randomUnsigned)     //cast to int
        
        return colorsArray[randomNum]
    }
}