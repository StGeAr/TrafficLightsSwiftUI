//
//  ButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by Герман Ставицкий on 13.05.2022.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var tapCount = 0
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 200, height: 100)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 5))
            Button(action: { tapCount += 1 }) {
                Text("START")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.heavy)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
            ButtonView()
        }
    }
}
