//
//  DismissKeyboard.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import SwiftUI

struct DismissKeyboard: View {
    
    @State private var text = ""
    
    var body: some View {
        // MARK: Automatically dismiss the keyboard when the user starts scrolling.
        ScrollView(.vertical) {
            Text("New Note")
                .bold()
            
            TextEditor(text: $text)
                .font(.headline)
                .background(.black)
                .padding(.horizontal)
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
    DismissKeyboard()
}
