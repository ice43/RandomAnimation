//
//  Extension + String.swift
//  RandomAnimation
//
//  Created by Serge Bowski on 1/26/24.
//

import Foundation

extension String {
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
}
