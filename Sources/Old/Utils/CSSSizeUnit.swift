//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public enum CSSSizeUnit: String {
    
    //default
    case none = ""
    
    //absolute
    case percentage = "%"
    case cm
    case mm
    case Q
    case `in` = "in"
    case pc
    case pt
    case px
    
    //relative
    case em
    case ex
    case ch
    case rem
    case lh
    case rlh
    case vw
    case vh
    case vmin
    case vmax
    case vb
    case vi
    case svw
    case svh
    case lvw
    case lvh
    case dvw
    case dvh
}
