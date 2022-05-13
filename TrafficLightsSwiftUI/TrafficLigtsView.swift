//
//  TrafficLigtsView.swift
//  TrafficLightsSwiftUI
//
//  Created by Герман Ставицкий on 13.05.2022.
//

import SwiftUI

struct TrafficLigtsView: View {
    
    @State private var tapCount = 0
    
    var body: some View {
        VStack {
            trafficLights
            startButton
        }
    }
    
    private var trafficLights: some View {
        VStack {
            ColorCircleView (color: .red)
            ColorCircleView (color: .yellow)
            ColorCircleView (color: .green)
        }
    }
    
    private var startButton: some View {
        ZStack {
            ColorCircleView(color: .orange)
            Button(action: { tapCount += 1 }) {
                Text("START")
                    .font(.title)
                    .fontWeight(.heavy)
            }
        }
    }
}

struct TrafficLigtsView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLigtsView()
    }
}
