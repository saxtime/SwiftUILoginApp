//
//  SwiftUILoginAppApp.swift
//  SwiftUILoginApp
//
//  Created by Андрей Василевский on 4/19/22.
//

import SwiftUI

@main
struct SwiftUILoginAppApp: App {
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            FirstView()
                .environmentObject(user)
        }
    }
}
