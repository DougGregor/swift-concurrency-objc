
@available(macOS 10.1, *)
func SCDynamicStoreCopyDHCPInfo(_ store: SCDynamicStore?, _ serviceID: CFString?) -> CFDictionary?
@available(macOS 10.1, *)
func DHCPInfoGetOptionData(_ info: CFDictionary, _ code: UInt8) -> CFData?
@available(macOS 10.1, *)
func DHCPInfoGetLeaseStartTime(_ info: CFDictionary) -> CFDate?
@available(macOS 10.8, *)
func DHCPInfoGetLeaseExpirationTime(_ info: CFDictionary) -> CFDate?
