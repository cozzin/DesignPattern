//
//  AbstractDisplay.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/05.
//

import Foundation

class AbstractDisplay {
    func open() -> String {
        return ""
    }

    func print() -> String {
        return ""
    }

    func close() -> String {
        return ""
    }

    final func display() -> String {
        var result = ""
        result += open()
        (1...5).forEach { _ in
            result += print()
        }
        result += close()
        return result
    }
}

//protocol AbstractDisplay {
//    func open() -> String
//    func print() -> String
//    func close() -> String
//}
//
//extension AbstractDisplay {
//    func display() -> String {
//        var result = ""
//        result += open()
//        (1...5).forEach { _ in
//            result += print()
//        }
//        result += close()
//        return result
//    }
//}
