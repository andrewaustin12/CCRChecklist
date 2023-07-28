//
//  SecondaryButtonModifier.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/28/23.
//

import SwiftUI

struct SecondaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 360, height: 44)
            .background(Color(.systemGray6))
            .cornerRadius(8)

    }
}

