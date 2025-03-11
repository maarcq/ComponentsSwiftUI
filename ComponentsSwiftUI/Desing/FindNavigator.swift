//
//  FindNavigator.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 10/03/25.
//

import SwiftUI

struct FindNavigator: View {
    
    @State private var text = ""
    @State private var showFindNavigator: Bool = false
    
    var body: some View {
        VStack {
            Button {
                showFindNavigator = true
            } label: {
                Label("Find Text", systemImage: "magnifyingglass")
                    .font(.title)
            }
            .buttonStyle(.borderedProminent)
            
            TextEditor(text: $text)
                .findNavigator(isPresented: $showFindNavigator)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button {} label: { Image(systemName: "plus.circle") }
                        Spacer()
                        Button {} label: { Image(systemName: "photo.badge.plus") }
                        Button {} label: { Image(systemName: "folder.badge.plus") }
                    }
                }
                .tint(.purple)
                .font(.title3)
        }
        .padding()
    }
}

#Preview {
    FindNavigator()
}
