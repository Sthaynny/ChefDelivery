//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 24/01/25.
//

import SwiftUI

struct CarouselTabView: View {
    let ordersCarouselMock: [OrderType] = [
        OrderType(id: 1, name: "banner burguer", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner poke", image: "pokes-banner"),
    ]
    @State private var currentIndex:Int = 1
    
    var body: some View {
        TabView(selection: $currentIndex, content: {
            ForEach(ordersCarouselMock, content: {
                mock in
                CarouselItemView(order: mock)
                    .tag(mock.id)
            })
        })
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 0.5)) {
                    currentIndex = (currentIndex%3) + 1
                }
            }
        }
    }
}

#Preview {
    CarouselTabView()
}
