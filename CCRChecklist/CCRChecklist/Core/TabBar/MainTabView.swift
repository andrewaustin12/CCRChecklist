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
                    Image(systemName: "clock")
                }.tag(1)
            ChecklistsView()
                .onAppear{
                    selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "checklist.unchecked")
                }.tag(2)
            
            NotesView()
                .onAppear{
                    selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "note.text")
                }.tag(3)
            CurrentUserProfileView()
                .onAppear{
                    selectedIndex = 4
                }
                .tabItem{
                    Image(systemName: "person")
                }.tag(4)

            
//            CurrentUserProfileView(user: User.MOCK_USERS[0])
//                .onAppear{
//                    selectedIndex = 0
//                }
//                .tabItem{
//                    Image(systemName: "person")
//                }.tag(4)
        }
        .accentColor(.black)
        .navigationBarBackButtonHidden(true)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
