//
//  ChartCardView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/29/23.
//

import SwiftUI

struct ChartCardView<Content>: View where Content: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .frame(height: 100)
            .shadow(radius: 2)
            .overlay(content.padding())
            .padding()
        
    }
}
