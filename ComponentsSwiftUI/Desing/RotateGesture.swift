//
//  RotateGesture.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 10/03/25.
//

import SwiftUI

struct RotateGestureView: View {
    
    @State private var angle: Angle = .degrees(0.0)
    
    var body: some View {
        Image(systemName: "steeringwheel.arrow.trianglehead.counterclockwise.and.clockwise")
            .font(.system(size: 200))
            .rotationEffect(angle)
            .gesture (
                RotateGesture()
                    .onChanged { value in
                        self.angle = value.rotation
                    }
            )
    }
}

#Preview {
    RotateGestureView()
}
