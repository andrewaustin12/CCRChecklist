//
//  ComputerView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWComputerView: View {
    @State private var isBatteryChecked = false
    @State private var isMillivoltsChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                Text("Computers")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                Text("SIDEWINDER CHECKLIST")
                    .bold()
                    .padding(.leading)
                
                ProgressBarView(progress: Double((350/9) * 0.1))
                    .padding(.leading)
                
                Form {
                    Section {
                        Toggle(isOn: $isBatteryChecked) {
                            Text("Turn on Computer. Check voltage of computer battery ( > 1.25V )")
                        }
                        Toggle(isOn: $isMillivoltsChecked) {
                            Text("Note millivolts from each cell at ambient air pressure (.21) and fill columns 1 of linearity sheet")
                        }
                        
                    } header: {
                        Text("Steps 1-2")
                    }
                }
            }
            
            VStack {
                LinearityChartMvAirView()
            }
            .padding()
            
            
            HStack {
                NavigationLink{
                    SWScrubberView()
                        .accentColor(.white)
                } label: {
                    Text("Next")
                        .modifier(PrimaryButtonModifier())
                }
            }
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct SWComputerView_Previews: PreviewProvider {
    static var previews: some View {
        SWComputerView()
    }
}
