//
//  TabData.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import Foundation

enum Tab: String, CaseIterable {
    case addLink, animatedMesh, colorPicker, dismissKeyboard, deviceInfo, findNavigator, mask, rotateGesture, strokes, symbols, trigger
    
    var name: String {
        switch self {
        case .addLink: "AddLink"
        case .animatedMesh: "AnimatedMesh"
        case .colorPicker: "ColorPicker"
        case .dismissKeyboard: "DismissKeyboard"
        case .deviceInfo: "DeviceInfo"
        case .findNavigator: "FindNavigator"
        case .mask: "Mask"
        case .rotateGesture: "RotateGesture"
        case .strokes: "Strokes"
        case .symbols: "Symbols"
        case .trigger: "Trigger"
        }
    }
    
    var icon: String {
        switch self {
        case .addLink: "link.circle.fill"
        case .animatedMesh: "water.waves"
        case .colorPicker: "checkmark.circle.fill"
        case .dismissKeyboard: "keyboard.chevron.compact.down"
        case .deviceInfo: "iphone.homebutton"
        case .findNavigator: "magnifyingglass.circle.fill"
        case .mask: "squareshape.controlhandles.on.squareshape.controlhandles"
        case .rotateGesture: "arrow.trianglehead.counterclockwise.rotate.90"
        case .strokes: "rectangle.ratio.4.to.3.fill"
        case .symbols: "heart.square.fill"
        case .trigger: "iphone.gen1.radiowaves.left.and.right.circle.fill"
        }
    }
}

