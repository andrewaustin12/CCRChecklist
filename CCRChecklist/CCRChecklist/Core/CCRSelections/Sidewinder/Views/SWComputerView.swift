//
//  ComputerView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWComputerView: View {
    
    
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "Kiss Sidewinder Checklist")
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Computer")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                
                List {

                    Text("Turn on Computer. Check voltage of computer battery ( > 1.25V )")

                    Text("Note millivolts and fill columns 1 & 2 of linearity sheet")

                    Text("Program all gasses(CC&BO) in primary and backup computers")

                }
                
            }
            
            Spacer()
            
            
            NavigationLink{
                SWScrubberView()
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

struct SWComputerView_Previews: PreviewProvider {
    static var previews: some View {
        SWComputerView()
    }
}
