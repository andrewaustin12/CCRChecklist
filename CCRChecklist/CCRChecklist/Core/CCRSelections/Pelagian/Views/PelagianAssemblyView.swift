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
    @State private var isPConChecked = false
    @State private var isORingChecked = false
    @State private var isCo2PipeChecked = false
    @State private var isTandPChecked = false
    @State private var isUnitAssembledChecked = false
    
    var body: some View {
        VStack {
//            HStack{TabHeaderView(title1: "Pelagian Checklist")}
//                .ignoresSafeArea()
            HStack {
                Text("Checks")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
            }
            
            ScrollView {
                VStack {
                    Toggle(isOn: $isBatteryTestedChecked) {
                        Text("Is Battery Tested?")
                            .fontWeight(.medium)
                    }
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
                
                VStack() {
                    Toggle(isOn: $isAirCalibrationChecked) {
                        VStack(alignment: .leading) {
                            Text("Air Calibration")
                                .fontWeight(.medium)
                            Text("Set to .209?")
                                .fontWeight(.medium)
                        }
                    }
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
                
                VStack() {
                    VStack {
                        Text("Loop Checks")
                        Toggle(isOn: $isHoseChecked) {
                            Text("Hose Check")
                                .fontWeight(.medium)
                        }
                        Toggle(isOn: $isMushroomValvesChecked) {
                            Text("Mushroom Values")
                                .fontWeight(.medium)
                        }
                        Toggle(isOn: $isPConChecked) {
                            Text("P-Con")
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
                    .padding()
                    .frame(width: 360, height: 280)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    
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
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
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
            .navigationTitle("Assembly")
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.automatic)
            .padding()
        }
    }
}

struct PelagainAssemblyView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianAssemblyView()
    }
}
