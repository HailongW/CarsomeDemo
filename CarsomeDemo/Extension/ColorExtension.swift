//
//  File.swift
//  CarsomeDemo
//
//  Created by 王海龙 on 2022/11/19.
//

import Foundation
import SwiftUI

extension Color {
    static func hexColor(_ hexValue: Int, alphaValue: Float) -> Color {
        return Color(red: Double((hexValue & 0xFF0000) >> 16) / 255, green: Double((hexValue & 0x00FF00) >> 8)/255, blue: Double((hexValue & 0x0000FF))/255)
    }
    
    static func hexColor(_ hexValue: Int) -> Color {
        return hexColor(hexValue, alphaValue: 1)
    }
    
}
