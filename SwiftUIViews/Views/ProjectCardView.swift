//
//  ProjectCardView.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/30/20.
//

import SwiftUI

struct ProjectCardView: View {
    var body: some View {
        HStack {
            Image("icon")
                .resizable()
                .frame(width: 150, height: 150)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .shadow(radius: 10)
            VStack(alignment: .leading) {
                Text("创作者的 iOS 独立开发指南")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 5)
                Spacer()
                Text("已进行：")
                    .font(.body)
                    .foregroundColor(.gray)
                Text("1 小时 5 分钟")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
        }
        .frame(height: 160)
        .cardStyle()
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardView()
    }
}
