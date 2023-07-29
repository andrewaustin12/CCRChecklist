//
//  LoginView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {

            VStack {
                
                AuthHeaderView(title1: "The CCR", title2: "Checklist")
                
                VStack {                 
                    // logo image
                    Image("")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                    
                    // text fields
                    VStack(spacing: 40) {
                        CustomInputField(imageName: "envelope",
                                         placeholderText: "Email",
                                         text: $viewModel.email)
                        
                        CustomInputField(imageName: "lock",
                                         placeholderText: "Password",
                                         isSecureField: true,
                                         text: $viewModel.password)
                    }
                    .padding(.horizontal, 22)
                    .padding(.top, 44)
                    
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
                        Task { try await viewModel.signin() }
                    } label: {
                        Text("Login")
                            .font(.title2)
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

