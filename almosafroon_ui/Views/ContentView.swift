//
//  ContentView.swift
//  almosafroon_ui
//
//  Created by Ahmed Almohammed on 19/04/2022.
//

import SwiftUI

// this is the view responsible for displaying the tabviews along with their respected views.
// As requested, only the profile view is implemented, thats why all other views are Texts except the Profile View.
struct ContentView: View {
    var body: some View {
        // using tabview for the bottom navigation bar
        ZStack {
            TabView{
                    Text("Home")
                        .tabItem {
                            Image(systemName: "house")
                        }
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person")
                        }
                    Text("Search")
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }
                    Text("Message")
                        .tabItem {
                            Image(systemName: "message")
                        }
                    Text("Settings")
                        .tabItem {
                            Image(systemName: "gear")
                        }
                }
                .onAppear(){
                    UITabBar.appearance().backgroundColor = .white
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    AddPostButton()
                }
                .padding(.horizontal, 10)
            }
            .padding(.vertical, 60)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
