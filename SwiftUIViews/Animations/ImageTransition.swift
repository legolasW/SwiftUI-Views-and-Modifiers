//
//  ImageTransition.swift
//  Playground
//
//  Created by Legolas on 2020-12-30.
//

import SwiftUI

struct ImageTransition: View {

    @State var playTransition = false
    
    var body: some View {
        VStack {
            Image("Dandelion")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .scaleEffect(playTransition ? 0 : 1)
                .onTapGesture {
                    withAnimation {
                        playTransition.toggle()
                    }
                }
        }
    }
}

struct ImageTransition_Previews: PreviewProvider {
    static var previews: some View {
        ImageTransition()
    }
}













