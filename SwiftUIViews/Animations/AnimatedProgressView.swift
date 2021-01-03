//
//  ContentView.swift
//  Shared
//
//  Created by Legolas on 2020-12-21.
//

import SwiftUI
struct AnimatedProgressView: View {
    
    
    
    
    @State private var progress: CGFloat = 0.0

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 6)
                .frame(width: 90, height: 90)
                .foregroundColor(Color(.systemGray6))

            Rectangle()
                .frame(width: 24, height: 24)
                .foregroundColor(Color(.orange))
                .cornerRadius(2)

            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                .frame(width: 90, height: 90)
                .foregroundColor(Color(.orange))
                .rotationEffect(.degrees(-90))
                .animation(Animation.easeInOut.speed(0.25))
                .onAppear() {
                    self.progress = 1
                }
        }
    }
    
    
    
    
    
}



struct AnimatedProgressView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedProgressView()
    }
}
