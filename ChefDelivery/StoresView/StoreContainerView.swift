//
//  StoreContainerView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 24/01/25.
//

import SwiftUI

struct StoreContainerView: View {
    //MARK: Atributos
    var title = "Lojas"
    //MARK: Body
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
            VStack(alignment: .leading, spacing: 30){
                ForEach(storesMock){ mock in
                    StoreItemView(order: mock)
                }
            }
        }.padding(.horizontal, 20)
    }
}

#Preview {
    StoreContainerView()
}
