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
            Text("DIVESOFT LIBERTY ASSEMBLY CHECKLIST")
            Text("BMCL+BOV")
                .font(.title)
                .bold()
                .foregroundColor(Color.red)
            HStack{
                Text("Steps 6 - 10")
                    .bold()
            }
            
            VStack {
                
                Form {
                    VStack{
                        Text("Diluent tank analyzed, connected to 1st stage, secured with strap on LEFT side ")
                            
                        HStack {
                            Text("GAS: ")
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
                            TextField("PP02",
                                      value: $libertyDilAnalyzed,
                                      formatter: NumberFormatter())
                                        .keyboardType(.numberPad)
                                        .frame(width: 80)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        VStack {
                            Text("Oxygen sensors calibrated (note and calculate values in table)")
                        }
                    }
                }
                
                
                
            }
            .font(.title3)
            
            Spacer()
            
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
