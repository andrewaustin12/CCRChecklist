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
            
            VStack(alignment: .leading) {
                
                LibertyBMCLHeaderView()
                
                ProgressBarView(progress: Double((350/8) * 3))
                    .padding(.leading)
                
                Form {
                    Section {
                        VStack {
                            Toggle(isOn: $isCounterLungsFittedChecked) {
                                Text("Counterlungs fitted to backplate and secured")
                            }
                        }
                        
                        VStack {
                            Toggle(isOn: $isDumpValveChecked) {
                                Text("Dump valve connected; \n opening cord available")
                            }
                        }
                        VStack {
                            Toggle(isOn: $isDirectionalFlowChecked) {
                                Text("Directional flow test ok ")
                            }
                        }
                        VStack {
                            Toggle(isOn: $isHosesConnectedHeadChecked) {
                                Text("Corrugated hoses connected to head")
                            }
                        }
                        VStack {
                            Toggle(isOn: $isHosesConnectedCounterlungChecked) {
                                Text("Corrugated hoses connected to counterlungs")
                            }
                        }
                    } header: {
                        Text("Steps 11 - 15")
                    }

                }
            }
            
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
