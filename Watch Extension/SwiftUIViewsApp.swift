//
//  SwiftUIViewsApp.swift
//  Watch Extension
//
//  Created by Legolas on 11/30/20.
//

import SwiftUI

@main
struct SwiftUIViewsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
