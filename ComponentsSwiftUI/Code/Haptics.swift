//
//  Haptics.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 09/03/25.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static let instance = HapticManager()  // Singleton
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

struct HapticsButtons: View {
    var body: some View {
        VStack {
            Button("success") { HapticManager.instance.notification(type: .success) }
            Button("error") { HapticManager.instance.notification(type: .error) }
            Button("warning") { HapticManager.instance.notification(type: .warning) }
            
            Divider()
            
            Button("soft") { HapticManager.instance.impact(style: .soft) }
            Button("light") { HapticManager.instance.impact(style: .light) }
            Button("medium") { HapticManager.instance.impact(style: .medium) }
            Button("rigid") { HapticManager.instance.impact(style: .rigid) }
            Button("heavy") { HapticManager.instance.impact(style: .heavy) }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    HapticsButtons()
}
