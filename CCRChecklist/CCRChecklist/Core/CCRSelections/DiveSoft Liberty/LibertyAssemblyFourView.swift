//
//  LibertyAssemblyFourView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/4/23.
//

import SwiftUI

struct LibertyAssemblyFourView: View {
    @State private var isCounterLungsFittedChecked = false
    @State private var isDumpValveChecked = false
    @State private var isDirectionalFlowChecked = false
    @State private var isHosesConnectedHeadChecked = false
    @State private var isHosesConnectedCounterlungChecked = false
    
    
    var body: some View {
        VStack {
            Text("DIVESOFT LIBERTY ASSEMBLY CHECKLIST")
            Text("BMCL+BOV")
                .font(.title)
                .bold()
                .foregroundColor(Color.red)
            HStack{
                Text("Steps 11 - 15")
                    .bold()
            }
            
            VStack {
                Form {
                    VStack {
                        Toggle(isOn: $isCounterLungsFittedChecked) {
                            Text("Counterlungs fitted to backplate and secured")
                                .fontWeight(.medium)
                        }
                    }
                    
                    VStack {
                        Toggle(isOn: $isDumpValveChecked) {
                            Text("Dump valve connected; \n opening cord available")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isDirectionalFlowChecked) {
                            Text("Directional flow test ok ")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isHosesConnectedHeadChecked) {
                            Text("Corrugated hoses connected to head")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isHosesConnectedCounterlungChecked) {
                            Text("Corrugated hoses connected to counterlungs")
                                .fontWeight(.medium)
                        }
                    }
                }
            }
            .font(.title3)
            
            Spacer()
            
            HStack {
                NavigationLink{
                    LibertyAssemblyThreeView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    LibertyAssemblyFiveView()
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

struct LibertyAssemblyFourView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblyFourView()
    }
}
