//
//  DemoView.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/16/20.
//


import SwiftUI

struct DemoView: View {
    var body: some View {
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        VStack(alignment: .leading, spacing: 30) {
            
            
            
            
            
            
            
            
            
            
            HStack {
                VStack(alignment: .leading) {
                    Text("大标题")
                        .font(.largeTitle)
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
    }
    
    struct DemoView_Previews: PreviewProvider {
        static var previews: some View {
            DemoView()
        }
    }
    
    
    
    
    
    
    
}




/*
 
 ScrollView {
 VStack {
 HStack {
 Text("项目")
 .font(.title)
 .bold()
 Spacer()
 Text("内容详情")
 }
 .padding()
 
 ProjectCardView()
 ProjectCardView()
 }
 }
 
 Text("树欲静而风不止，子欲养而亲不待。")
 .font(.custom("FZKai-Z03S", size: 40))
 .padding()
 
 
 */
