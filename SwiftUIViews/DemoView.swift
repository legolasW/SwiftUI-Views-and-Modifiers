//
//  DemoView.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/16/20.
//






import SwiftUI

struct DemoView: View {
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




//GroupBox(
//    label: Label("创作简介", systemImage: "pencil.tip").foregroundColor(.red)
//) {
//    Text("书空的设计初心，不是简单的功能堆砌，而是用心思考后的化繁为简。直观的交互，顺手的工具，无尽的绘纸，便是书空想传递的的核心体验。")
//        .padding()
//}.padding()




//ScrollView {
//    VStack {
//        ForEach(0..<targetDurations.count) {
//            Text(self.targetDurations[$0])
//        }
//    }
//    .cardStyle()
//    Spacer()
//    HStack {
//        ForEach(0..<targetDurations.count) {
//            Text(self.targetDurations[$0])
//        }
//    }
//    .cardStyle()
//}
//.tabItem {
//    Image(systemName: "")
//    Text("滑动")
//}










struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
