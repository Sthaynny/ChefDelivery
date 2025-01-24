//
//  StoreDetailsView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 24/01/25.
//

import SwiftUI

struct StoreDetailsView: View {
    
    let store: StoreType
    var body: some View {
        Text(store.name)
    }
}

#Preview {
    StoreDetailsView(store: storesMock[0])
}
