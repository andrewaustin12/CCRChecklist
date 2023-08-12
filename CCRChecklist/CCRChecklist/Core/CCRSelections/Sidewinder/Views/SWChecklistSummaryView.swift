//
//  SWChecklistSummaryView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWChecklistSummaryView: View {
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Summary")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                Text("SIDEWINDER CHECKLIST")
                    .bold()
                    .padding(.leading)
                
                List {
                    Text("")
                    Text("")
                }
            }
            
            HStack {
                NavigationLink{
                    SWTransportView()
                        .navigationBarBackButtonHidden(true)
                        .transition(.move(edge: .leading))
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    HomeView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Complete")
                        .modifier(SmallPrimaryButtonModifier())
                }
            }
            .padding()
        }
    }
}

struct SWChecklistSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SWChecklistSummaryView()
    }
}
