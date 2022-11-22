//
//  ContentView.swift
//  CarsomeDemo
//
//  Created by 王海龙 on 2022/11/13.
//

import SwiftUI


//some View  不透明类型
struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem{
                Label("HOME", systemImage: "person")
            }
            BrowseCarView().tabItem {
                Label("BROWSECARS", systemImage: "book")
            }
            SellCarView().tabItem {
                Label("SellCar", systemImage: "star")
            }
            AccountView().tabItem {
                Label("Account", systemImage: "hand.thumbsup")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
