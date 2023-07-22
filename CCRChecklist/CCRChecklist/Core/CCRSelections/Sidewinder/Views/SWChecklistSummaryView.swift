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
            HStack {
                TabHeaderView(title1: "KISS Sidewinder Checklist")
            
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Text("Summary")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Text("")
                    Text("")
    
                }
            }
            Spacer()
            
            NavigationLink{
                HomeView()
            } label: {
                Text("Complete")
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

struct SWChecklistSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SWChecklistSummaryView()
    }
}
