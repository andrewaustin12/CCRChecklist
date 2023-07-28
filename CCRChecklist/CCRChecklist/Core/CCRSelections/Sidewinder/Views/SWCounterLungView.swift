//
//  SWCounterLungView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWCounterLungView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Counter Lung")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    Text("Place counter lung in harness ensuring waistbelt and wing are in proper positions.")
                    
                    Text("Inspect, clean and lubricate counter lung O-rings as needed")
                    
                    Text("Attach counter lung to cannister ensuring the clips are set properly")
                    
                    Text("Attach cannisters to harness")
                }
            }
            Spacer()
            
            HStack {
                NavigationLink{
                    SWScrubberView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                
                NavigationLink{
                    SWLoopView()
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

struct SWCounterLungView_Previews: PreviewProvider {
    static var previews: some View {
        SWCounterLungView()
    }
}
