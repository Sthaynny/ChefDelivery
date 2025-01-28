//
//  ProductDetailsHeadersView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import SwiftUI

struct ProductDetailsHeadersView: View {
    let product: ProductType
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            Text(product.name)
                .font(.title)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            Text(product.description)
                .padding(.horizontal)
            Text(product.formatPrice)
                .bold()
                .font(.title3)
                .padding(.horizontal)
            
        }
    }
}

#Preview {
    ProductDetailsHeadersView(product: storesMock[0].products[0])
}
