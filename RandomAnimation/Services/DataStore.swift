//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Алексей Турулин on 6/12/23.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
