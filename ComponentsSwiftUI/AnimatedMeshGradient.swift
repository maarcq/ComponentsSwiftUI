//
//  AnimatedMeshGradient.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 02/03/25.
//

import SwiftUI

struct AnimatedMeshGradient: View {
    
    @State var appear = false
    
    var body: some View {
        
        MeshGradient(
            width: 3,
            height: 3,
            points: [ appear ? [0, 0] : [0, 0],
                      appear ? [0.5, 0] : [0.5, 0],
                      appear ? [1, 0] : [1, 0],
                      appear ? [0, 0.5] : [0, 0.2],
                      appear ? [0.5, 0.5] : [0.4, 0.4],
                      appear ? [1, 0.5] : [1, 0.6],
                      appear ? [0, 1] : [0, 1],
                      appear ? [0.5, 1] : [0.5, 1],
                      appear ? [1, 1] : [1, 1]
                    ],
            colors: [.blue, .purple, .indigo, .orange, appear ? .yellow : .blue, .red, .green, .teal, .cyan]
        )
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                appear.toggle()
            }
        }
    }
}

struct ButtonGradient: View {
    var body: some View {
        Button { } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .frame(width: 300, height: 60)
                .background(
                    AnimatedMeshGradient()
                        .mask(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(lineWidth: 16)
                                .blur(radius: 8)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white, lineWidth: 3)
                                .blur(radius: 2)
                                .blendMode(.overlay)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white, lineWidth: 1)
                                .blur(radius: 1)
                                .blendMode(.overlay)
                        )
                )
                .background(.black)
                .cornerRadius(16)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.black.opacity(0.5), lineWidth: 1)
                )
        }
    }
}

#Preview {
    ButtonGradient()
    AnimatedMeshGradient()
}
