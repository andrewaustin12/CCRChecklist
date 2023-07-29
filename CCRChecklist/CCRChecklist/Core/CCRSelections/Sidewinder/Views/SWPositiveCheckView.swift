//
//  SWPositiveCheckView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWPositiveCheckView: View {
    @State private var isO2PositiveFlushChecked = false
    @State private var isO2MillivoltsChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Positive Check")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Toggle(isOn: $isO2PositiveFlushChecked) {
                        Text("Close DSV and OPV, flush with O2. Monitor cells for smooth and even increases until reaching over 1.00 ")
                    }
                    
                    Toggle(isOn: $isO2MillivoltsChecked) {
                        Text("Record millivolts from each of the cells at 1.00 and fill lineartiy chart")
                    }
                    
                    Text("INSERT Lenearity chart with timer below")

                }
                .font(.title3)

            }
            
            
            
            Spacer()
            
            HStack {
                NavigationLink{
                    SWFlushView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                
                NavigationLink{
                    SWTransportView()
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

struct SWPositiveCheckView_Previews: PreviewProvider {
    static var previews: some View {
        SWPositiveCheckView()
    }
}
