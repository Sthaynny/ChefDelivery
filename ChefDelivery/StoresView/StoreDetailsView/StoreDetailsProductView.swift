//
//  StoreDetailsProductView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import SwiftUI

struct StoreDetailsProductView: View {
    let product:ProductType
    var body: some View {
        HStack(spacing: 8){
            VStack(alignment: .leading, spacing: 8){
                Text(product.name)
                    .bold()
                Text(product.description)
                    .foregroundColor(.black.opacity(0.5))
                
                Text(product.formatPrice)
                    .bold()
            }
            Spacer()
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(color: .black.opacity(0.3),radius: 20, x: 6 ,y: 8)
        }.padding()
            .foregroundColor(.black)
            .multilineTextAlignment(.leading)
    }
}

#Preview {
    StoreDetailsProductView(product: storesMock[0].products[0])
}
