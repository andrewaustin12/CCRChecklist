//
//  PelagieanHeaderView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/12/23.
//

import SwiftUI

struct PelagieanHeaderView: View {
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Replace with state title")
                .font(.title)
                .bold()
                .padding(.leading)

            Text("PELAGIAN CHECKLIST")
                .bold()
                .padding(.leading)
            
        }
    }
}

struct PelagieanHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PelagieanHeaderView()
    }
}
