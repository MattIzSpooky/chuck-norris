//
// Created by Matthijs Kropholler on 26/02/2021.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject private var settingsViewModel = SettingsViewModel()

    var body: some View {
        Form {
            TextField("First name", text: $settingsViewModel.settings.firstName, onCommit: { settingsViewModel.save() })
            TextField("Last name", text: $settingsViewModel.settings.lastName, onCommit: { settingsViewModel.save() })

            Button(action: settingsViewModel.save, label: { Text("Save") })
        }.navigationBarTitle("Settings")
    }
}