//
//  SWFlushView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWFlushView: View {
    @State private var isO2FlushChecked = false
    @State private var isO2MillivoltsChecked = false
    @State private var isComputerCalibratedChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Flush")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                Text("SIDEWINDER CHECKLIST")
                    .bold()
                    .padding(.leading)
                
                List {
                    
                    Section {
                        Toggle(isOn: $isO2FlushChecked) {
                            Text("Open mouthpiece slightly, flush with O2. Monitor cells for smooth and even increases")
                        }
                        
                        Toggle(isOn: $isO2MillivoltsChecked) {
                            Text("Record millivolts from each of the cells at 1.00 and fill lineartiy chart")
                        }
                        
                        Toggle(isOn: $isComputerCalibratedChecked) {
                            Text("Calibrate computer if necessary (make sure loop is at ambient pressure)")
                        }
                    } header: {
                        Text("Steps 22-24")
                    }
                }
            }
            
            VStack {
                LinearityChartMvO2View()
            }
            .padding(.top, 10)
            
            Spacer()
            
            HStack {
                NavigationLink{
                    SWOxygenView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                
                NavigationLink{
                    SWPositiveCheckView()
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

struct SWFlushView_Previews: PreviewProvider {
    static var previews: some View {
        SWFlushView()
    }
}
