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
    
    var filterStore: [StoreType]{
        return storesMock.filter { store in
            return store.stars>=filterProd
        }
    }
    
    //MARK: Gerenciamento de estado
    @State private var filterProd = 0
    //MARK: Body
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                
                Text(title)
                    .font(.headline)
                Spacer()
                StoreMenuFilterView(filterProd: $filterProd)
            }
            VStack(alignment: .leading, spacing: 30){
                
                if filterStore.isEmpty {
                    Text("Não foi possivel encontrar o Loja de acordo com o filtro!")
                        .font(.title3)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .frame(maxWidth: .infinity)
                        .padding(.top)
                        .padding(.horizontal)
                }else{
                    ForEach(filterStore){ mock in
                        NavigationLink{
                            StoreDetailsView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
                    }
                    
                }
            }
            .foregroundColor(.black)
        }.padding(.horizontal, 20)
    }
}

#Preview {
    StoreContainerView()
}
