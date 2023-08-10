//
//  BuildHistoryView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct BuildHistoryView: View {
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "Build History")
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack {
                Button {
                    print("clicked")
                } label: {
                    Text("Build history")
                }
                .modifier(PrimaryButtonModifier())
                
                Button {
                    showSheet = true
                } label: {
                    Text("Cell history")
                }
                .sheet(isPresented: $showSheet) {
                    CellHistoryView()
                }
                .modifier(PrimaryButtonModifier())
                
                
                Spacer()
            }
        }
    }
}

struct BuildHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        BuildHistoryView()
    }
}
