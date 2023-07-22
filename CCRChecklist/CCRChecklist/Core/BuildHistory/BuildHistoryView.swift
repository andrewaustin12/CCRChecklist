//
//  BuildHistoryView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct BuildHistoryView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "Build History")
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack {
                // loop through previous builds
            }
        }
    }
}

struct BuildHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        BuildHistoryView()
    }
}