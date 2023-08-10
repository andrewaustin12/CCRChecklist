//
//  TableTwoView.swift
//  ComponentLibrary
//
//  Created by andrew austin on 8/5/23.
//

import SwiftUI

import SwiftUI

struct TableTwoView: View {
    let rows = 3
    let columns = 4
    
    let columnTitles = ["mV@Air", "/.21", "mV@02", "Accuracy"]
    
    var body: some View {
        VStack {
            Text("My Grid Table")
                .font(.title)
                .padding(.top, 20)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: columns), spacing: 10) {
                ForEach(columnTitles, id: \.self) { title in
                    Text(title)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(5)
                }
                
                ForEach(0..<columns) { column in
                    Text("Row \(column)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(5)
                    }
                }
            }
            .padding(.horizontal, 20)
    }
}

struct TableTwoView_Previews: PreviewProvider {
    static var previews: some View {
        TableTwoView()
    }
}
