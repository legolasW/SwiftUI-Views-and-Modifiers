//
//  AnimationDemo.swift
//  Playground
//
//  Created by Legolas on 2020-12-30.
//

import SwiftUI

struct AnimatedRotate: View {
    @State var showAnimation = false
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut) {
                self.showAnimation.toggle()
            }
        }) {
            Image(systemName: "chevron.right.circle")
                .imageScale(.large)
                .rotationEffect(.degrees(showAnimation ? 90 : 0))
                .scaleEffect(showAnimation ? 0.4 : 5)
                .padding()
        }
    }
}

struct AnimationDemo_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedRotate()
    }
}
