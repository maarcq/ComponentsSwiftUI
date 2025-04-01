//
//  ContentView.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab: Tab = .addLink
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                TabView(selection: $currentTab) {
                    AddLink()
                        .tag(Tab.addLink)
                    AnimatedMeshGradient()
                        .tag(Tab.animatedMesh)
                    ColorPickerSwiftUI()
                        .tag(Tab.colorPicker)
                    DismissKeyboard()
                        .tag(Tab.dismissKeyboard)
                    DisplayDeviceInformation()
                        .tag(Tab.deviceInfo)
                    FindNavigator()
                        .tag(Tab.findNavigator)
                    Mask()
                        .tag(Tab.mask)
                    RotateGestureView()
                        .tag(Tab.rotateGesture)
                    StrokesType()
                        .tag(Tab.strokes)
                    SymbolsMulticolor()
                        .tag(Tab.symbols)
                    TriggerFeedback()
                        .tag(Tab.trigger)
                }
                
                CustomTabBar(currentTab: $currentTab)
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    ContentView()
}
