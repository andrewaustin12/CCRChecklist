//
//  SWCounterLungView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWCounterLungView: View {
    @State private var isCounterLungPlacedChecked = false
    @State private var isCounterLungInspectedChecked = false
    @State private var isCounterLungAttachedChecked = false
    @State private var isCannistersAttachedChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Counter Lung")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                Text("Sidewinder Checklist")
                    .bold()
                    .padding(.leading)
                
                ProgressBarView(progress: Double((350/9) * 2))
                    .padding(.leading)
                
                Form {
                    
                    Section {
                        Toggle(isOn: $isCounterLungPlacedChecked) {
                            Text("Place counter lung in harness ensuring waistbelt and wing are in proper positions.")
                        }
                        
                        
                        Toggle(isOn: $isCounterLungInspectedChecked) {
                            Text("Inspect, clean and lubricate counter lung O-rings as needed")
                        }
                        
                        Toggle(isOn: $isCounterLungAttachedChecked) {
                            Text("Attach counter lung to cannister ensuring the clips are set properly")
                        }
                        
                        Toggle(isOn: $isCannistersAttachedChecked) {
                            Text("Attach cannisters to harness")
                        }
                    } header: {
                        Text("Steps 8-11")
                    }

                    
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
