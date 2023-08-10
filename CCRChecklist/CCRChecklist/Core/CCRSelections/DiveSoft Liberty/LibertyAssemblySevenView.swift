//
//  LibertyAssemblySevenView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/4/23.
//

import SwiftUI

struct LibertyAssemblySevenView: View {
    @State private var isBothMavsChecked = false
    @State private var isAdvInjectsChecked = false
    @State private var isBovSecondStageChecked = false
    @State private var isWingInflatorConnectedChecked = false
    @State private var isWeightFastenedChecked = false
    
    
    var body: some View {
        VStack {
            Text("DIVESOFT LIBERTY ASSEMBLY CHECKLIST")
            Text("BMCL+BOV")
                .font(.title)
                .bold()
                .foregroundColor(Color.red)
            HStack{
                Text("Steps 26 - 30")
                    .bold()
            }
            
            VStack {
                Form {
                    VStack {
                        Toggle(isOn: $isBothMavsChecked) {
                            Text("Both MAVs work and doesn't leak")
                                .fontWeight(.medium)
                        }
                    }
                    
                    VStack {
                        Toggle(isOn: $isAdvInjectsChecked) {
                            Text("ADV injects gas if pressed and closes when released")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isBovSecondStageChecked) {
                            Text("BOV 2nd stage working")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isWingInflatorConnectedChecked) {
                            Text("Wing Inflator hose connected to shoulder harness works and doesn’t leak")
                                .fontWeight(.medium)
                        }
                    }
                    VStack {
                        Toggle(isOn: $isWeightFastenedChecked) {
                            Text("Weight fastened")
                                .fontWeight(.medium)
                        }
                    }
                }
            }
            .font(.title3)
            
            Spacer()
            
            HStack {
                NavigationLink{
                    LibertyAssemblySixView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    LibertyAssemblyEightView()
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

struct LibertyAssemblySevenView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblySevenView()
    }
}
