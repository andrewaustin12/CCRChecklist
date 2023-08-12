//
//  LibertyAssemblySixView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/4/23.
//

import SwiftUI

struct LibertyAssemblySixView: View {
    @State private var isOxygenTankOpenedChecked = false
    @State private var isDiluentTankOpenedChecked = false
    @State private var libertyOxygenPressure = ""
    @State private var libertyDiluentPressure = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                
                LibertyBMCLHeaderView()
                
                ProgressBarView(progress: Double((350/8) * 5))
                    .padding(.leading)
                
                Form {
                    Section {
                        VStack{
                            HStack {
                                Toggle(isOn: $isOxygenTankOpenedChecked) {
                                    Text("Oxygen tank OPENED")
                                }
                            }
                            HStack {
                                Text("PRESSURE: ")
                                Spacer()
                                TextField("BAR",
                                          value: $libertyOxygenPressure,
                                          formatter: NumberFormatter())
                                            .keyboardType(.numberPad)
                                            .frame(width: 80)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            }
                        }
                        VStack{
                            HStack {
                                Toggle(isOn: $isDiluentTankOpenedChecked) {
                                    Text("Diluent tank OPENED")
                                }
                            }
                            HStack {
                                Text("PRESSURE:")
                                Spacer()
                                TextField("BAR",
                                          value: $libertyDiluentPressure,
                                          formatter: NumberFormatter())
                                            .keyboardType(.numberPad)
                                            .frame(width: 80)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            }
                        }
                    } header: {
                        Text("Steps 22 - 25")
                    }
                }
            }
            
            HStack {
                NavigationLink{
                    LibertyAssemblyFiveView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    LibertyAssemblySevenView()
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

struct LibertyAssemblySixView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblySixView()
    }
}
