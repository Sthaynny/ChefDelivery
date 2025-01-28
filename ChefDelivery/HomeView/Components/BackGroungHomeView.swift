//
//  BackGroungHomeView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import SwiftUI

struct BackgroundHomeView: View {
    let isAnimating : Bool
    let width: Double
    let height: Double
    var body: some View {
        Circle()
            .foregroundColor(Color("ColorRed"))
            .frame(width: isAnimating ? 200 : 0)
            .position(x: isAnimating ? 50 : -50, y: isAnimating ? 100 : -100)
            .blur(radius: 60)
            .opacity(isAnimating ? 0.5 : 0)
        
        Circle()
            .foregroundColor(Color("ColorRedDark"))
            .frame(width: isAnimating ? 200 : 0)
            .position(
                x: isAnimating ? width - 50 : width + 50,
                y: isAnimating ? height - 50 : height + 50
            )
            .blur(radius: 60)
            .opacity(isAnimating ? 0.5 : 0)
    }
}

#Preview {
    BackgroundHomeView(isAnimating: false, width: 0.0, height: 0.0)
}
