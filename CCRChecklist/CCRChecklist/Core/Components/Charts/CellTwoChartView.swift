//
//  CellTwoChartView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/3/23.
//

import SwiftUI
import Charts

struct CellTwoChartView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(cellTwoBuilds) { CellTwo in
                    LineMark(
                        x: .value("builds", CellTwo.build),
                        y: .value("Millivolts", CellTwo.value)
                    )
                    .foregroundStyle(Color.green.gradient)
                }
                
            }
            .chartYAxis{AxisMarks(position: .leading)}
            .chartYScale(domain: 90...100)
            .frame(height: 100)
            .padding()
        }
    }
}

struct CellTwoChartView_Previews: PreviewProvider {
    static var previews: some View {
        CellTwoChartView()
    }
}
