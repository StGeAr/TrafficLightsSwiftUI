//
//  ColorCircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Герман Ставицкий on 13.05.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ColorCircleView(color: .red)
        }
    }
}
