//
//  DisplayDeviceInformation.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 31/03/25.
//

import SwiftUI

struct DisplayDeviceInformation: View {
    var body: some View {
        // MARK: Display device information
        VStack(spacing: 16) {
            Text(UIDevice.current.systemName)
            Text(UIDevice.current.systemVersion)
            Text(UIDevice.current.model)
            Text(UIDevice.current.name)
        }
    }
}

#Preview {
    DisplayDeviceInformation()
}
