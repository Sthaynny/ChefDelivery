//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 24/01/25.
//

struct StoreType: Identifiable{
    let id: Int
    let name: String
    let logoImage: String
    let headerImage:String
    let location:String
    let stars:Int
    let products:[ProductType]
}
