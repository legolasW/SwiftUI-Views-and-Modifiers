//
//  GestureRelatedModifiers.swift
//  SwiftUIViews
//
//  Created by Legolas on 12/16/20.
//

import SwiftUI


struct GestureRelatedModifiers: View {
    @State var magnifyBy = CGFloat(1.0)
    @State var angle = Angle(degrees: 0.0)

    var body: some View {
        let magnification =
            MagnificationGesture()
                .onChanged { magnifyBy in
                    self.magnifyBy = magnifyBy
                }
        
        let rotation =
            RotationGesture()
                .onChanged { angle in
                    self.angle = angle
                }
        
        HStack {
            Image("6")
                .gesture(rotation)
                .rotationEffect(angle)
        }
        .highPriorityGesture(magnification)
        .scaleEffect(magnifyBy)
    }
}


/*
 @State var currentGesture = "无"
 @State var longPressed = false
 
 var body: some View {
     VStack {
         Text("识别出的手势：\(currentGesture)")
             .font(.largeTitle)
             .bold()
         
         Divider().padding()
         
         RoundedRectangle(cornerRadius: 25.0)
             .aspectRatio(1, contentMode: .fit)
             .foregroundColor(longPressed ? .orange : .blue)
             .padding()
             .onLongPressGesture {
                 currentGesture = "长按"
                 longPressed.toggle()
             }
     }
 }
 
 
 @State var currentGesture = "无"
 @State var imageNames = ["hare", "tortoise", "cloud", "moon", "wind"]
 @State var currentImageName = "questionmark"
 
 
 var body: some View {
     VStack {
         Text("识别出的手势：\(currentGesture)")
             .font(.largeTitle)
             .bold()
         
         Divider().padding()
         Spacer()
         
         ZStack {
             RoundedRectangle(cornerRadius: 25.0)
                 .aspectRatio(1, contentMode: .fit)
                 .foregroundColor(.white)
                 .shadow(radius: 10)
             Image(systemName: currentImageName)
                 .resizable()
                 .scaleEffect(0.3)
                 .scaledToFit()
         }
         .padding()
         .onTapGesture {
             currentImageName = imageNames.randomElement()!
             currentGesture = "轻点"
         }
         Spacer()
     }
 }
 
 // 缩放
 @GestureState var magnifyBy = CGFloat(1.0)

 var magnification: some Gesture {
     MagnificationGesture()
         .updating($magnifyBy) { currentState, gestureState, transaction in
             gestureState = currentState
         }
 }

 var body: some View {
     Circle()
         .foregroundColor(.blue)
         .frame(width: 200 * magnifyBy,
                height: 200 * magnifyBy)
         .gesture(magnification)
 }
 
 
 @State var angle = Angle(degrees: 0.0)

 var rotation: some Gesture {
     RotationGesture()
         .onChanged { angle in
             self.angle = angle
         }
 }

 var body: some View {
     Rectangle()
         .foregroundColor(.blue)
         .frame(width: 200, height: 200)
         .rotationEffect(angle)
         .gesture(rotation)
 }
 
 
 
 @State var isDragging = false

 var drag: some Gesture {
     DragGesture()
         .onChanged {_ in isDragging = true }
         .onEnded { _ in isDragging = false }
 }

 var body: some View {
     Circle()
         .fill(isDragging ? Color.orange : Color.blue)
         .frame(width: 200, height: 200)
         .gesture(drag)
 }
 
 // 自定义手势
 @State var magnifyBy = CGFloat(1.0)
 @State var angle = Angle(degrees: 0.0)

 var body: some View {
     let magnification =
         MagnificationGesture()
             .onChanged { magnifyBy in
                 self.magnifyBy = magnifyBy
             }
     
     let rotation =
         RotationGesture()
             .onChanged { angle in
                 self.angle = angle
             }
     
     let customGesture = magnification.simultaneously(with: rotation)
     
     HStack {
         Image("6")
             .gesture(customGesture)
             .rotationEffect(angle)
             .scaleEffect(magnifyBy)
             .animation(.easeInOut)
     }
 }
  
 
 */







struct GestureRelatedModifiers_Previews: PreviewProvider {
    static var previews: some View {
        GestureRelatedModifiers()
    }
}
