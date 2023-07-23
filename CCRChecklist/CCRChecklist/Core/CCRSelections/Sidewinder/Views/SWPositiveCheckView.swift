//
//  SWPositiveCheckView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWPositiveCheckView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Positive Check")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Text("Open mouthpiece slightly, flush with O2. Monitor cells for smooth and even increases")
                    
                    Text("Record millivolts from each of the cells at 1.00 and fill lineartiy chart")
                    
                    Text("Calibrate computer if necessary (make sure loop is at ambient pressure)")
    
                }
            }
            Spacer()
            
            HStack {
                NavigationLink{
                    SWFlushView()
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
                    SWTransportView()
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

struct SWPositiveCheckView_Previews: PreviewProvider {
    static var previews: some View {
        SWPositiveCheckView()
    }
}
