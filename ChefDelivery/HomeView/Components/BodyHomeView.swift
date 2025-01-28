//
//  BodyHomeView.swift
//  ChefDelivery
//
//  Created by Igor Costa Nascimento on 27/01/25.
//

import SwiftUI

struct BodyHomeView: View {
    let isAnimating: Bool
    @Binding var imageOffset: CGSize
    
    var body: some View {
        VStack{
            Text("Chef Delivery")
                .font(.system(size: 48))
                .fontWeight(.heavy)
                .foregroundColor(Color("ColorRed"))
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Text("Peça as suas comidas favoritas no conforto da sua casa.")
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.black.opacity(0.7))
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Image("image")
                .resizable()
                .scaledToFit()
                .padding(32)
                .shadow(radius: 30)
                .offset(x: imageOffset.width, y: imageOffset.height)
                .gesture(
                    DragGesture()
                        .onChanged({ gesture in
                            withAnimation(.easeInOut(duration: 0.5)) {
                                imageOffset = gesture.translation
                            }
                        })
                        .onEnded({ _ in
                            withAnimation(.easeInOut(duration: 0.5)) {
                                imageOffset = .zero
                            }
                        })
                )
        }
    }
}

#Preview {
    BodyHomeView(isAnimating: false, imageOffset: .constant(.zero))
}
