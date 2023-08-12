//
//  LibertyAssemblyTwoView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/30/23.
//

import SwiftUI

struct LibertyAssemblyTwoView: View {
    @State private var isLibertyOringsChecked = false
    @State private var isLibertyHeadFittingChecked = false
    @State private var isLibertyHeadPlacedChecked = false
    @State private var isLibertyO2ConnectionChecked = false
    
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                LibertyBMCLHeaderView()
                ProgressBarView(progress: Double((350/8) * 1))
                    .padding(.leading)
                
                Form {
                    Section {
                        Toggle(isOn: $isLibertyOringsChecked) {
                            Text("Head O-rings clean, well lubed and not damaged")
                        }
                        
                        Toggle(isOn: $isLibertyHeadFittingChecked) {
                            Text("Head fits easily to canister. No visible gap between canister and head.")
                        }
                        
                        Toggle(isOn: $isLibertyHeadPlacedChecked) {
                            Text(" Canister with head placed in frame lock is secured in backplate")
                        }
                        
                        Toggle(isOn: $isLibertyO2ConnectionChecked) {
                            Text("Oxygen supply hose connected to head")
                        }
                    } header: {
                        Text("Steps 6 - 9")
                    }

                    
                }
            }
            
            HStack {
                NavigationLink{
                    LibertyAssemblyTwoView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    LibertyAssemblyThreeView()
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

struct LibertyAssemblyTwoView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblyTwoView()
    }
}
