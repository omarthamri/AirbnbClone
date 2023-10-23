//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by omar thamri on 23/10/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Explore")
                    }
                }
            WhishlistView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("WhistList")
                    }
                }
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
        }
    }
}

#Preview {
    MainTabView()
}
