//
//  ContentView.swift
//  SwiftUILoginApp
//
//  Created by Андрей Василевский on 4/19/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    var body: some View {
        VStack{
            Text("Hello, \(user.name)")
                .offset(x: 0, y: 80)
            Text("Hello, world!")
                .offset(x: 0, y: 180)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Start")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            })
            .frame(width: 200, height: 60)
            .background(Color.blue)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1))
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("LogOut")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            })
            .frame(width: 200, height: 60)
            .background(Color.red)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
