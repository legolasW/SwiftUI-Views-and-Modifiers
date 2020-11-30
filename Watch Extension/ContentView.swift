//
//  ContentView.swift
//  Watch Extension
//
//  Created by Legolas on 11/30/20.
//

import SwiftUI









struct ContentView: View {
    var body: some View {
        ScrollView {
            HStack {
                Text("水平：")
                    .font(.headline)
                Gauge(value: 0.2, in: 0...1) { }
                    .frame(width: 100, height: 100)
            }

            HStack {
                Text("圆弧：")
                    .font(.headline)
                Gauge(value: 0.5, in: 0...1) { }
                    .gaugeStyle(CircularGaugeStyle(tint: Gradient(colors: [.orange, .blue])))
                    .frame(width: 100, height: 100)
            }
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
