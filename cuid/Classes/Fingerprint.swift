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
        let idDevice = self.macSerialNumber()
        let idDeviceLength = idDevice.count
        let idDeviceCode = idDevice.ascii.reduce(UInt32(idDeviceLength+convertBase), { $0 + $1 })
        let hostId = String(idDeviceCode,radix:convertBase).padding(toLength: padding, withPad: "0", startingAt: 0)
        let fingerprint = pid + hostId
        return fingerprint
    }

    static func macSerialNumber() -> String {

        // Get the platform expert
        let platformExpert: io_service_t = IOServiceGetMatchingService(kIOMasterPortDefault, IOServiceMatching("IOPlatformExpertDevice"));

        // Get the serial number as a CFString ( actually as Unmanaged<AnyObject>! )
        let serialNumberAsCFString = IORegistryEntryCreateCFProperty(platformExpert, kIOPlatformSerialNumberKey as CFString, kCFAllocatorDefault, 0);

        // Release the platform expert (we're responsible)
        IOObjectRelease(platformExpert);

        // Take the unretained value of the unmanaged-any-object
        // (so we're not responsible for releasing it)
        // and pass it back as a String or, if it fails, an empty string
        return (serialNumberAsCFString?.takeUnretainedValue() as? String) ?? ""
    }
}
