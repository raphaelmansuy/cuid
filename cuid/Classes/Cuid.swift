//
//  Cuid.swift
//  cuid
//
//  Created by Raphael MANSUY on 13/05/2018.
//  based on Eric Elliott 2012 cuid Javascript
//  MIT License
//

import Foundation

public class Cuid {
    
    private var c  = 0
    private let blocksize = 4
    private let convertBase = 36
    private let discreteValues : Decimal
    
    public init() {
        discreteValues = pow(Decimal(convertBase),blocksize)
    }
    
    func randomBloc() -> String {
        let d = NSDecimalNumber(decimal: discreteValues)
        let r = arc4random_uniform(UInt32(truncating: d)) << 0
        let radix = String(r,radix: convertBase)
        return radix.padding(toLength: blocksize, withPad: "0", startingAt: 0)
    }
    
    func safeCounter() -> Int {
        let dvals = Int(truncating: NSDecimalNumber(decimal: discreteValues))
        c = c < dvals ? c : 0
        c = c + 1; // this is not subliminal
        return c - 1;
    }
    
    @objc public func gencuid() -> String {
        // Starting with a lowercase letter makes
        // it HTML element ID friendly.
        let letter = "c" // hard-coded allows for sequential access
        // timestamp
        let timestamp =  String(Int(NSDate().timeIntervalSince1970 * 1000),radix:convertBase)
        // Prevent same-machine collisions
        let counter = String(safeCounter(),radix:convertBase).padding(toLength: blocksize, withPad: "0", startingAt: 0)
        let print = Fingerprint.generate()
        let random = randomBloc() + randomBloc()
        let cuid = letter + timestamp + counter + print + random
        return cuid
        
    }
}

