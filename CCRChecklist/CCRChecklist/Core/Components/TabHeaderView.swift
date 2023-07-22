//
//  TabHeaderView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct TabHeaderView: View {
    let title1: String
//    let title2: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack { Spacer() }
            
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
//            Text(title2)
//                .font(.largeTitle)
//                .fontWeight(.semibold)
        }
        .frame(height: 200)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct TabHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TabHeaderView(title1: "Build History")
    }
}
