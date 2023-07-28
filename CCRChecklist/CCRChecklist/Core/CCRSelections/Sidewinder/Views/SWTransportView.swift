//
//  SWTransportView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWTransportView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Transport")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Text("Ensure the DSV is closed")
                    
                    Text("Ensure O2 tank is closed")
                    
                    Text("Ensure Computer is cliped and secured")
                    
                    Text("(Optional) If O2 tank is detached for transport ensure O2 1st stage is secured.")
    
                }
            }
            Spacer()
            
            HStack {
                NavigationLink{
                    SWPositiveCheckView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                
                NavigationLink{
                    SWChecklistSummaryView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .modifier(SmallPrimaryButtonModifier())
                }
            }
            .padding()
        }
    }
}

struct SWTransportView_Previews: PreviewProvider {
    static var previews: some View {
        SWTransportView()
    }
}
