//
//  ColorCircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Герман Ставицкий on 13.05.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    var opacity: CGFloat
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ColorCircleView(color: .orange, opacity: 0.3)
        }
    }
}
