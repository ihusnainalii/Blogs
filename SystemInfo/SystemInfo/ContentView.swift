//
//  ContentView.swift
//  SystemInfo
//
//  Created by Husnain Ali on 23/07/2024.
//

import SwiftUI

struct SystemInfo: Identifiable {
    let id = UUID()
    var name: String
    var value: Any
}

struct ContentView: View {
    
    var systemInfo: [SystemInfo] = [SystemInfo(name: "System Name", value: UIDevice.current.systemName),
                                    SystemInfo(name: "System Version", value: UIDevice.current.systemVersion),
                                    SystemInfo(name: "Device Model", value: UIDevice.current.model),
                                    SystemInfo(name: "Device Name", value: UIDevice.current.name),
                                    SystemInfo(name: "Localized Device Model", value: UIDevice.current.localizedModel),
                                    SystemInfo(name: "Battery Level", value: UIDevice.current.batteryLevel),
                                    SystemInfo(name: "Battery State", value: UIDevice.current.batteryState.rawValue),
                                    SystemInfo(name: "Current Brightness", value: UIScreen.main.brightness)]
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("Device Information")
                    .padding(.top)
                Text(UIDevice.current.identifierForVendor?.uuidString ?? "N/A")
            }
            .padding(.horizontal)
            
            List(systemInfo) { info in
                HStack {
                    Text(info.name)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("\(info.value)")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                }
            }
        }
        .onAppear {
            UIDevice.current.isBatteryMonitoringEnabled = true
        }
    }
}

#Preview {
    ContentView()
}
