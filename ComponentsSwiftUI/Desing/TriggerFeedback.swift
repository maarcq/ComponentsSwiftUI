//
//  TriggerFeedback.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import SwiftUI

struct TriggerFeedback: View {
    
    @State private var trigger = false
    
    var body: some View {
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
    }
}

#Preview {
    TriggerFeedback()
}
