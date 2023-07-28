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
//            HStack{ TabHeaderView(title1: "Pelagian Checklist")}
//                .ignoresSafeArea()
            
            ScrollView {
                Text("Remaining pressure")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Enter remaining pressure in Bars")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                
                HStack() {
                    Text("Enter 02")
                    TextField("PP02", value: $o2Pressure, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                        .frame(width: 80)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .frame(width: 360, height: 44)
                .background(Color(.systemFill))
                .cornerRadius(8)
                
                HStack() {
                    Text("Enter Diluent")
                    TextField("PP02",
                              value: $diluentPressure,
                              formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .frame(width: 360, height: 44)
                    .background(Color(.systemFill))
                    .cornerRadius(8)

                HStack() {
                    Text("Enter Bailout Gas")
                    TextField("PP02",
                              value: $bailoutPressure,
                              formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .frame(width: 360, height: 44)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                
                HStack() {
                    VStack(alignment: .leading) {
                        Text("Flow rate at surface ")
                        Text("set to (number of turns)")
                    }
                    TextField("PP02",
                              value: $bailoutPressure,
                              formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .frame(width: 360, height: 80)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                
                VStack() {
                    
                    VStack {
                        
                        Text("Regs Tested")
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
                    .padding()
                    .frame(width: 360, height: 190)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                    
                }
                
                VStack() {
                    
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
                    .padding()
                    .frame(width: 360, height: 190)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                    
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
            .navigationTitle("Gas And Regulators")
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.automatic)
            .padding()
        }
    }
}

struct PelagianGasAndRegsView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianGasAndRegsView()
    }
}
