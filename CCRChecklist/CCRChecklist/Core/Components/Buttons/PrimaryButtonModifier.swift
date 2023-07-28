//
//  PrimaryButtonViewModifier.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/28/23.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .background(Color(.systemBlue))
            .cornerRadius(8)
            .padding()

    }
}


