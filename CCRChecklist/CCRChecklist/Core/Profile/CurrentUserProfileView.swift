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
        @State var email = ""
        @State var password = ""
        
        VStack {
            HStack {
                TabHeaderView(title1: "Profile")
            }
            .ignoresSafeArea()
            
            
            VStack {
                
                Text("Hello, Andy!")
                    .font(.title)
                
                HStack{
                    Button("Edit") {
                        print("edit email")
                    }
                    
                    TextField("Change your email", text: $email)
                        .fontWeight(.semibold)
                        .autocapitalization(.none)
                        .modifier(TextFieldModifier())
                    
                }
                .padding()
                
                HStack {
                    Button("Edit") {
                        print("edit password")
                    }
                    SecureField("Change your password", text: $password)
                        .fontWeight(.semibold)
                        .modifier(TextFieldModifier())
                }
                .padding()

            }
            
            Spacer()
            
            VStack {
                Button("Logout") {
                        AuthService.shared.signout()
                }
                .modifier(PrimaryButtonModifier())
            }
            .padding()
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}

