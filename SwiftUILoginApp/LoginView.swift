//
//  LoginView.swift
//  SwiftUILoginApp
//
//  Created by Андрей Василевский on 4/19/22.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var user: UserManager
    @AppStorage("isRegister") private var name = ""
//    @AppStorage("isRegister") var isRegister = false
    
    var body: some View {
        VStack{
            HStack{
                Text(" ")
                TextField("Type your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(name.count > 2 ? .green : .red )
            }
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }
            .foregroundColor(name.count > 2 ? .blue : .gray )
        }
        .padding()
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.user.name = name
            user.user.isRegister.toggle()
        }
    }
}





struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
