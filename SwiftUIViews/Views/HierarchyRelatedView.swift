//
//  HierarchyRelatedView.swift
//  SwiftUIViews
//
//  Created by Legolas on 11/23/20.
//

import SwiftUI

struct HierarchyRelatedView: View {
    let circleRadius: CGFloat = 62
    let names = ["天狗", "爆款", "国际", "海外", "超市", "充值", "机票", "金币", "拍卖", "吃货", "分类", "美食", "健康", "生活", "汽车", "闲猪", "会员", "门票", "土货", "鲜食"]
    @State var showModal = false
    @State var showActionSheet = false
    @State var showAlert = false
    @State var showAlert2 = false
    
    var body: some View {
        TabView {
            
            // 选项卡 1: 滑动视图
            GeometryReader { fullView in
                ScrollView(.horizontal, showsIndicators: false) {
                    ScrollViewReader { value in
                        HStack {
                            ForEach((0..<20), id: \.self) { index in
                                GeometryReader { geo in
                                    VStack {
                                        let distAbs = abs(fullView.frame(in: .global).midX - geo.frame(in: .global).midX)
                                        let centered = isCentered(distAbs: distAbs)
                                        
                                        ZStack {
                                            Image("\(index)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .font(.system(size: circleRadius))
                                        }
                                        .scaleEffect(x: centered ? 1 : 0.7, y: centered ? 1 : 0.7)
                                        Text("\(names[index])")
                                            .font(centered ? .system(size: 20, weight: .bold) : .system(size: 15, weight: .semibold))
                                    }
                                    .id(index)
                                }.frame(width: circleRadius, height: circleRadius * 2)
                            }.animation(.easeInOut(duration: 0.1))
                        }
                        .onAppear {
                            value.scrollTo(5)
                        }
                    }
                }
                .foregroundColor(.black)
                .padding()
            }
            .foregroundColor(.orange)
            .tabItem {
                Image(systemName: "scroll")
                Text("Scroll")
            }
            
            // 选项卡 2：导航视图
            NavigationView {
                VStack {
                    VStack(spacing: 30) {
                        NavigationLink(destination: ShapeRelatedViews()) {
                            HStack {
                                Image("icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                                    .shadow(radius: 10)
                                VStack(alignment: .leading) {
                                    Text("独立开发指南")
                                        .font(.title2)
                                        .bold()
                                        .padding(.bottom, 5)
                                    Text("将你的创作变现，让世界精彩些。")
                                        .font(.body)
                                        .foregroundColor(.gray)
                                    HStack {
                                        Spacer()
                                        Image(systemName: "arrowshape.turn.up.right")
                                            .font(.system(size: 16, weight: .bold))
                                    }
                                }
                                .padding(.leading)
                            }
                            .frame(maxHeight: 120)
                            .cardStyle()
                        }
                    }
                }
                .navigationBarTitle("项目列表", displayMode: .automatic)
                .navigationBarItems(
                    leading:
                        Button("左侧按钮") {
                            
                        },
                    trailing:
                        Button("右侧按钮") {
                            
                        }
                )
            }
            .tabItem {
                Image(systemName: "network")
                Text("Navigation")
            }
            
            // 选项卡 3：弹窗视图
            VStack(spacing: 50) {
                Button(action: {
                    showModal.toggle()
                }) {
                    Text("显示「长弹窗」")
                        .font(.headline)
                        .frame(width: 200)
                        .cardStyle()
                }.sheet(isPresented: $showModal) {
                    ShapeRelatedViews()
                }
                
                Button(action: {
                    showActionSheet.toggle()
                }) {
                    Text("显示「行动列表」")
                        .font(.headline)
                        .frame(width: 200)
                        .cardStyle()
                }
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(title: Text("要执行什么操作？"), message: Text("补充文字说明"), buttons: [
                        .default(Text("添加至收藏夹")) { },
                        .destructive(Text("删除项目")) {},
                        .cancel()
                    ])
                }
            }
            .tabItem {
                Image(systemName: "square.stack")
                Text("Modal")
            }
            
            // 选项卡 4：警告视图
            VStack(spacing: 50) {
                Button(action: {
                    showAlert.toggle()
                }) {
                    Text("显示「允许选择的警告」")
                        .font(.headline)
                        .frame(width: 200)
                        .cardStyle()
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("删除"), message: Text("此操作会永久移除该文件，你确定要继续吗？"),
                          primaryButton: .destructive(Text("是")),
                          secondaryButton: .default(Text("否")))
                }
                
                Button(action: {
                    showAlert2.toggle()
                }) {
                    Text("显示「通知型警告」")
                        .font(.headline)
                        .frame(width: 200)
                        .cardStyle()
                }
                .alert(isPresented: $showAlert2) {
                    Alert(title: Text("用时较长"), message: Text("执行该操作预计用时 5 分钟以上，请保持应用在前台状态。"),
                          dismissButton: .default(Text("我知道了")))
                }
            }
            .tabItem {
                Image(systemName: "exclamationmark.triangle")
                Text("Alert")
            }
        }
    }
    
    // 辅助函数，通过距离中点的位置来判断滑动视图中被选中的按钮
    func isCentered(distAbs: CGFloat) -> Bool {
        distAbs < (circleRadius / 2 + 5) ? true : false
    }
}

// Canvas 预览
struct HierarchyRelatedView_Previews: PreviewProvider {
    static var previews: some View {
        HierarchyRelatedView()
    }
}



