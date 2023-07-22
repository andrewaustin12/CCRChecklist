//
//  WarningView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/23/23.
//

import SwiftUI

struct WarningView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    AuthHeaderView(title1: "The CCR", title2: "Checklist")
                }
                .ignoresSafeArea()
                
                    
                VStack {
                    Text("WARNING")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.red)
                        .padding(.bottom)
                    
                    Text("This app is not a replacement for professional CCR training. By using this app I agree that I have had proper training on how to assemble my rebreather from a certified instructor. I agree that I am solely responsible for the correct assembly of my rebreather.")
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.red)
                        
                }
                
                Spacer()
                    
                NavigationLink {
                    ContentView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("I Agree")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                
                Spacer()
            }
        }
        
    }
}

struct WarningView_Previews: PreviewProvider {
    static var previews: some View {
        WarningView()
    }
}
