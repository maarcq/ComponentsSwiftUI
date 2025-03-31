//
//  AddLink.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import SwiftUI

struct AddLink: View {
    var body: some View {
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
    }
}

#Preview {
    AddLink()
}
