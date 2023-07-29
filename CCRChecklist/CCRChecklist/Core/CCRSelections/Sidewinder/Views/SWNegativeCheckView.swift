//
//  SWNegativeCheckView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWNegativeCheckView: View {
    @State private var isNegativeChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Negative Check")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Toggle(isOn: $isNegativeChecked) {
                        Text("Preform Negative check on air")
                    }
                    
                    Text("The Millivolts should decend and hold. Pick a cell and record millivolt. Wait 5 minutes and compare starting millivolts to new value")
                    
                    Text("Insert cell/timer below - remove this ")
                }
                .font(.title3)
            }
            
            Spacer()
            
            HStack {
                NavigationLink{
                    SWLoopView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    SWOxygenView()
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

struct SWNegativeCheckView_Previews: PreviewProvider {
    static var previews: some View {
        SWNegativeCheckView()
    }
}
