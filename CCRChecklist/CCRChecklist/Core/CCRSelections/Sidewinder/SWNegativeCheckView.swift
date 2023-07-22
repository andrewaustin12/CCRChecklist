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
                TabHeaderView(title1: "KISS SideWinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Negative Check")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    Text("Inpect Mouth Piece for holes and tears")
                    
                    Text("Preform Mushroom Valve Check")
                    
                    Text("Inspect and lube O-Rings")
                    
                    Text("Install loop to towers (Verify EXHALE goes to the RIGHT tower)")
                    
                    Text("Verify bayonets are closed")
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
