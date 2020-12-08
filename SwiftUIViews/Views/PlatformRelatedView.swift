//
//  PlatformRelatedView.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/30/20.
//

import SwiftUI








struct PlatformRelatedView: View {
    var body: some View {
        Menu("菜单") {
            Button("打开", action: { })
            Menu("移除") {
                Button("永久删除", action: { })
                Button("隐藏", action: { })
            }
        }
    }

}












struct PlatformRelatedView_Previews: PreviewProvider {
    static var previews: some View {
        PlatformRelatedView()
    }
}



//@State private var themeColor =
//        Color(.sRGB, red: 1, green: 1, blue: 0)
//
//var body: some View {
//    ColorPicker("主题色", selection: $themeColor)
//        .frame(width: 100, height: 30)
//}


//NavigationView {
//    List() {
//        Button(action: { }) {
//            Label("推荐", systemImage: "flame")
//        }
//
//        Button(action: { }) {
//            Label("手机", systemImage: "iphone")
//        }
//
//        Button(action: { }) {
//            Label("电脑", systemImage: "pc")
//        }
//    }
//    .listStyle(SidebarListStyle())
//}
