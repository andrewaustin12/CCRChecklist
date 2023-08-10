//
//  LibertyAssemblyEightView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/4/23.
//

import SwiftUI

struct LibertyAssemblyEightView: View {
    @State private var isCentralCanisterChecked = false
    @State private var isBailoutTankAnalyzedChecked = false
    @State private var isBailoutTankGasPressureChecked = false
    @State private var isLightAndDrySuitChecked = false
    @State private var bailoutTankGas = ""
    @State private var libertyDiluentPressure = ""
    
    var body: some View {
        VStack {
            Text("DIVESOFT LIBERTY ASSEMBLY CHECKLIST")
            Text("BMCL+BOV")
                .font(.title)
                .bold()
                .foregroundColor(Color.red)
            HStack{
                Text("Steps 31 - 34")
                    .bold()
            }
            
            VStack {
                Form {
                    VStack {
                        Toggle(isOn: $isCentralCanisterChecked) {
                            Text("Central Canister strap fastened")
                                .fontWeight(.medium)
                        }
                    }
                    
                    VStack{
                        HStack {
                            Toggle(isOn: $isBailoutTankAnalyzedChecked) {
                                Text("Bailout tank analyzed and assembled")
                                    .fontWeight(.medium)
                            }
                        }
                            
                    
                    }
                    VStack {
                        HStack {
                            Toggle(isOn: $isBailoutTankGasPressureChecked) {
                                Text("Bailout tank gas and pressure ")
                                    .fontWeight(.medium)
                            }
                        }
                        HStack {
                            Text("GAS: ")
                            Spacer()
                            TextField("PPO2",
                                      value: $bailoutTankGas,
                                      formatter: NumberFormatter())
                                        .keyboardType(.numberPad)
                                        .frame(width: 80)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        HStack {
                            Text("PRESSURE: ")
                            Spacer()
                            TextField("BAR",
                                      value: $libertyDiluentPressure,
                                      formatter: NumberFormatter())
                                        .keyboardType(.numberPad)
                                        .frame(width: 80)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                    HStack {
                        Toggle(isOn: $isLightAndDrySuitChecked) {
                            Text("Diving light canister and dry suit supply fitted (if needed)")
                                .fontWeight(.medium)
                        }
                    }

                    
            
                }
            }
            .font(.title3)
            
            Spacer()
            
            HStack {
                NavigationLink{
                    LibertyAssemblySevenView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    LibertyAssemblySummaryView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Finished")
                        .modifier(SmallPrimaryButtonModifier())
                }
            }
            .padding()
        }
    }
}

struct LibertyAssemblyEightView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblyEightView()
    }
}
