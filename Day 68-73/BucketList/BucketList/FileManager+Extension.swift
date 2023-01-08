//
//  FileManager+Extension.swift
//  BucketList
//
//  Created by huin on 2023/01/08.
//

import Foundation

extension FileManager {

    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
