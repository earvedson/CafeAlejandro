//
//  MoodSelectorView.swift
//  CafeAlejandro
//
//  Created by Erik Arvedson on 2023-11-30.
//

import SwiftUI

struct MoodSelectorView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("background")
                VStack {
                    Spacer()
                    VStack {
                        Text("How are we feeling today?")
                            .font(.title)
                            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                            .foregroundColor(.white)
                    }
                    .background(RoundedRectangle(cornerRadius: 25).fill(.black))
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 40, trailing: 0))
                    HStack {
                        NavigationLink {
                            AssortmentView(selection: 1)
                        } label: {
                            VStack {
                                Image("kewl")
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                    .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 1) }
                                    .shadow(color: .gray, radius: 7 )
                                Text("Bien")
                                    .foregroundColor(.black)
                                    .font(.subheadline)
                            }.padding()
                        }
                        NavigationLink {
                            AssortmentView(selection: 2)
                        } label: {
                            VStack {
                                Image("dontknow")
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                    .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 1) }
                                    .shadow(color: .gray, radius: 7 )
                                Text("Así así")
                                    .foregroundColor(.black)
                                    .font(.subheadline)
                                
                            }.padding()
                        }
                        NavigationLink {
                            AssortmentView(selection: 3)
                        } label: {
                            VStack {
                                Image("cat")
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                    .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 1) }
                                    .shadow(color: .gray, radius: 7 )
                                Text("Fatal")
                                    .foregroundColor(.black)
                                    .font(.subheadline)
                                
                            }.padding()
                        }
                    }
                    
                    Spacer()
                }
                
            }
            
        }.tint(.black)
    }
}

#Preview {
    MoodSelectorView()
}
