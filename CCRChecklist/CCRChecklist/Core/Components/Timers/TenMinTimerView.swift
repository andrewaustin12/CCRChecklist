//
//  CountdownTimerView.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/3/23.
//

import SwiftUI

struct TenMinTimerView: View {
    @State var timeRemaining = 600
    @State private var isTimerRunning = false // New state variable to track timer status
    @State private var countdownTimer: Timer? = nil // Timer instance to handle the countdown

    var body: some View {
        HStack {
            if isTimerRunning {
                let minutes = timeRemaining / 60
                let seconds = timeRemaining % 60
                let formattedTime = String(format: "%d:%02d", minutes, seconds)
                Text(formattedTime)
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .frame(width: 150, height: 40) // Half the width when counting down
                    .background(self.buttonBackgroundColor)
                    .cornerRadius(8)
            } else {
                HStack {
                    Image(systemName: "clock")
                    Text("START 10 MIN TIMER")
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .frame(width: 330, height: 80)
                .background(self.buttonBackgroundColor)
                .foregroundColor(.white)
                .cornerRadius(8)
                .onTapGesture {
                    self.startTimer()
                }
                .disabled(self.isTimerRunning) // Disable the start button when the timer is running
            }

            if isTimerRunning {
                Button(action: {
                    self.stopTimer()
                }) {
                    Text("Stop")
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.red)
                        .cornerRadius(8)
                }
                .disabled(!self.isTimerRunning) // Disable the stop button when the timer is not running
            }
        }
    }

    func startTimer() {
        self.timeRemaining = 600
        self.isTimerRunning = true

        // Start the countdown timer
        self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                self.stopTimer()
            }
        }
    }

    func stopTimer() {
        self.countdownTimer?.invalidate()
        self.countdownTimer = nil
        self.isTimerRunning = false
    }

    var buttonBackgroundColor: Color {
        if self.isTimerRunning {
            return Color.green
        } else if self.timeRemaining == 0 {
            return Color.green
        } else {
            return Color.blue
        }
    }
}


struct TenMinTimerView_Previews: PreviewProvider {
    static var previews: some View {
        TenMinTimerView()
    }
}

