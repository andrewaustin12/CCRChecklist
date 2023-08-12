//
//  LibertyBMCLHeaderView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/12/23.
//

import SwiftUI

struct LibertyBMCLHeaderView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("BMCL+BOV")
                .font(.title)
                .bold()
                .padding(.leading)
                
            Text("DIVESOFT LIBERTY ASSEMBLY CHECKLIST")
                .bold()
                .padding(.leading)
        }
    }
}

struct LibertyBMCLHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LibertyBMCLHeaderView()
    }
}
