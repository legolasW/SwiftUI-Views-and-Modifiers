//
//  ImageRelatedModifiers.swift
//  SwiftUIViews
//
//  Created by Legolas on 12/8/20.
//

import SwiftUI

struct ImageRelatedModifiers: View {
    var body: some View {
        VStack(spacing: 50) {
            // 自定义修改器
            HStack {
                Image("22")
                    .imageAvatarStyle()
                Image("21")
                    .imageAvatarStyle()
            }
            
            HStack(spacing: 30) {
                VStack {
                    Image("22")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 200)
                        .whiteCardStyle()
                    
                    Label("音乐理论", systemImage: "music.quarternote.3")
                        .frame(width: 150, height: 50)
                        .whiteCardStyle()
                }
                
                // 覆盖
                Image("0")
                    .resizable()
                    .scaleEffect(0.7)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 260)
                    .overlay(
                        HStack {
                            Spacer()
                            Text("生日快乐")
                                .font(.headline)
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black.opacity(0.7))
                        ,alignment: .bottom
                    )
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 3)
                
            }
            
            // 前景色
            HStack {
                Text("绘笔")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundColor(.orange)
                
                Image(systemName: "scribble.variable")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.orange)
                
                // 背景
                HStack {
                    Text("示例")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                    
                    Text("示例")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            Image("21")
                                .resizable()
                        )
                }
            }
        }
    }
}

// 步骤 1
struct AvatarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .scaleEffect(2.5)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .shadow(radius: 10)
            .padding()
            .imageScale(.medium)
    }
}

// 步骤 2
extension View {
    func avatarStyle() -> some View {
        self.modifier(AvatarModifier())
    }
}

// 特殊步骤：图片视图修改器
extension Image {
    func imageAvatarStyle() -> some View {
        self
            .resizable()
            .avatarStyle()
    }
}


struct PositionRelatedModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ImageRelatedModifiers()
    }
}

// 自定义修改器
struct WhiteCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 3)
    }
}


// 用于将打包好的自定义修改器转化为易用函数
extension View {
    func whiteCardStyle() -> some View {
        self.modifier(WhiteCardModifier())
    }
}


