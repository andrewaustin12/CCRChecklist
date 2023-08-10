//
//  CellThreeChartView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/3/23.
//

import SwiftUI
import Charts

struct CellThreeChartView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(cellThreeBuilds) { CellThree in
                    LineMark(
                        x: .value("builds", CellThree.build),
                        y: .value("Millivolts", CellThree.value)
                    )
                    .foregroundStyle(Color.green.gradient)
                }
                
            }
            .chartYAxis{AxisMarks(position: .leading)}
            .chartYScale(domain: 93...100)
            .frame(height: 100)
            .padding()
        }
    }
}


struct CellThreeChartView_Previews: PreviewProvider {
    static var previews: some View {
        CellThreeChartView()
    }
}
