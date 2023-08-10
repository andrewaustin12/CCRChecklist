//
//  TestChartView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/29/23.
//

import SwiftUI

struct TestChartView: View {
    var  data: [Double]
    var body: some View {
        GeometryReader { geometry in
            let minData = data.min() ?? 0
            let maxData = data.max() ?? 1
            var range = maxData - minData
            let points = data.enumerated().map { index, value in
                CGPoint(x: (CGFloat(index) / CGFloat(data.count - 1)) * geometry.size.width,
                        y: (1 - CGFloat(value - 88) / 12) * geometry.size.height)
            }
            Path { path in
                path.addLines(points)
            }
            .stroke(Color.blue, lineWidth: 2)
        }
        .frame(height: 100)
        .clipped()
        .overlay(YAxisLabels(minValue: 100, maxValue: 90, step: -14).padding(.leading, 5), alignment: .leading)
        .overlay(XAxisLabels(minValue: 1, maxValue: 10, step: 1).padding(.top, 5), alignment: .topLeading)
    }
}

struct TestChartView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ChartCardView {
                TestChartView(data: [99, 98, 97 , 99, 96, 98, 99, 97, 99, 95])
            }
        }
    }
}

struct YAxisLabels: View {
    let minValue: Double
    let maxValue: Double
    let step: Double

    var body: some View {
        VStack(spacing: 0) {
            
            ForEach(Array(stride(from: minValue, through: maxValue, by: step)), id: \.self) { value in
                HStack{
                    Text("\(Int(value))")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.trailing, 5)
                        .frame(height: 10)
                }
            }
        }
    }
}

struct XAxisLabels: View {
    let minValue: Double
    let maxValue: Double
    let step: Double

    var body: some View {
        HStack(spacing: (UIScreen.main.bounds.width - 20) / CGFloat((maxValue - minValue) / step)) {
            ForEach(Array(stride(from: minValue, through: maxValue, by: step)), id:\.self) { value in
                Text("\(Int(value))")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .frame(maxWidth:.infinity)
            }
        }
    }
}




