//
//  SWLoopView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWLoopView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
                
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Loop")
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
            
            HStack {
                NavigationLink{
                    SWCounterLungView()
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
                    SWNegativeCheckView()
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

struct SWLoopView_Previews: PreviewProvider {
    static var previews: some View {
        SWLoopView()
    }
}
