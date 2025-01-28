//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import SwiftUI

struct ProductDetailView: View {
    let product:ProductType
    @State private var productQtt = 1
    
    var body: some View {
        VStack {
            ProductDetailsHeadersView(product: product)
            Spacer()
            ProductDetailsBodyView(productQtt: $productQtt)
            Spacer()
            Button {
                //action
            } label: {
                HStack
                {
                    Image(systemName: "cart")
                        
                    Text("Adicionar o carrinho")
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(Color("ColorRed"))
                .foregroundColor(.white)
                .cornerRadius(32)
                .shadow( color: Color("ColorRedDark").opacity(0.5), radius: 10  ,x:6,y:8 )
            }

        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
