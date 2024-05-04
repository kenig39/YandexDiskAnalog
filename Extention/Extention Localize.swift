//
//  Extention Localize.swift
//  SkillBoxDisk
//
//  Created by Alex on 07.09.2023.
//

import UIKit



extension String {
    func localizedText() -> String {
        return NSLocalizedString(self, comment:self)
    }
}
