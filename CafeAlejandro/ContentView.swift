//
//  ContentView.swift
//  CafeAlejandro
//
//  Created by Erik Arvedson on 2023-11-27.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonText = "Order"
    var body: some View {
        ZStack {
            Image("background")
            VStack {
                Spacer()
                VStack {
                    Text("Welcome to")
                        .font(.title)
                        .padding(EdgeInsets(top: 20, leading: 40, bottom: 0, trailing: 40))
                        .foregroundColor(.white)
                    Text("Café Alejandro!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 0, leading: 40, bottom: 20, trailing: 40))
                }.background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.black))
                    .padding(EdgeInsets(top: 20, leading: 40, bottom: 60, trailing: 40))
                CircleImage()
                Spacer()
                /*Button(action: {
                            buttonText = "Button tapped!"
                        }) {
                            Text(buttonText)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }*/
            }
        }
        
    }
}

#Preview {
    ContentView()
}
