//
//  CurrentUserProfileView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/23/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
//    let user: User
//
//    var posts: [Post] {
//        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
//    }
    
    var body: some View {
        NavigationStack {
            HStack {
                TabHeaderView(title1: "Profile")
            }
            .ignoresSafeArea()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signout()
                    } label: {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
            }
            Spacer()
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}

