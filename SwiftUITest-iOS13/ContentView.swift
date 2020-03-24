//
//  ContentView.swift
//  SwiftUITest-iOS13
//
//  Created by Dennis Nesanoff on 24.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.20, green:0.29, blue:0.37, opacity:1.00)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Dennis Nesanoff")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("iOS Developer")
                    .font(Font.system(size: 20))
                    .foregroundColor(Color.white)
                
                Divider()
                
                InfoView(text: "+ 7 977 114 13 45", imageName: "phone.fill")
                InfoView(text: "nesanoff@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
