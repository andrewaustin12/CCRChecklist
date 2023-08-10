//
//  TestLineChartView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/3/23.
//

import SwiftUI
import Charts

struct CellOneChartView: View {
    
    var body: some View {
        VStack {
            Chart {
                ForEach(cellOneBuilds) { CellOne in
                    LineMark(
                        x: .value("builds", CellOne.build),
                        y: .value("Millivolts", CellOne.value)
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

struct CellOneChartView_Previews: PreviewProvider {
    static var previews: some View {
        CellOneChartView()
    }
}



