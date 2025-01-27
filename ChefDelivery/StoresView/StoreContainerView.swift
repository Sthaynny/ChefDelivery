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
                Menu("Filtrar"){
                    ForEach(1...5, id: \.self){ index in
                        Button{
                            filterProd = index
                        }label: {
                            if index > 1 {
                                Text("\(index) estrelas ou +")
                                    .font(.title3)
                                .foregroundColor(.black)
                               
                            }else{
                                Text("\(index) estrela ou +")
                                    .font(.title3)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            VStack(alignment: .leading, spacing: 30){
                
                if filterStore.isEmpty {
                    Text("Não foi possivel encontrar o Loja de acordo com o filtro!")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .frame(maxWidth: .infinity)
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
