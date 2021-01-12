//
//  StateAndBinding.swift
//  SwiftUIViews
//
//  Created by Legolas on 2021-01-04.
//

import SwiftUI


struct ViewOne: View {
    @State var userInput = ""
    
    var body: some View {
        ViewTwo(userInput: $userInput)
    }
}

struct ViewTwo: View {
    @Binding var userInput: String
    
    var body: some View {
        TextField("输入用户名", text: $userInput)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}


struct StateAndBinding_Previews: PreviewProvider {
    static var previews: some View {
        ViewOne()
    }
}




