//
//  LibertyAssemblyThreeView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/30/23.
//

import SwiftUI

struct LibertyAssemblyThreeView: View {
    @State private var libertyDilAnalyzed = ""
    
    
    var body: some View {
        VStack{
            
            VStack(alignment: .leading) {
                
                LibertyBMCLHeaderView()
                
                Form {
                    Section {
                        VStack{
                            Text("Diluent tank analyzed, connected to 1st stage, secured with strap on LEFT side: ")
                                
                            HStack {
                                Text("GAS: ")
                                Spacer()
                                TextField("PP02",
                                          value: $libertyDilAnalyzed,
                                          formatter: NumberFormatter())
                                            .keyboardType(.numberPad)
                                            .frame(width: 80)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            }
                        }
                        
                        VStack{
                            Text("Oxygen tank analyzed, connected to 1st stage, secured with strap on RIGHT side:")
                                
                            HStack {
                                Text("GAS: ")
                                Spacer()
                                TextField("PP02",
                                          value: $libertyDilAnalyzed,
                                          formatter: NumberFormatter())
                                            .keyboardType(.numberPad)
                                            .frame(width: 80)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            }
                            
                            VStack {
                                Text("Oxygen sensors calibrated \n(note and calculate values in table)")
                                    .multilineTextAlignment(.center)
                            }
                        }
                    } header: {
                        Text("Steps 6 - 10")
                            
                    }

                }
                
                VStack{
                    
                    
                    LinearityChartMvO2View()
                }
                .padding()
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
                    LibertyAssemblyFourView()
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

struct LibertyAssemblyThreeView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblyThreeView()
    }
}
