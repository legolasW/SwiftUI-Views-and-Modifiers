//
//  ReactedView.swift
//  SwiftUIViews
//
//  Created by Legolas on 2021-01-10.
//

import SwiftUI

struct ReactedView: View {
    @StateObject var data = Data()
    
    var body: some View {
        SubViewOne()
            .environmentObject(data)
    }
}

struct SubViewOne: View {
    var body: some View {
        SubViewTwo()
    }
}

struct SubViewTwo: View {
    var body: some View {
        SubViewThree()
    }
}

struct SubViewThree: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        Text(data.article)
    }
}



struct ReactedView_Previews: PreviewProvider {
    static var previews: some View {
        ReactedView(data: Data())
    }
}













