//
//  Double+.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import Foundation

extension Double{
    func formatPrice() -> String{
        let formatString = String(format: "%.2f", self)
        return formatString.replacingOccurrences(of: ".", with: ",")
    }
}
