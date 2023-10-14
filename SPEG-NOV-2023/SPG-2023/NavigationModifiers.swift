//
//  NavigationModifiers.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 10/10/23.
//
import SwiftUI

struct IsDetailActiveHiddenModifier: ViewModifier {
    @Environment(\.presentationMode) var presentationMode

    func body(content: Content) -> some View {
        content.onAppear {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}
