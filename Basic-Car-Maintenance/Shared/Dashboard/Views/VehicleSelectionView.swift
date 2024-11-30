//
//  VehicleSelectionView.swift
//  Basic-Car-Maintenance
//
//  https://github.com/mikaelacaron/Basic-Car-Maintenance
//  See LICENSE for license information.
//

import SwiftUI

struct VehicleSelectionView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedVehicle: Vehicle?
    var vehicles: [Vehicle]

    var body: some View {
        NavigationView {
            List {
                Button(action: {
                    selectedVehicle = nil
                    dismiss()
                }, label: {
                    Text("All Vehicles")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                })
                
                ForEach(vehicles, id: \.id) { vehicle in
                    Button(action: {
                        selectedVehicle = vehicle
                        dismiss()
                    }, label: {
                        Text(vehicle.name)
                    })
                }
            }
            .navigationTitle("Select Vehicle")
        }
    }
}
