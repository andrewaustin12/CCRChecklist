//
//  CanisterView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWScrubberView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "Kiss Sidewinder Checklist")
            }
            .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Scrubbers")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Text("Fill and pack each canister with absorbent to inner line")
                    
                    Text("Inspect, clean and lubricate Canister O-Rings as needed")
                    
                    Text("Place Screens in cannisters")
                    
                    Text("Attach each cannister head ensuring proper alignment. Make sure they are on correct cannisters")
                    
                    Text("Reset stacktime")

                }
            }
            
            Spacer()
            
            HStack {
                NavigationLink{
                    SWComputerView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 180, height: 44)
                        .background(Color(.systemGray))
                        .cornerRadius(8)
                }
                
                
                NavigationLink{
                    SWCounterLungView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 180, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
            }

        }
    }
}

struct SWScrubberView_Previews: PreviewProvider {
    static var previews: some View {
        SWScrubberView()
    }
}
