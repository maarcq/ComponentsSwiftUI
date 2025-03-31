//
//  StrokesType.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import SwiftUI

struct StrokesType: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack {
                Text("Rectangle")
                Rectangle()
                    .fill(.black)
                    .frame(width: 80, height: 60)
            }
            // MARK: stroke()
            VStack {
                Text("stroke()")
                Rectangle()
                    .fill(.black)
                    .stroke(.orange, lineWidth: 5)
                    .frame(width: 80, height: 60)
            }
            // MARK: strokeBorder()
            VStack {
                Text("strokeBorder()")
                Rectangle()
                    .fill(.black)
                    .strokeBorder(.orange, lineWidth: 5)
                    .frame(width: 80, height: 60)
            }
        }
    }
}

#Preview {
    StrokesType()
}
