//
//  LibertyAssemblyFiveView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/4/23.
//

import SwiftUI

struct LibertyAssemblyFiveView: View {
    @State private var isOxygenHoseConnectedChecked = false
    @State private var isDiluentHoseConnectedChecked = false
    @State private var isRegLPHoseConnectedChecked = false
    @State private var isHudDisplayConnectedChecked = false
    @State private var isSystemLeaksChecked = false
    @State private var isHandsetsNoFailureChecked = false
    
    
    var body: some View {
        VStack {
            Text("DIVESOFT LIBERTY ASSEMBLY CHECKLIST")
            Text("BMCL+BOV")
                .font(.title)
                .bold()
                .foregroundColor(Color.red)
            HStack{
                Text("Steps 16 - 21")
                    .bold()
            }
            
            VStack {
                Form {
                    VStack {
                        Toggle(isOn: $isOxygenHoseConnectedChecked) {
                            Text("Oxygen LP hose connected to oxygen MAV (green hose to right green MAV)")
                                .fontWeight(.medium)
                        }
                    }
                    
                    VStack {
                        Toggle(isOn: $isDiluentHoseConnectedChecked) {
                            Text("Diluent LP hose connected to diluent MAV (black hose to left black MAV)")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isRegLPHoseConnectedChecked) {
                            Text("Regulator LP hose connected to BOV 2nd stage")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isHudDisplayConnectedChecked) {
                            Text("HUD display connected to BOV")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isSystemLeaksChecked) {
                            Text("LP and HP system check for leaks")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isHandsetsNoFailureChecked) {
                            Text("Pre-dive check on handsets done with no failure")
                                .fontWeight(.medium)
                        }
                    }
                }
            }
            .font(.title3)
            
            Spacer()
            
            HStack {
                NavigationLink{
                    LibertyAssemblyFourView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    LibertyAssemblySixView()
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

struct LibertyAssemblyFiveView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblyFiveView()
    }
}
