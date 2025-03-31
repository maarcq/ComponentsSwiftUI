//
//  SymbolsMulticolor.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 10/03/25.
//

import SwiftUI

struct SymbolsMulticolor: View {
    var body: some View {
        VStack(spacing: 16) {
            
            Text("symbols multicolor".capitalized)
                .font(.title3)
                .foregroundStyle(.black)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(LinearGradient(colors: [.blue, .purple], startPoint: .leading, endPoint: .trailing),
                                lineWidth: 5)
                        .shadow(color: .teal.opacity(0.9), radius: 10)
                }
            
            HStack(spacing: 24) {
                VStack {
                    Image(systemName: "paintpalette")
                    Image(systemName: "calendar.badge.clock")
                    Image(systemName: "link.badge.plus")
                    Image(systemName: "accessibility.fill")
                }
                
                VStack {
                    Image(systemName: "sun.max.trianglebadge.exclamationmark.fill")
                    Image(systemName: "cloud.sun.rain.fill")
                    Image(systemName: "thermometer.low")
                    Image(systemName: "rainbow")
                }
                
                VStack {
                    Image(systemName: "drop.triangle.fill")
                    Image(systemName: "badge.plus.radiowaves.forward")
                    Image(systemName: "microphone.slash")
                    Image(systemName: "heart.fill")
                }
            }
            .font(.system(size: 40))
            .symbolRenderingMode(.multicolor)
            
            Divider()
            
            // MARK: Styling a symbol in SwiftUI
            Image(systemName: "visionpro")
                .font(.system(size: 72, weight: .ultraLight))
                .foregroundStyle(
                    LinearGradient(colors: [.gray, .black, .gray], startPoint: .top, endPoint: .bottom),
                    EllipticalGradient(colors: [.purple, .black], center: .center, startRadiusFraction: 0, endRadiusFraction: 0.55)
                )
                .shadow(color: .black.opacity(0.5),
                        radius: 25,
                        y: 7)
        }
    }
}

#Preview {
    SymbolsMulticolor()
}
