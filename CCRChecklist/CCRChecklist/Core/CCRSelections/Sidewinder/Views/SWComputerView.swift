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
            VStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            }
            .ignoresSafeArea()
                        
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Computer")
                    .padding(.top)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)


                List {

                    Text("Turn on Computer. Check voltage of computer battery ( > 1.25V )")

                    Text("Note millivolts from each cell at ambient air pressure (.21) and fill columns 1 & 2 of linearity sheet")
                }
            }
            

            
            Spacer()
            
            HStack {
//                NavigationLink{
//                    HomeView()
////                        .navigationBarBackButtonHidden(true)
//                } label: {
//                    Text("Back")
//                        .font(.title)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                        .frame(width: 180, height: 44)
//                        .background(Color(.systemGray))
//                        .cornerRadius(8)
//                }
                
                
                NavigationLink{
                    SWScrubberView()
                        .accentColor(.white)
                } label: {
                    Text("Next")
                        .modifier(PrimaryButtonModifier())
                }
            }
            
        }
        
    }
}

struct SWComputerView_Previews: PreviewProvider {
    static var previews: some View {
        SWComputerView()
    }
}
