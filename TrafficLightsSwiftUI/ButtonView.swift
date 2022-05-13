//
//  ButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by Герман Ставицкий on 13.05.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ButtonView: View {
    
    @State private var buttonText = "START"
    @State private var currentLight = CurrentLight.red
   
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.blue)
                .frame(width: 150, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
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
    
        switch currentLight {
        case .red:
            print("\(currentLight)")
            currentLight = .yellow
        case .yellow:
            print("\(currentLight)")
            currentLight = .green
        case .green:
            print("\(currentLight)")
            currentLight = .red
        }
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
