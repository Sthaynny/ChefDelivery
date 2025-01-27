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
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                Text(product.description)
                    .padding(.horizontal)
                Text(product.formatPrice)
                    .bold()
                    .font(.title3)
                    .padding(.horizontal)
                
            }
            Spacer()
            VStack(spacing: 16){
                Text("Quantidade")
                    .bold()
                    .font(.title3)
                HStack(spacing: 8) {
                    Button {
                        if productQtt > 0{
                            productQtt-=1
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title)
                            .bold( )
                    }
                    Text("\(productQtt)")
                        .font(.title2)
                        .bold()
                    
                    Button {
                        
                        productQtt+=1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .bold( )
                    }

                }
            }
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
