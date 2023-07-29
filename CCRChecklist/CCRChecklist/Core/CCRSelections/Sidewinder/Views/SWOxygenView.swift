//
//  SWOxygenView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWOxygenView: View {
    @State private var isO2AnalyzedChecked = false
    @State private var isO2PressureChecked = false
    @State private var isO2MountedChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Oxygen")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Toggle(isOn: $isO2AnalyzedChecked) {
                        Text("Analyze Oxygen tank")
                    }
                    
                    
                    Toggle(isOn: $isO2PressureChecked) {
                        Text("Pressure check Oxygen tank")
                    }
                    
                    
                    Toggle(isOn: $isO2MountedChecked) {
                        Text("Mount 02, Properly Route hose and 1st stage. LEAVE TANK OFF.")
                    }
                }
                .font(.title3)
                
            }
            Spacer()
            
            HStack {
                NavigationLink{
                    SWOxygenView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                
                NavigationLink{
                    SWFlushView()
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

struct SWOxygenView_Previews: PreviewProvider {
    static var previews: some View {
        SWOxygenView()
    }
}
