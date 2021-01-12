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
        Text(data.article)
    }
}



struct ReactedView_Previews: PreviewProvider {
    static var previews: some View {
        ReactedView(data: Data())
    }
}













