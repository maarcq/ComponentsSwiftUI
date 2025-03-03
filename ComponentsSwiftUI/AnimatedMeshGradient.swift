//
//  AnimatedMeshGradient.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 02/03/25.
//

import SwiftUI

struct AnimatedMeshGradient: View {
    var body: some View {
        
        MeshGradient(
            width: 3,
            height: 3,
            points: [ [0, 0], [0.5, 0], [1, 0], [0, 0.5], [0.5, 0.5], [1, 0.5], [0, 1], [0.5, 1], [1, 1] ],
            colors: [.blue, .purple, .indigo, .orange, .yellow, .red, .green, .teal, .cyan]
        )
        .ignoresSafeArea()
    }
}

#Preview {
    AnimatedMeshGradient()
}
