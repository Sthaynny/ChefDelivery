//
//  StoreDetailsView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 24/01/25.
//

import SwiftUI

struct StoreDetailsView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedProd : ProductType?
    
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack(alignment: .leading){
                StoreDetailsHeaderView(store: store)
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .padding()
                ForEach(store.products){
                    product in
                    
                    Button {
                        selectedProd = product
                    } label: {
                        StoreDetailsProductView(product: product)
                    }.sheet(item: $selectedProd) { prod in
                        ProductDetailView(product: prod)
                    }
                }
                
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack{
                            Image(systemName: "cart")
                            Text("Lojas")
                        }
                        .foregroundColor(Color("ColorRed"))
                    }

                }
            }
        }
        
    }
}

#Preview {
    StoreDetailsView(store: storesMock[0])
}
