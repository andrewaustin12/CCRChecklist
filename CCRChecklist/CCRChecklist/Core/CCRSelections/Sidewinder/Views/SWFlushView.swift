//
//  SWFlushView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWFlushView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Flush")
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
            
            NavigationLink{
                SWPositiveCheckView()
            } label: {
                Text("Next")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
        }
    }
}

struct SWFlushView_Previews: PreviewProvider {
    static var previews: some View {
        SWFlushView()
    }
}
