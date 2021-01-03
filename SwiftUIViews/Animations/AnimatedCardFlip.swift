//
//  AnimatedCardFlip.swift
//  SwiftUI by Legolas
//
//  Created by Legolas on 7/30/19.
//  Copyright © 2019 Legolas Wang. All rights reserved.
//

import SwiftUI

struct AnimatedCardFlip: View {

    @State private var front = false
    
    var body: some View {
        VStack {
            Image(systemName: "suit.club.fill")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .padding()
                .frame(width: 200, height: 100)
                .foregroundColor(front ? Color.white : Color.black)
                .background(front ? Color.black : Color.white)
                .cornerRadius(20)
                .shadow(radius: 20)
                .scaleEffect(front ? 1.2 : 0.8)
                .rotation3DEffect(Angle(degrees: front ? 0 : 180), axis: (x: 0, y: 1, z: 0))
                .animation(.spring(response: 1.5))
                .onTapGesture {
                    self.front.toggle()
            }
        }
    }
}

#if DEBUG
struct DemoCardFlip_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedCardFlip()
    }
}
#endif
