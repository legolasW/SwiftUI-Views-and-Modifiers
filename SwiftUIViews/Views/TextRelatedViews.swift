//
//  TextRelatedViews.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/15/20.
//


import SwiftUI

struct TextRelatedViews: View {
    @State var textFieldInput = "" // 3
    @State var secureFieldInput = "" // 4
    @State var textEditorInput = "TextEditor: 支持点击并编辑多行文字" // 6
    
    var body: some View {
        VStack(alignment: .leading, spacing: 100.0) {
            // 1. Text
            Text("Text: 仅显示文本，不支持输入")
            
            // 2. Label
            Label("Label: 显示文本和图标，不支持输入", systemImage: "message")
            
            // 3. TextField
            TextField("TextField: 支持用户输入单行信息", text: $textFieldInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // 4. SecureField
            SecureField("SecureField: 支持输入，但不明码显示", text: $secureFieldInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // 5. Link
            Link("Link: 点击并跳转链接", destination: URL(string: "https://www.legolas.me")!)
            
            // 6. TextEditor
            TextEditor(text: $textEditorInput)
        }
        .padding()
    }
}


struct TextRelated_Previews: PreviewProvider {
    static var previews: some View {
        TextRelatedViews()
            .preferredColorScheme(.dark)
    }
}
