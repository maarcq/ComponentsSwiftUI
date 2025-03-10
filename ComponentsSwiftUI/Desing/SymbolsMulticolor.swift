//
//  SymbolsMulticolor.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 10/03/25.
//

import SwiftUI

struct SymbolsMulticolor: View {
    
    @State private var trigger = false
    @State private var text = ""
    @State private var selectedColor: Color = .purple
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 10) {
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
                
                Text("trigger feedback".capitalized)
                    .font(.title3)
                    .foregroundStyle(.black)
                Button {
                    trigger = true
                } label: {
                    Text("trigger feedback".capitalized)
                        .bold()
                }
                .buttonStyle(.borderedProminent)
                .sensoryFeedback(.impact, trigger: trigger)
                
                Divider()
                
                // MARK: Easily add links to text in SwiftUI
                Text("Visit the [Apple](https://www.apple.com) website")
                    .font(.title3)
                    .foregroundStyle(.black)
                
                Divider()
                
                Text("Made with")
                +
                Text(Image(systemName: "heart.fill"))
                    .foregroundStyle(.red)
                +
                Text("in Brazil")
                
                Divider()
                
                // MARK: Automatically dismiss the keyboard when the user starts scrolling.
                VStack {
                    Text("New Note")
                        .bold()
                    TextEditor(text: $text)
                        .font(.headline)
                        .background(.black)
                        .padding(.horizontal)
                }
                
                Divider()
                
                // MARK: ColorPicker in SwiftUI
                ColorPicker("Escolha uma cor", selection: $selectedColor)
                    .padding()
                
                Divider()
                
                // MARK: Styling a symbol in SwiftUI
                Image(systemName: "visionpro")
                    .font(.system(size: 72, weight: .ultraLight))
                    .foregroundStyle(
                        LinearGradient(colors: [.gray, .black, .gray], startPoint: .top, endPoint: .bottom),
                        EllipticalGradient(colors: [.purple, .black], center: .center, startRadiusFraction: 0, endRadiusFraction: 0.55)
                    )
                    .shadow(color: .black.opacity(0.5), radius: 25, y: 7)
                
                Divider()
                
                // MARK: Display device information
                Text(UIDevice.current.systemName)
                Text(UIDevice.current.systemVersion)
                Text(UIDevice.current.model)
                Text(UIDevice.current.name)
                
                Divider()
                
                // MARK: Masking and Inverted Masking
                HStack {
                    VStack {
                        Text("Masking")
                        Image(.iOS18)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90)
                            .mask {
                                Image(systemName: "apple.logo")
                                    .font(.system(size: 60))
                            }
                    }
                    VStack {
                        Text("Inverted Masking")
                        ZStack {
                            Image(systemName: "lanyardcard.fill")
                                .font(.system(size: 80))
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.black, .gray],
                                        startPoint: .bottomLeading,
                                        endPoint: .topTrailing
                                    )
                                )
                            Image(systemName: "apple.logo")
                                .font(.system(size: 40))
                                .blendMode(.destinationOut)
                                .padding(.top, 10)
                        }
                        .compositingGroup()
                        .shadow(radius: 15)
                    }
                }
                
                Divider()
                
                // MARK: stroke() & strokeBorder()
                HStack {
                    Rectangle()
                        .fill(.black)
                        .frame(width: 50, height: 40)
                    Rectangle()
                        .fill(.black)
                        .stroke(.orange, lineWidth: 5)
                        .frame(width: 50, height: 40)
                    Rectangle()
                        .fill(.black)
                        .strokeBorder(.orange, lineWidth: 5)
                        .frame(width: 50, height: 40)
                }
            }
        }
        .background(
            Color.indigo.opacity(0.2)
                .mix(with: .pink, by: 0.2)
                .ignoresSafeArea(.all)
        )
        .scrollDismissesKeyboard(.immediately)
    }
}

#Preview {
    SymbolsMulticolor()
}
