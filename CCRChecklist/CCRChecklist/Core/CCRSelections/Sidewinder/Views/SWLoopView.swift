//
//  SWLoopView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWLoopView: View {
    @State private var isMouthPieceChecked = false
    @State private var isMushroomValveChecked = false
    @State private var isORingsChecked = false
    @State private var isLoopInstalledChecked = false
    @State private var isBayonetsChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Loop")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Toggle(isOn: $isMouthPieceChecked) {
                        Text("Inpect Mouth Piece for holes and tears")
                    }
                    
                    Toggle(isOn: $isMushroomValveChecked) {
                        Text("Preform Mushroom Valve Check")
                    }
                    
                    Toggle(isOn: $isORingsChecked) {
                        Text("Inspect and lube O-Rings")
                    }
                    
                    Toggle(isOn: $isLoopInstalledChecked) {
                        Text("Install loop to towers (Verify EXHALE goes to the RIGHT tower)")
                    }
                    
                    Toggle(isOn: $isBayonetsChecked) {
                        Text("Verify bayonets are closed")
                    }
                    
                }
                .font(.title3)
            }
            
            Spacer()
            
            HStack {
                NavigationLink{
                    SWCounterLungView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                
                NavigationLink{
                    SWNegativeCheckView()
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

struct SWLoopView_Previews: PreviewProvider {
    static var previews: some View {
        SWLoopView()
    }
}
