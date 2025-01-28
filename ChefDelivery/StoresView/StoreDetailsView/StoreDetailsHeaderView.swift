//
//  StoreDetailsHeaderView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import SwiftUI

struct StoreDetailsHeaderView: View {
    let store: StoreType
    var body: some View {
        VStack{
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            
            HStack{
                Text(store.name)
                    .font(.title)
                    .bold()
                Spacer()
                Image(store.logoImage)
                
            }.padding(.vertical, 8)
                .padding(.horizontal)
            
            HStack{
                Text(store.location)
                Spacer()
                ForEach(1...store.stars, id: \.self){ _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
            }.padding(.vertical, 8)
                .padding(.horizontal)
        }
    }
}

#Preview {
    StoreDetailsHeaderView(store: storesMock[0])
}
