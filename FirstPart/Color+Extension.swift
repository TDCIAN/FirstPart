//
//  Color+Extension.swift
//  FirstPart
//
//  Created by APPLE on 2021/05/20.
//

import SwiftUI

extension Color {
    init(_ red: Int, _ green: Int, _ blue: Int, _ alpha: Double = 1.0) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: Double(red) / 255.0, green: Double(green) / 255.0, blue: Double(blue) / 255.0, opacity: alpha)
    }
    
    init(_ hex: Int, alpha: Double = 1.0) {
        self.init(red: Double((hex >> 16) & 0xff), green: Double((hex >> 8) & 0xff), blue: Double(hex & 0xff), opacity: alpha)
    }
}

extension Color {
    static var errorRed: Color { Color(255, 88, 88) }
    static var textDefault: Color { Color("textDefault") }
    
    static var primary: Color { Color(0, 160, 233) }
    static var mint: Color { Color("mint") }
    static var disabledGray: Color { Color("gray") }
    
    static var cardDarkBlue: Color { Color("darkBlue") }
    static var cardYellow: Color { Color("yellow") }
    static var cardPurple: Color { Color("purple") }
    static var cardGreen: Color { Color("green") }
    static var cardBlue: Color { Color("blue") }
    
    static var plainAccent: Color { Color("plainAccent") }
    static var cardAccent: Color { Color("cardAccent") }
    
    static let gray128 = Color(128, 128, 128)
    static let gray245 = Color(245, 245, 245)
    
    static var defCUG: Color { Color(0, 174, 239) }             // #00AEEF
    static var defPOSTECH: Color { Color(202, 6, 100) }         // #CA0664
    static var defPOSCO: Color { Color(0, 86, 137) }            // #005689
    static var defRIST: Color { Color(0, 129, 204) }            // #0081CC
    
    static var cugLightBlue: Color { Color(0, 174, 239) }       // #00AEEF
    static var cugLightBlue50: Color { Color(96, 215, 252) }    // #60D7FC
    static var cugLightBlue30: Color { Color(154, 228, 252) }   // #9AE4FC
    static var cugLightBlue10: Color { Color(226, 247, 255) }   // #E2F7FF
    static var cugLightBlue5: Color { Color(238, 251, 255) }    // #EEFBFF
    
    static var cugDarkBlue: Color { Color(14, 40, 66) }         // #0E2842
    static var cugDarkBlue50: Color { Color(120, 136, 151) }    // #788897
    
    static var cugGray: Color { Color(90, 90, 90) }             // #5A5A5A
    static var cugGray50: Color { Color(171, 171, 171) }        // #ABABAB
    static var cugGray30: Color { Color(198, 198, 198) }        // #C6C6C6
    static var cugGray10: Color { Color(237, 237, 237) }        // #EDEDED
    static var cugGray5: Color { Color(246, 246, 246) }         // #F6F6F6
    
    static var cugBtnNormal: Color { Color(252, 252, 252) }     //
    static var cugBtnPressed: Color { Color(237, 237, 237) }    // #EDEDED
    static var cugBtnShadow: Color { Color(210, 210, 210) }     // #D2D2D2
    
    static var cugShadow: Color { Color(236, 236, 236) }
    static var cugCardShadow: Color { Color(238, 238, 238) }
    static var cugTopShadow: Color { Color(250, 250, 250) }
    
    static var cugRed: Color { Color(255, 93, 93) }             // #FF5D5D
    static var cugRed50: Color { Color(255, 170, 171) }         // #FFAAAB
    static var cugRed10: Color { Color(255, 236, 237) }         // #FFECED
}

