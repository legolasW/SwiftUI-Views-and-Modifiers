//
//  TextRelatedModifiers.swift
//  SwiftUIViews
//
//  Created by Legolas on 12/2/20.
//

import SwiftUI

struct TextRelatedModifiers: View {
    @State var textFieldInput = "" 
    
    var body: some View {
        ScrollView {
            Group {
                //字体
                Text("示例文本 Sample")
                    .font(.title)
                
                Text("示例文本 Sample")
                    .font(.title2)
                
                Text("示例文本 Sample")
                    .font(.headline)
                
                Text("示例文本 Sample")
                    .font(.body)
                
                Text("示例文本 Sample")
                    .font(.footnote)
                
                
                Text("示例文本")
                    .font(.custom("FZKai-Z03S", size: 30))
                
                
                Text("示例文本 Sample")
                    .font(.system(size: 20, weight: .semibold, design: .default))
                
                Text("示例文本 Sample")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                
                Text("示例文本 Sample")
                    .font(.system(size: 20, weight: .semibold, design: .serif))
                
                Text("示例文本 Sample")
                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
            }
            
            Group {
                Text("示例文本 Sample")
                    .fontWeight(.ultraLight)
                
                Text("示例文本 Sample")
                    .fontWeight(.thin)
                
                Text("示例文本 Sample")
                    .fontWeight(.light)
                
                Text("示例文本 Sample")
                    .fontWeight(.regular)
                
                Text("示例文本 Sample")
                    .fontWeight(.medium)
                
                Text("示例文本 Sample")
                    .fontWeight(.semibold)
                
                Text("示例文本 Sample")
                    .fontWeight(.bold)
                
                Text("示例文本 Sample")
                    .fontWeight(.heavy)
            }
            
            Group {
                Text("Sample")
                    .kerning(2.0)
                
                Text("Sample")
                    .tracking(2.0)
    
                // 字重
                Text("Sample")
                    .bold()
                
                Text("Sample")
                    .italic()
                
                Text("Sample")
                    .underline()
                
                Text("Sample")
                    .strikethrough()
                
                
                // 加粗、倾斜、下划线、删除线
                Text("Sample")
                    .bold()
                
                Text("Sample")
                    .italic()
                
                Text("Sample")
                    .underline()
                
                Text("Sample")
                    .strikethrough()
            }
            
            Group {
                // 大小写
                Text("示例文本 Sample")
                    .textCase(.uppercase)
                
                Text("示例文本 Sample")
                    .textCase(.none)
                
                Text("示例文本 Sample")
                    .textCase(.lowercase)
                
                
                //「字间距及排版」相关修改器
                Text("fly")
                    .font(.custom("AmericanTypewriter", size: 80))
                    .kerning(-0.6)
                
                Text("fly")
                    .font(.custom("AmericanTypewriter", size: 80))
                    .tracking(-0.6)
                
                
                Text("项目用时：")
                    .bold()
                
                Text("4 小时")
                    .baselineOffset(-45.0)
                    .foregroundColor(.orange)
                
                
                //「长文本」相关修改器
                Text("We see, then, that the disappearance of the conscious personality, the predominance of the unconscious personality, the turning by means of suggestion and contagion of feelings and ideas in an identical direction, the tendency to immediately transform the suggested ideas into acts; these, we see, are the principal characteristics of the individual forming part of a crowd. He is no longer himself, but has become an automaton who has ceased to be guided by his will.")
                    .lineLimit(5)
                    .truncationMode(.middle)
                    .lineSpacing(10.0)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                
                
                //「文本框」相关修改器
                TextField("文本框", text: $textFieldInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.sentences)
                    .disableAutocorrection(true)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
            }
        }
    }
}

struct SpacingRelatedModifiers_Previews: PreviewProvider {
    static var previews: some View {
        TextRelatedModifiers()
            .previewLayout(.sizeThatFits)
    }
}


/*
 
 Text("示例文本 Sample")
 .font(.title)
 
 Text("示例文本 Sample")
 .font(.title2)
 
 Text("示例文本 Sample")
 .font(.headline)
 
 Text("示例文本 Sample")
 .font(.body)
 
 Text("示例文本 Sample")
 .font(.footnote)
 
 
 Text("示例文本")
 .font(.custom("FZKai-Z03S", size: 80))
 
 
 Text("示例文本 Sample")
 .font(.system(size: 20, weight: .semibold, design: .default))
 
 Text("示例文本 Sample")
 .font(.system(size: 20, weight: .semibold, design: .rounded))
 
 Text("示例文本 Sample")
 .font(.system(size: 20, weight: .semibold, design: .serif))
 
 Text("示例文本 Sample")
 .font(.system(size: 20, weight: .semibold, design: .monospaced))
 
 
 Text("示例文本 Sample")
 .fontWeight(.ultraLight)
 
 Text("示例文本 Sample")
 .fontWeight(.thin)
 
 Text("示例文本 Sample")
 .fontWeight(.light)
 
 Text("示例文本 Sample")
 .fontWeight(.regular)
 
 Text("示例文本 Sample")
 .fontWeight(.medium)
 
 Text("示例文本 Sample")
 .fontWeight(.semibold)
 
 Text("示例文本 Sample")
 .fontWeight(.bold)
 
 Text("示例文本 Sample")
 .fontWeight(.heavy)
 
 Text("Sample")
 .kerning(2.0)
 
 Text("Sample")
 .tracking(2.0)
 
 
 Text("Sample")
 .bold()
 
 Text("Sample")
 .italic()
 
 Text("Sample")
 .underline()
 
 Text("Sample")
 .strikethrough()
 
 
 
 Text("Sample")
 .bold()
 
 Text("Sample")
 .italic()
 
 Text("Sample")
 .underline()
 
 Text("Sample")
 .strikethrough()
 
 
 Text("示例文本 Sample")
 .textCase(.uppercase)
 
 Text("示例文本 Sample")
 .textCase(.none)
 
 Text("示例文本 Sample")
 .textCase(.lowercase)
 
 Text("fly")
 .font(.custom("AmericanTypewriter", size: 80))
 .kerning(-0.6)
 
 Text("fly")
 .font(.custom("AmericanTypewriter", size: 80))
 .tracking(-0.6)
 
 
 Text("项目用时：")
 .bold()
 
 Text("4 小时")
 .baselineOffset(-45.0)
 .foregroundColor(.orange)
 
 
 Text("We see, then, that the disappearance of the conscious personality, the predominance of the unconscious personality, the turning by means of suggestion and contagion of feelings and ideas in an identical direction, the tendency to immediately transform the suggested ideas into acts; these, we see, are the principal characteristics of the individual forming part of a crowd. He is no longer himself, but has become an automaton who has ceased to be guided by his will.")
 .lineLimit(5)
 .truncationMode(.middle)
 .lineSpacing(10.0)
 .allowsTightening(true)
 .minimumScaleFactor(0.5)
 .multilineTextAlignment(.leading)
 
 
 TextField("文本框", text: $textFieldInput)
 .textFieldStyle(RoundedBorderTextFieldStyle())
 .autocapitalization(.sentences)
 .disableAutocorrection(true)
 .textContentType(.emailAddress)
 .keyboardType(.emailAddress)
 
 
 */
