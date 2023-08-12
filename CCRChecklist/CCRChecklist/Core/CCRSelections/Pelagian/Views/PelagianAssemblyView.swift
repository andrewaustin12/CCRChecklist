//
//  AssemblyView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianAssemblyView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isBatteryTestedChecked = false
    @State private var isAirCalibrationChecked = false
    @State private var isHoseChecked = false
    @State private var isMushroomValvesChecked = false
    @State private var isPConInhaleChecked = false
    @State private var isPConExhaleChecked = false
    @State private var isORingChecked = false
    @State private var isCo2PipeChecked = false
    @State private var isTandPChecked = false
    @State private var isUnitAssembledChecked = false
    
    @State private var cellOneReading = ""
    @State private var cellTwoReading = ""
    @State private var cellThreeReading = ""
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                Text("Assembly Checks")
                    .font(.title)
                    .bold()
                    .padding(.leading)

                Text("PELAGIAN CHECKLIST")
                    .bold()
                    .padding(.leading)
                
                ProgressBarView(progress: Double((350/5) * 2))
                    .padding(.leading)
                
                Form {
                    Section {
                        VStack {
                            Toggle(isOn: $isBatteryTestedChecked) {
                                Text("Is Battery Tested?")
                            }
                        }
                        
                        VStack {
                            Text("Air Calibration")
                                .font(.title3)
                            // TODO: CHANGE TO 3 NUM INPUTS FOR CELLS 1-3
                            Toggle(isOn: $isAirCalibrationChecked) {
                                VStack(alignment: .leading) {
        
                                    Text("Set to .209?")
                                }
                            }
                            HStack() {
                                Text("Cell 1")
                                Spacer()
                                TextField("PP02",
                                          value: $cellOneReading,
                                          formatter: NumberFormatter())
                                            .keyboardType(.numberPad)
                                            .frame(width: 80)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            }
                            HStack() {
                                Text("Cell 2")
                                Spacer()
                                TextField("PP02",
                                          value: $cellTwoReading,
                                          formatter: NumberFormatter())
                                            .keyboardType(.numberPad)
                                            .frame(width: 80)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            }
                            HStack() {
                                Text("Cell 3")
                                Spacer()
                                TextField("PP02",
                                          value: $cellThreeReading,
                                          formatter: NumberFormatter())
                                            .keyboardType(.numberPad)
                                            .frame(width: 80)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            }

                        }
                        
                        VStack() {
                            VStack {
                                Text("Loop Checks")
                                    .font(.title3)
    //                            Toggle(isOn: $isHoseChecked) {
    //                                Text("Hose Check")
    //                                    .fontWeight(.medium)
    //                            }
                                Toggle(isOn: $isMushroomValvesChecked) {
                                    Text("Hose Check Valves")
                                }
                                Toggle(isOn: $isPConInhaleChecked) {
                                    Text("P-Con inhale")
                                }
                                Toggle(isOn: $isPConExhaleChecked) {
                                    Text("P-Con exhale")
                                }
                                Toggle(isOn: $isORingChecked) {
                                    Text("O-Ring")
                                }
                                Toggle(isOn: $isCo2PipeChecked) {
                                    Text("CO2 pipe seated in socket")
                                }
                                Toggle(isOn: $isTandPChecked) {
                                    Text("Tees & plugs (twist & tug)")
                                }
                            }
                        }
                        
                        VStack() {
                            Toggle(isOn: $isUnitAssembledChecked) {
                                VStack(alignment: .leading) {
                                    Text("Are you satisfied with the assembly of your unit?")
                                }
                            }
                        }
                    } header: {
                        Text("Steps 7 - 16")
                    }
                }
            }
            
            HStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .modifier(SmallSecondaryButtonModifier())
                
                NavigationLink("Next") {
                    PelagianGasAndRegsView()
                }
                .modifier(SmallPrimaryButtonModifier())
            }

            .navigationBarBackButtonHidden(true)
        }
    }
}

struct PelagainAssemblyView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianAssemblyView()
    }
}
