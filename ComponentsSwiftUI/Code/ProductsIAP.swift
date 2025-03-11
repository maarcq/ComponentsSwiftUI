//
//  ProductsIAP.swift
//  ComponentsSwiftUI
//
//  Created by Marcelle Ribeiro Queiroz on 10/03/25.
//

import SwiftUI
import StoreKit

struct ProductsIAP: View {
    var body: some View {
        // list your IAP products with a few lines lines of code
        StoreView(ids: [
            "MyApp.Monthly",
            "MyApp.Yearly",
            "MyApp.Lifetime"
        ])
    }
}

#Preview {
    ProductsIAP()
}
