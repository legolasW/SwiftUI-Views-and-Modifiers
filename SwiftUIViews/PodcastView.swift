//
//  PodcastView.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/16/20.
//


import SwiftUI

struct PodcastView: View {
    var body: some View {
        Group {

            HStack {
                VStack(alignment: .leading, spacing: 6.0) {
                    Text("星期二")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Text("聊聊苹果 Mac 新品发布会，ARM 新时代的启幕")
                        .font(.title2)
                    Text("今天凌晨，苹果举行了今年秋季的第三场线上发布会。发布会上，此前宣布将于年底推出的自研 Mac 芯片 Apple M1 如期发布，搭载了 M1 的三款 Mac 新品也如期亮相，它们分别是 MacBook Air、13 英寸 MacBook Pro 和 Mac mini。")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Spacer()
                
                Text("33 分钟")
                    .font(.body)
                    .bold()
                    .foregroundColor(.gray)
            }
            .padding()
        }
    }
}
















struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
            
            
            
    }
}
