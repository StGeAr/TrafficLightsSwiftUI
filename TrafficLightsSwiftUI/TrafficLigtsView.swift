//
//  TrafficLigtsView.swift
//  TrafficLightsSwiftUI
//
//  Created by Герман Ставицкий on 13.05.2022.
//

import SwiftUI

struct TrafficLigtsView: View {
     
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                trafficLights
                Spacer()
                ButtonView()
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
        }
    }
    
    private var trafficLights: some View {
        VStack {
            ColorCircleView (color: .red)
                .padding(.bottom)
            ColorCircleView (color: .yellow)
                .padding(.bottom)
            ColorCircleView (color: .green)
        }
    }
}

struct TrafficLigtsView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLigtsView()
    }
}
