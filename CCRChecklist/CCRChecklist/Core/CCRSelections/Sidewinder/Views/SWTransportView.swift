//
//  SWTransportView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWTransportView: View {
    @State private var isDSVClosedChecked = false
    @State private var isO2TankClosedChecked = false
    @State private var isComputerClippedChecked = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Transport")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Toggle(isOn: $isDSVClosedChecked) {
                        Text("Ensure the DSV is closed")
                    }
                    
                    Toggle(isOn: $isO2TankClosedChecked) {
                        Text("Ensure O2 tank is closed")
                    }
                    
                    Toggle(isOn: $isComputerClippedChecked) {
                        Text("Ensure Computer is cliped and secured")
                    }
                    
                    Text("(Optional) If O2 tank is detached for transport ensure O2 1st stage is secured.")
                }
                .font(.title3)
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
