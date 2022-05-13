//
//  UserManager.swift
//  SwiftUILoginApp
//
//  Created by Андрей Василевский on 4/19/22.
//

import SwiftUI


class UserManager: ObservableObject {
    @Published var user = User()
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var isRegister = false
    var name = ""
}
