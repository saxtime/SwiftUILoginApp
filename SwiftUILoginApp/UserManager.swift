//
//  UserManager.swift
//  SwiftUILoginApp
//
//  Created by Андрей Василевский on 4/19/22.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
