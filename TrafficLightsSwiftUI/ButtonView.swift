//
//  ButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by Герман Ставицкий on 13.05.2022.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var buttonText = "START"
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 150, height: 50)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 5))
            Button(action: buttonPressed) {
                Text(buttonText)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.heavy)
            }
        }
    }
    
    private func buttonPressed() {
        buttonText = "NEXT"
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ButtonView()
        }
    }
}
