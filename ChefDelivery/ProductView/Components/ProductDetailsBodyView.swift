//
//  ProductDetailsBodyView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import SwiftUI

struct ProductDetailsBodyView: View {
    @Binding  var productQtt:Int
    var body: some View {
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
    }
}

#Preview {
    @Previewable @State var prod = 1
    ProductDetailsBodyView(productQtt: $prod)
}
