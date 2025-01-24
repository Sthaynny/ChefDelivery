//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 24/01/25.
//

import SwiftUI

struct CarouselItemView: View {
    
    var order :OrderType
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            
    }
}

#Preview {
    CarouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
        .previewLayout(.sizeThatFits)
        .padding()
}
