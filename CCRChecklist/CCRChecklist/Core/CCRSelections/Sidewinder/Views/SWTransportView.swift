//
//  SWTransportView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWTransportView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Transport")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Text("Ensure the DSV is closed")
                    
                    Text("Ensure O2 tank is closed")
                    
                    Text("Ensure Computer is cliped and secured")
                    
                    Text("(Optional) If O2 tank is detached for transport ensure O2 1st stage is secured.")
    
                }
            }
            Spacer()
            
            NavigationLink{
                SWChecklistSummaryView()
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

struct SWTransportView_Previews: PreviewProvider {
    static var previews: some View {
        SWTransportView()
    }
}
