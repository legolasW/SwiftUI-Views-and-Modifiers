//
//  DemoView.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/16/20.
//


import SwiftUI

struct DemoView: View {
    var body: some View {
        VStack {
            
            //卡片 1
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
                    Text("7 小时 20 分钟")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.leading)
            }
            .frame(height: 160)
            .cardStyle()
            
            //卡片 2
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
                    Text("7 小时 20 分钟")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.leading)
            }
            .frame(height: 160)
            .cardStyle()
        }
    }
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
