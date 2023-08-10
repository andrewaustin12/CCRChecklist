//
//  LibertyAssemblyOneView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/30/23.
//

import SwiftUI

struct LibertyAssemblyOneView: View {
    @State private var isWaterTrapChecked = false
    @State private var isScrubberFilledChecked = false
    @State private var isScrubberInstalledChecked = false
    @State private var isSafetyPlugsChecked = false
    
    var body: some View {
        VStack{
            Text("DIVESOFT LIBERTY ASSEMBLY CHECKLIST")
            Text("BMCL+BOV")
                .font(.title)
                .bold()
                .foregroundColor(Color.red)
            HStack{
                Text("Steps 1 - 5")
                    .bold()
            }
            Form {
                Toggle(isOn: $isWaterTrapChecked) {
                    Text("Water trap present / fitted")
                }
                
                Toggle(isOn: $isScrubberFilledChecked) {
                    Text("Scrubber filled – residual time is sufficient for planned dive (note dived hours)")
                }
                
                Toggle(isOn: $isScrubberInstalledChecked) {
                    Text(" Scrubber is installed inside the canister")
                }
                
                Toggle(isOn: $isSafetyPlugsChecked) {
                    Text("Safety plugs (jumpers) connected to batteries")
                }
                Toggle(isOn: $isSafetyPlugsChecked) {
                    Text("Safety plugs (jumpers) connected to batteries")
                }
            }
            .font(.title3)
            
            Spacer()
            
            HStack {
                NavigationLink{
                    HomeView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    LibertyAssemblyTwoView()
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

struct LibertyAssemblyOneView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblyOneView()
    }
}
