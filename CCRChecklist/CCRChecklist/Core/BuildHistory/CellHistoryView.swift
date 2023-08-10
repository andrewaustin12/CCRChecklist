//
//  CellHistoryView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/29/23.
//

import SwiftUI

struct CellHistoryView: View {
    @Environment(\.presentationMode) var presentationMode
        
    var body: some View {

        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .bold()
                        .padding()
                        .foregroundColor(Color.blue)
                }
                Spacer()
                Text("Cell History")
                    .font(.title)
                Spacer()
            }
            .padding()
            
            Spacer()
            
            VStack {
                VStack {
                    Text("Cell 1")
                        .font(.title3)
                        .bold()
                    CellOneChartView()
                }
                    
                VStack{
                    Text("Cell 2")
                        .font(.title3)
                        .bold()
                    CellTwoChartView()
                }
                    
                VStack {
                    Text("Cell 3")
                        .font(.title3)
                        .bold()
                    CellThreeChartView()
                }
            }
            Spacer()
        }
    }
}

struct CellHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        CellHistoryView()
    }
}
