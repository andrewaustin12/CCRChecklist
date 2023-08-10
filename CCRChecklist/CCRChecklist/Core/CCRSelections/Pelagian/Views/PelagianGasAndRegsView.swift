//
//  GasAndRegsView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianGasAndRegsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var o2Pressure = ""
    @State private var diluentPressure = ""
    @State private var bailoutPressure = ""
    @State private var flowRate = ""
    @State private var isO2FeedChecked = false
    @State private var isADVChecked = false
    @State private var isBailoutRegChecked = false
    @State private var isO2FeedGuageChecked = false
    @State private var isADVGuageChecked = false
    @State private var isBailoutRegGuageChecked = false
    
    var body: some View {
        VStack {
            Text("PELAGIAN CHECKLIST")
                .font(.title)
            Text("Pressure, Regs and Guage Tests")
                .bold()
            
            Form {
                Section{
                    VStack {
                        Text("Enter remaining pressure in Bars")
                            .font(.title2)
                        HStack() {
                            Text("Enter 02")
                            Spacer()
                            TextField("PP02", value: $o2Pressure,
                                      formatter: NumberFormatter())
                            .keyboardType(.decimalPad)
                            .frame(width: 80)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                    
                    HStack() {
                        Text("Enter Diluent")
                        Spacer()
                        TextField("PP02",
                                  value: $diluentPressure,
                                  formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 80)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    HStack() {
                        Text("Enter Bailout Gas")
                        Spacer()
                        TextField("PP02",
                                  value: $bailoutPressure,
                                  formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 80)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    HStack() {
                        VStack(alignment: .leading) {
                            Text("Flow rate at surface ")
                            Text("Set to (number of turns)")
                        }
                        Spacer()
                        TextField("NUM",
                                  value: $bailoutPressure,
                                  formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 80)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                } header: {
                    Text("Steps 17 -20")
                }
                Section {
                    
                    VStack {
                        
                        Text("Gas Injections")
                            .font(.title2)
                        
                        Toggle(isOn: $isO2FeedChecked) {
                            Text("02 feed")
                        }
                        
                        Divider()
                        
                        Toggle(isOn: $isADVChecked) {
                            Text("ADV")
                        }
                        
                        Divider()
                        
                        Toggle(isOn: $isBailoutRegChecked) {
                            Text("Bailout Reg")
                        }
                    }
                
                } header: {
                    Text("Steps 21 - 23")
                }
                
                Section {
                    
                    VStack {
                        
                        Text("Guages Tested")
                            .font(.title2)
                        
                        Toggle(isOn: $isO2FeedGuageChecked) {
                            Text("02 feed")
                        }
                        
                        Divider()
                        
                        Toggle(isOn: $isADVGuageChecked) {
                            Text("ADV")
                        }
                        
                        Divider()
                        
                        Toggle(isOn: $isBailoutRegGuageChecked) {
                            Text("Bailout Reg")
                        }
                    }
                    
                } header: {
                    Text("Steps 24 - 26")
                }
                
                
            }
            HStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .modifier(SmallSecondaryButtonModifier())
                
                NavigationLink("Next") {
                    PelagianPressureTestAndPreBreatheView()
                }
                .modifier(SmallPrimaryButtonModifier())
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct PelagianGasAndRegsView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianGasAndRegsView()
    }
}
