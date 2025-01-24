//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 24/01/25.
//

import SwiftUI

struct StoreItemView: View {
    // MARK: - Attributes
    
    var order: OrderType
    
    // MARK: - BodyView
    var body: some View {
        HStack{
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50,height: 50)
            Text(order.name)
                .font(.subheadline)
            Spacer()
        }.onTapGesture {
            print("Tap em uma loja:\(order.name)")
        }
    }
}

#Preview {
    StoreItemView(order: OrderType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo"))
    
}
