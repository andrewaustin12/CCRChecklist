//
//  TestChartView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/12/23.
//

import SwiftUI

struct TestChartView: View {
    @State private var cellOneMvAir = ""
    @State private var cellTwoMvAir = ""
    @State private var cellThreeMvAir = ""
    
    @State var cells: [String] = ["Cell 1", "Cell 2", "Cell 3"]
    
    var body: some View {
        Grid(alignment: .trailing,
             horizontalSpacing: 15,
             verticalSpacing: 10) {
            
            GridRow{
                Color.clear
                    .gridCellUnsizedAxes([.horizontal, .vertical])
                Text("mV@Air")
                    .gridCellAnchor(.center)
                Text("/.21")
                    .gridCellAnchor(.center)
                Text("mV@02")
                    .gridCellAnchor(.center)
                Text("Accuracy")
                    .gridCellAnchor(.center)
            }
            
            ForEach(cells, id: \.self) { cell in
                GridRow{
                    Text(cell)
                    
                }
            }
        }
    }
}

struct TestChartView_Previews: PreviewProvider {
    static var previews: some View {
        TestChartView()
    }
}
