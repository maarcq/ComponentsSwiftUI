//
//  CustomPaywall.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 10/03/25.
//

import SwiftUI
import StoreKit

struct CustomPaywall: View {
    var body: some View {
        SubscriptionStoreView(productIDs: ["myapp.monthly", "myapp.yearly"]) {
            HeaderView()
        }
        .subscriptionStorePolicyDestination(for: .termsOfService) {
            Text("Terms of Service")
        }
        .subscriptionStorePolicyDestination(for: .privacyPolicy) {
            Text("Privacy Policy")
        }
        .subscriptionStorePolicyForegroundStyle(.white)
        .subscriptionStoreControlStyle(.prominentPicker)
        .subscriptionStoreControlBackground(
            LinearGradient(colors: [.indigo, .black], startPoint: .top, endPoint: .bottom)
        )
        .storeButton(.visible, for: .redeemCode)
        .storeButton(.visible, for: .restorePurchases)
        .storeButton(.visible, for: .cancellation)
        .tint(.indigo)
    }
}

struct HeaderView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    CustomPaywall()
}
