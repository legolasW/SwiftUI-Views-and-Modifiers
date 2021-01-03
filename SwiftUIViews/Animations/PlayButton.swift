//
//  PlayButton.swift
//  Playground
//
//  Created by Legolas on 2020-12-29.
//

import SwiftUI

struct PlayButton: View {
    
    
    
    
    
    
    
    
    
    
    
    
    @State var isPlaying = false
    
    var body: some View {
        Button(action: {
            withAnimation(.easeOut(duration: 0.4)) { isPlaying.toggle() }
        }) {
            if isPlaying {
                Image(systemName: "pause.fill")
                    .transition(.scale)
                    .transition(.opacity)
            } else {
                Image(systemName: "play.fill")
                    .transition(.scale)
                    .transition(.opacity)
            }
        }
    }
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
