//
//  StoreMenuFilterView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import SwiftUI

struct StoreMenuFilterView: View {
    
    @Binding var filterProd : Int
    
 
    
    var body: some View {
        Menu("Filtrar"){
            Button {
                filterProd = 0
            } label: {
                Text("Limpar")
                    .foregroundColor(Color("ColorRed"))
            }
            Divider()
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
}

#Preview {
    
    @Previewable @State   var countPreview: Int = 0
    StoreMenuFilterView(filterProd:  $countPreview)
}
