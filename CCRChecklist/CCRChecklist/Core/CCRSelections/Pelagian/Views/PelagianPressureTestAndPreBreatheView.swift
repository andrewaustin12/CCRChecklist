//
//  PressureTestAndPreBreatheView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianPressureTestAndPreBreatheView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isPosTestChecked = false
    @State private var isNegTestChecked = false
    @State private var isPrebreatheChecked = false
    
    var body: some View {
        VStack {
//            HStack{TabHeaderView(title1: "Pelagian Checklist")}
//                .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    Toggle(isOn: $isPosTestChecked) {
                        Text("Positive pressure test satisfactory?")
                            .fontWeight(.medium)
                    }
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                }
                
                VStack {
                    Toggle(isOn: $isNegTestChecked) {
                        Text("Negative pressure test satisfactory?")
                            .fontWeight(.medium)
                    }
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                }
                
                VStack {
                    Toggle(isOn: $isPrebreatheChecked) {
                        Text("10 minute pre-breathe done?")
                            .fontWeight(.medium)
                    }
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                }
                
                HStack {
                    Image(systemName: "clock")
                    
                    Text("START 10 MIN TIMER")
                    
                    
                }
                .padding()
                .frame(width: 360, height: 80)
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .cornerRadius(8)
            }
            
            HStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 180, height: 44)
                .background(Color(.systemGray))
                .cornerRadius(8)
                
                NavigationLink("Finish", destination: {
                    PelagianSummaryView()
                })
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 180, height: 44)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                    
            }
            .navigationTitle("Pressure Test and PreBreathe")
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.automatic)
            .padding()
        }
    }
}

struct PelagainPressureTestAndPreBreatheView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianPressureTestAndPreBreatheView()
    }
}
