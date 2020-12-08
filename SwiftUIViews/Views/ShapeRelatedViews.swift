//
//  ShapeRelatedViews.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/16/20.
//

import SwiftUI


struct ShapeRelatedViews: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
            Rectangle()
                .frame(width: 100, height: 100)
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .frame(width: 100, height: 100)
            
            Circle()
                .frame(width: 100, height: 100)
            
            Capsule()
                .frame(width: 100, height: 50)
            
            Ellipse()
                .frame(width: 100, height: 50)
        }
        .foregroundColor(.yellow)
    }
}










struct ShapeRelatedViews_Previews: PreviewProvider {
    static var previews: some View {
        ShapeRelatedViews()
    }
}
