//
//  PelagianSummaryView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianSummaryView: View {
    @State private var signature = ""
    var body: some View {
        VStack {
//            HStack{TabHeaderView(title1: "Pelagian Checklist")}
//                .ignoresSafeArea()
            ScrollView {
                
                Text("Signature Required")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("I confirm all of the information entered is true and accurate and as a certified diver I am happy to dive on this unit. (Please type your full name)")
                    .font(.headline)
                    .padding()
                    .multilineTextAlignment(.center)
                
                TextField("signature", text: $signature)
                    .frame(width: 360, height: 44)
                    .font(.title2)
                    .underline()
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    
                
            }
            
            VStack {
                NavigationLink("Submit", destination: {
                    HomeView()
                })
                .modifier(PrimaryButtonModifier())
            }
            .navigationTitle("Summary of Build")
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

struct PelagianSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianSummaryView()
    }
}
