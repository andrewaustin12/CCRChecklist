//
//  CanisterView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWScrubberView: View {
    @State private var isCanisterChecked = false
    @State private var isCanisterInspectedChecked = false
    @State private var isScreenChecked = false
    @State private var isCanisterAlignedChecked = false
    @State private var isStacktimeChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                Text("Scrubbers")
                    .font(.title)
                    .bold()
                    .padding(.leading)
                    
                Text("SIDEWINDER CHECKLIST")
                    .bold()
                    .padding(.leading)
                    
                ProgressBarView(progress: Double((350/8) * 1))
                    .padding(.leading)
                
                Form {
                    Section {
                        Toggle(isOn: $isCanisterChecked) {
                            Text("Fill and pack each canister with absorbent to inner line")
                        }
                        
                        Toggle(isOn: $isCanisterInspectedChecked) {
                            Text("Inspect, clean and lubricate Canister O-Rings as needed")
                        }
                        
                        Toggle(isOn: $isScreenChecked) {
                            Text("Place Screens in canisters")
                        }
                        
                        Toggle(isOn: $isCanisterAlignedChecked) {
                            Text("Attach each cannister head ensuring proper alignment. Make sure they are on correct cannisters")
                        }
                        
                        Toggle(isOn: $isStacktimeChecked) {
                            Text("Reset stacktime (optional)")
                        }
                    } header: {
                        Text("Steps 3-7")
                    }

                }

            }
            
            Spacer()
            
            HStack {
                NavigationLink{
                    SWComputerView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                
                NavigationLink{
                    SWCounterLungView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .modifier(SmallPrimaryButtonModifier())
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding()

        }
    }
}

struct SWScrubberView_Previews: PreviewProvider {
    static var previews: some View {
        SWScrubberView()
    }
}
