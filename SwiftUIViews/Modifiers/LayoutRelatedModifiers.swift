//
//  LayoutRelatedModifiers.swift
//  SwiftUIViews
//
//  Created by Legolas on 12/7/20.
//

import SwiftUI

struct LayoutRelatedModifiers: View {
    @State var textFieldInput = ""
    @State var isHidden = false
    
    var body: some View {

        VStack {

            // 隐藏
            if !isHidden {
                TextField("文本框", text: $textFieldInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    //.hidden()
            }

            // 转化为占位符
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("大标题")
                                .font(.largeTitle)
                                .border(Color.orange)
                            Text("一些非常复杂的正文内容")
                                .font(.body)
                                .foregroundColor(.blue)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("大标题")
                                .font(.largeTitle)
                            Text("一些非常复杂的正文内容")
                                .font(.body)
                                .foregroundColor(.blue)
                        }
                    }
                    .redacted(reason: .placeholder)
                }
                
                Spacer()
                Toggle("Hide", isOn: $isHidden)
                    .labelsHidden()
            }
            .padding(.horizontal)
            
            // 安全区
            Rectangle()
                .orangeCardStyle()
                .padding()
                .ignoresSafeArea(.keyboard)
            
            // 框架与尺寸
            HStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(minWidth: 100, idealWidth: 200, maxWidth: 300)
                    .frame(height: 200)
                    
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 200, height: 200)
            }

            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(minWidth: 100, idealWidth: 200, maxWidth: 300)
                    .frame(height: 200)
                    
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 220, height: 200)
            }
            .padding()
            
            // 边缘安全区
            Rectangle()
                .foregroundColor(.orange)
                .edgesIgnoringSafeArea([.top, .bottom])
 
        }
    }
}

struct LayoutRelatedModifiers_Previews: PreviewProvider {
    static var previews: some View {
        LayoutRelatedModifiers()
    }
}


// 自定义修改器
struct OrangeCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.orange)
            .background(Color.orange)
            .cornerRadius(15)
            .shadow(radius: 3)
    }
}


// 用于将打包好的自定义修改器转化为易用函数
extension View {
    func orangeCardStyle() -> some View {
        self.modifier(OrangeCardModifier())
    }
}



