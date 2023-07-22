//
//  SWNegativeCheckView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWNegativeCheckView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Negative Check")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    Section {

                        Text("Preform Negative check on air")
                    }
                    
                    Section {
                        Text("The Millivolts should decend and hold. Pick a cell and record millivolt. Wait 5 minutes and compare starting millivolts to new value")
                    }
                        
                    
                    
                    
                }
            }
            Spacer()
            
            NavigationLink{
                SWOxygenView()
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

struct SWNegativeCheckView_Previews: PreviewProvider {
    static var previews: some View {
        SWNegativeCheckView()
    }
}
