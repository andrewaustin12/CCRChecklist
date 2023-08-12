//
//  PelagianSummaryView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianSummaryView: View {
    @State private var signature = ""
    var body: some View {
        VStack {

            VStack(alignment: .leading) {
                
                Text("Summary")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                Text("PELAGIAN CHECKLIST")
                    .bold()
                    .padding(.leading)
                
                ProgressBarView(progress: 350)
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

struct PelagianSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianSummaryView()
    }
}
