//
//  Mask.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import SwiftUI

struct Mask: View {
    var body: some View {
        VStack(spacing: 24) {
            
            // MARK: Masking
            VStack {
                Text("Masking")
                Image(.iOS18)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 190)
                    .mask {
                        Image(systemName: "apple.logo")
                            .font(.system(size: 160))
                    }
            }
            
            // MARK: Inverted Masking
            VStack {
                Text("Inverted Masking")
                ZStack {
                    Image(systemName: "lanyardcard.fill")
                        .font(.system(size: 180))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.black, .gray],
                                startPoint: .bottomLeading,
                                endPoint: .topTrailing
                            )
                        )
                    Image(systemName: "apple.logo")
                        .font(.system(size: 80))
                        .blendMode(.destinationOut)
                        .padding(.top, 10)
                }
                .compositingGroup()
                .shadow(radius: 15)
            }
            
            // MARK: Masking
            VStack {
                Image(.iOS18)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 130)
                    .mask {
                        Text("Apple")
                            .fontWeight(.heavy)
                            .font(.system(size: 94))
                    }
            }
        }
    }
}

#Preview {
    Mask()
}
