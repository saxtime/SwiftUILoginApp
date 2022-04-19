//
//  FirstView.swift
//  SwiftUILoginApp
//
//  Created by Андрей Василевский on 4/19/22.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        if user.isRegister {
            ContentView()
        } else {
            LoginView()
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
