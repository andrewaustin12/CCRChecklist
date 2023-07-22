//
//  LoginView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {

            VStack {
                
                AuthHeaderView(title1: "Hello.", title2: "Welcome Back.")
                
                VStack {
                    

                    
                    // logo image
                    Image("instagram-logo-black")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                    
                    // text fields
                    VStack {
                        TextField("Enter your email", text: $email)
                            .fontWeight(.semibold)
                            .autocapitalization(.none)
                            .modifier(TextFieldModifier())
                        
                        SecureField("Enter your password", text: $password)
                            .fontWeight(.semibold)
                            .modifier(TextFieldModifier())
                        
                    }
                    
                    Button {
                        print("Show forgot password")
                    } label: {
                        Text("Forgot Password")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.trailing, 28)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
                    
                    Button {
                        print("Login")
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(8)
                        
                    }
                    .padding(.vertical)
                    .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
                    
                    
                    Spacer()
                    
                    Divider()
                    
                    NavigationLink {
                        AddEmailView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 3) {
                            Text("Don't have an account?")
                            
                            Text("Sign up")
                                .fontWeight(.semibold)
                                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
                        }
                        .font(.footnote)
                    }
                    .padding(.vertical, 16)
                }
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

