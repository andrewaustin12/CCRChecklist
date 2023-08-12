//
//  LibertyAssemblySummaryView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/4/23.
//

import SwiftUI

struct LibertyAssemblySummaryView: View {
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                LibertyBMCLHeaderView()
                
                ProgressBarView(progress: 350)
                    .padding(.leading)
                List {
                    Text("")
                    Text("")
                }
            }
            
            HStack {
                NavigationLink{
                    LibertyAssemblyEightView()
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

struct LibertyAssemblySummaryView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyAssemblySummaryView()
    }
}
