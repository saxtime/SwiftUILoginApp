//
//  ContentView.swift
//  SwiftUILoginApp
//
//  Created by Андрей Василевский on 4/19/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    
    var body: some View {
        VStack{
            Text("Hello, \(user.user.name)")
                .offset(x: 0, y: 80)
            Text("\(timer.counter)")
                .offset(x: 0, y: 180)
            Spacer()
            
            Button(action: timer.startTimer, label: {
                Text("\(timer.buttonTitle)")
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
            
            Button(action: {
                DataManager.shared.clear(userManager: user)
            }, label: {
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
