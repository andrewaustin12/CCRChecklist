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
    
    var body: some View {
        VStack {
            Text("Assembly Checks")
                .font(.title)
            HStack{
                Text("PELAGIAN CHECKLIST")
                    .bold()
            }
            
            Form {
                Section {
                    VStack {
                        Toggle(isOn: $isBatteryTestedChecked) {
                            Text("Is Battery Tested?")
                                .fontWeight(.medium)
                        }

                    }
                    
                    VStack() {
                        // TODO: CHANGE TO 3 NUM INPUTS FOR CELLS 1-3
                        Toggle(isOn: $isAirCalibrationChecked) {
                            VStack(alignment: .leading) {
                                Text("Air Calibration")
                                    .fontWeight(.medium)
                                Text("Set to .209?")
                                    .fontWeight(.medium)
                            }
                        }

                    }
                    
                    VStack() {
                        VStack {
                            Text("Loop Checks")
//                            Toggle(isOn: $isHoseChecked) {
//                                Text("Hose Check")
//                                    .fontWeight(.medium)
//                            }
                            Toggle(isOn: $isMushroomValvesChecked) {
                                Text("Hose Check Valves")
                                    .fontWeight(.medium)
                            }
                            Toggle(isOn: $isPConInhaleChecked) {
                                Text("P-Con inhale")
                                    .fontWeight(.medium)
                            }
                            Toggle(isOn: $isPConExhaleChecked) {
                                Text("P-Con exhale")
                                    .fontWeight(.medium)
                            }
                            Toggle(isOn: $isORingChecked) {
                                Text("O-Ring")
                                    .fontWeight(.medium)
                            }
                            Toggle(isOn: $isCo2PipeChecked) {
                                Text("CO2 pipe seated in socket")
                                    .fontWeight(.medium)
                            }
                            Toggle(isOn: $isTandPChecked) {
                                Text("Tees & plugs (twist & tug)")
                                    .fontWeight(.medium)
                            }
                        }
                    }
                    
                    VStack() {
                        Toggle(isOn: $isUnitAssembledChecked) {
                            VStack(alignment: .leading) {
                                Text("Are you satisfied with the")
                                    .fontWeight(.medium)
                                Text("assembly of your unit?")
                                    .fontWeight(.medium)
                            }
                        }
                    }
                } header: {
                    Text("Steps 7 - 16")
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
