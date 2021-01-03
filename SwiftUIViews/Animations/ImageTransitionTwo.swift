//
//  ImageTransitionTwo.swift
//  Playground
//
//  Created by Legolas on 2020-12-30.
//

import SwiftUI

struct ImageTransitionTwo: View {

    @State var playTransition = true
    
    var body: some View {
        VStack {
            if playTransition {
                Image("Dandelion")
                    .resizable()
                    .transition(.asymmetric(insertion: .slide, removal: .scale))
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    

            }
            
            
            Button(action: {
                withAnimation {
                    playTransition.toggle()
                }
            }) {
                Text("播放动画")
            }
        }
    }
}

struct ImageTransitionTwo_Previews: PreviewProvider {
    static var previews: some View {
        ImageTransitionTwo()
    }
}













