//
//  SWOxygenView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWOxygenView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Oxygen")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Text("Analyze Oxygen tank")
                    
                    Text("Pressure check Oxygen tank")
                    
                    Text("Mount 02, Properly Route hose and 1st stage. LEAVE TANK OFF.")
    
                }
                
            }
            Spacer()
            
            NavigationLink{
                SWFlushView()
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

struct SWOxygenView_Previews: PreviewProvider {
    static var previews: some View {
        SWOxygenView()
    }
}
