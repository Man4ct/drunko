//
//  Utils.swift
//  drunko
//
//  Created by Salvo on 25/10/23.
//

import Foundation

func userDefaultKeyExist(key: String) -> Bool {
    return UserDefaults.standard.object(forKey: key) != nil
}
