//
//  Fingerprint.swift
//  cuid
//
//  Created by Raphael MANSUY on 13/05/2018.
//  MIT License
//

struct Fingerprint {
    
    private static let convertBase = 36
    
    static func generate() -> String {
        let padding = 2
        let pid = String(getpid(),radix: convertBase).padding(toLength: padding, withPad: "0", startingAt: 0)
        let idDevice = UIDevice.current.identifierForVendor?.uuidString ?? ""
        let idDeviceLength = idDevice.count
        let idDeviceCode = idDevice.ascii.reduce(UInt32(idDeviceLength+convertBase)
            , { $0 + $1 })
        let hostId = String(idDeviceCode,radix:convertBase).padding(toLength: padding, withPad: "0", startingAt: 0)
        let fingerprint = pid + hostId
        return fingerprint
    }
}
