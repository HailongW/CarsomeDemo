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
                Label("SellCar", image: "star")
            }
            AccountView().tabItem {
                Label("Account", image: "hand.thumbsup")
            }
        }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
