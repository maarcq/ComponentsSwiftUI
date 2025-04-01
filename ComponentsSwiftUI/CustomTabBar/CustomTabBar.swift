//
//  CustomTabBar.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var currentTab: Tab
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Button {
                        withAnimation(.easeInOut) {
                            currentTab = tab
                        }
                    } label: {
                        Image(systemName: tab.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: 30)
                            .foregroundStyle(currentTab == tab ? .black : .white)
                            .offset(y: currentTab == tab ? -15 : 0)
                    }
                }
            }
            .frame(maxWidth: .infinity)
//            .background(alignment: .leading) {
//                Circle()
//                    .fill(.ultraThinMaterial)
//                    .frame(width: 40, height: 40)
//                    .shadow(color: .black.opacity(0.25), radius: 20, x: 0, y: 10)
//                    .offset(x: indicatorOffset(width: width), y: -25)
//            }
        }
        .frame(height: 30)
        .padding(.top, 20)
        .background(.ultraThinMaterial)
        .background(.purple)
    }
    
    func getIndex() -> Int {
        switch currentTab {
        case .addLink:
            return 0
        case .animatedMesh:
            return 1
        case .colorPicker:
            return 2
        case .dismissKeyboard:
            return 3
        case .deviceInfo:
            return 4
        case .findNavigator:
            return 5
        case .mask:
            return 6
        case .rotateGesture:
            return 7
        case .strokes:
            return 8
        case .symbols:
            return 9
        case .trigger:
            return 10
        }
    }
    
    func indicatorOffset(width: CGFloat) -> CGFloat {
        let index = CGFloat(getIndex())
        if index == 0 { return 0 }
        
        let buttonWidth = width / CGFloat(Tab.allCases.count)
        
        return index * buttonWidth
    }
}

#Preview {
    ContentView()
}
