//
//  NotesView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct NotesView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "Notes")
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack {
                // add notes here
            }
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
