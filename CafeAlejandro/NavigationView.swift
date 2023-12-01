//
//  NavigationView.swift
//  CafeAlejandro
//
//  Created by Erik Arvedson on 2023-11-28.
//

import SwiftUI

struct RedBorderedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .border(Color.red)
            .foregroundColor(.black)
            .tint(.red)
    }
}

struct NavigationView: View {
    var body: some View {
        TabView( ) {
            ContentView().tabItem { Label("Home", systemImage: "house")}.tag(1)
            MoodSelectorView().tabItem { Label("Order", systemImage: "cup.and.saucer") }.tag(2)
            MemberView().tabItem { Label("Account", systemImage: "person.crop.circle") }.tag(3)
        }.tint(.white)
//        .labelStyle(RedBorderedLabelStyle())
        .onAppear() {
            let standardAppearance = UITabBarAppearance()
            standardAppearance.backgroundColor = UIColor(Color.gray)
            standardAppearance.shadowColor = UIColor(Color.black)
//                standardAppearance.backgroundImage = UIImage(named: "custom_bg")
            
            let itemAppearance = UITabBarItemAppearance()
            itemAppearance.normal.iconColor = UIColor(Color.gray)
            itemAppearance.selected.iconColor = UIColor(Color.white)
            standardAppearance.inlineLayoutAppearance = itemAppearance
            standardAppearance.stackedLayoutAppearance = itemAppearance
            standardAppearance.compactInlineLayoutAppearance = itemAppearance
            UITabBar.appearance().standardAppearance = standardAppearance
            UITabBar.appearance().backgroundColor = .black;
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}



#Preview {
    NavigationView()
}
