//
//  ColorPickSwiftUI.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//
// MARK: ColorPicker in SwiftUI
import SwiftUI

struct ColorPickerSwiftUI: View {
    
    @State private var selectedColor: Color = .purple
    
    var body: some View {
        VStack {
            ColorPicker("Escolha uma cor", selection: $selectedColor)
                .padding()
        }
    }
}

#Preview {
    ColorPickerSwiftUI()
}
