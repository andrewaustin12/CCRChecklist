//
//  MainTabView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView()
                .onAppear{
                    selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            
            BuildHistoryView()
                .onAppear{
                    selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            NotesView()
                .onAppear{
                    selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "plus.square")
                }.tag(2)
            
//            CurrentUserProfileView(user: User.MOCK_USERS[0])
//                .onAppear{
//                    selectedIndex = 0
//                }
//                .tabItem{
//                    Image(systemName: "person")
//                }.tag(4)
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
