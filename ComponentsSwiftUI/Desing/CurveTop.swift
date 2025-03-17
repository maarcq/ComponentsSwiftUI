//
//  CurveTop.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 13/03/25.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let centerX = rect.width / 2
            let radius = rect.width / 1.5
            
            path.move(to: CGPoint(x: 0, y: 0)) // Base reta no topo
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addArc(center: CGPoint(x: centerX, y: 0),
                        radius: radius,
                        startAngle: .degrees(0),
                        endAngle: .degrees(180),
                        clockwise: false)
            path.closeSubpath()
        }
    }
}

struct CurveTop: View {
    var body: some View {
        Rectangle()
            .frame(height: 500)
            .mask {
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 100)
                    CustomShape()
                }
            }
    }
}

#Preview {
    CurveTop()
}
