//
//  Font+Extension.swift
//  FirstPart
//
//  Created by APPLE on 2021/05/20.
//

import SwiftUI

extension Font {
    static var h1: Font {
        return Font.system(size: 28, weight: .bold)
    }
    
    static var h2: Font {
        return Font.system(size: 26, weight: .bold)
    }
    
    static var h3: Font {
        return Font.system(size: 22, weight: .medium)
    }
    
    static var h4: Font {
        return Font.system(size: 18, weight: .medium)
    }
    
    static var h5: Font {
        return Font.system(size: 14, weight: .medium)
    }
    
    static var b1: Font {
        return Font.system(size: 17)
    }
    
    static var b2: Font {
        return Font.system(size: 15)
    }
    
    static var c2: Font {
        return Font.system(size: 13)
    }
    
    static var nb13: Font {
        return Font.custom("NotoSansCJKkr-Bold", size: 13)
    }
    
    static var nb15: Font {
        return Font.custom("NotoSansCJKkr-Bold", size: 15)
    }
    
    static var nb16: Font {
        return Font.custom("NotoSansCJKkr-Bold", size: 16)
    }
    
    static var nb17: Font {
        return Font.custom("NotoSansCJKkr-Bold", size: 17)
    }
    
    static var nb20: Font {
        return Font.custom("NotoSansCJKkr-Bold", size: 20)
    }
    
    static var nb26: Font {
        return Font.custom("NotoSansCJKkr-Bold", size: 26)
    }
    
    static var nr15: Font {
        return Font.custom("NotoSansCJKkr-Regular", size: 15)
    }
    
    static var nr17: Font {
        return Font.custom("NotoSansCJKkr-Regular", size: 17)
    }
    
    static var ob17: Font {
        return Font.custom("OpenSans-Bold", size: 17)
    }
    
    static var ob20: Font {
        return Font.custom("OpenSans-Bold", size: 20)
    }
    
    static var or13: Font {
        return Font.custom("OpenSans-Regular", size: 13)
    }
    
    static var or15: Font {
        return Font.custom("OpenSans-Regular", size: 15)
    }
    
    static var or17: Font {
        return Font.custom("OpenSans-Regular", size: 17)
    }
    
    static var or26: Font {
        return Font.custom("OpenSans-Regular", size: 26)
    }
}

