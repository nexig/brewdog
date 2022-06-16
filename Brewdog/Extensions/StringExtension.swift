//
//  StringExtension.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation
import UIKit

extension String {
    
    func localized() -> String {
        let localizedString = NSLocalizedString(self, comment: "")
        if self != localizedString {
            return localizedString
        } else {
            return "**\(self)**"
        }
    }
    
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
    
}

