//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 24/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
                .padding(.horizontal, 15)
            ScrollView(.vertical, showsIndicators: false){
                VStack( spacing: 20, content: {
                    OrderTypeGridView()
                    CarouselTabView()
                    StoreContainerView()
                })
                
            }
        }
    }
}

#Preview {
    ContentView()
}

