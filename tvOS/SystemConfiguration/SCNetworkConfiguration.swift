
class SCNetworkInterface : _CFObject {
}
let kSCNetworkInterfaceType6to4: CFString
let kSCNetworkInterfaceTypeBluetooth: CFString
let kSCNetworkInterfaceTypeBond: CFString
let kSCNetworkInterfaceTypeEthernet: CFString
let kSCNetworkInterfaceTypeFireWire: CFString
let kSCNetworkInterfaceTypeIEEE80211: CFString
let kSCNetworkInterfaceTypeIPSec: CFString
let kSCNetworkInterfaceTypeIrDA: CFString
let kSCNetworkInterfaceTypeL2TP: CFString
let kSCNetworkInterfaceTypeModem: CFString
let kSCNetworkInterfaceTypePPP: CFString
let kSCNetworkInterfaceTypePPTP: CFString
let kSCNetworkInterfaceTypeSerial: CFString
let kSCNetworkInterfaceTypeVLAN: CFString
let kSCNetworkInterfaceTypeWWAN: CFString
let kSCNetworkInterfaceTypeIPv4: CFString
let kSCNetworkInterfaceIPv4: SCNetworkInterface
typealias SCBondInterface = SCNetworkInterface
class SCBondStatus : _CFObject {
}
var kSCBondStatusOK: Int { get }
var kSCBondStatusLinkInvalid: Int { get }
var kSCBondStatusNoPartner: Int { get }
var kSCBondStatusNotInActiveGroup: Int { get }
var kSCBondStatusUnknown: Int { get }
typealias SCVLANInterface = SCNetworkInterface
class SCNetworkProtocol : _CFObject {
}
let kSCNetworkProtocolTypeDNS: CFString
let kSCNetworkProtocolTypeIPv4: CFString
let kSCNetworkProtocolTypeIPv6: CFString
let kSCNetworkProtocolTypeProxies: CFString
class SCNetworkService : _CFObject {
}
class SCNetworkSet : _CFObject {
}
func SCNetworkInterfaceGetTypeID() -> CFTypeID
func SCNetworkInterfaceCopyAll() -> CFArray
func SCNetworkInterfaceGetSupportedInterfaceTypes(_ interface: SCNetworkInterface) -> CFArray?
func SCNetworkInterfaceGetSupportedProtocolTypes(_ interface: SCNetworkInterface) -> CFArray?
func SCNetworkInterfaceCreateWithInterface(_ interface: SCNetworkInterface, _ interfaceType: CFString) -> SCNetworkInterface?
func SCNetworkInterfaceGetBSDName(_ interface: SCNetworkInterface) -> CFString?
func SCNetworkInterfaceGetConfiguration(_ interface: SCNetworkInterface) -> CFDictionary?
func SCNetworkInterfaceGetExtendedConfiguration(_ interface: SCNetworkInterface, _ extendedType: CFString) -> CFDictionary?
func SCNetworkInterfaceGetHardwareAddressString(_ interface: SCNetworkInterface) -> CFString?
func SCNetworkInterfaceGetInterface(_ interface: SCNetworkInterface) -> SCNetworkInterface?
func SCNetworkInterfaceGetInterfaceType(_ interface: SCNetworkInterface) -> CFString?
func SCNetworkInterfaceGetLocalizedDisplayName(_ interface: SCNetworkInterface) -> CFString?
func SCNetworkInterfaceSetConfiguration(_ interface: SCNetworkInterface, _ config: CFDictionary?) -> Bool
func SCNetworkInterfaceSetExtendedConfiguration(_ interface: SCNetworkInterface, _ extendedType: CFString, _ config: CFDictionary?) -> Bool
func SCNetworkInterfaceCopyMediaOptions(_ interface: SCNetworkInterface, _ current: UnsafeMutablePointer<Unmanaged<CFDictionary>?>?, _ active: UnsafeMutablePointer<Unmanaged<CFDictionary>?>?, _ available: UnsafeMutablePointer<Unmanaged<CFArray>?>?, _ filter: Bool) -> Bool
func SCNetworkInterfaceCopyMediaSubTypes(_ available: CFArray) -> CFArray?
func SCNetworkInterfaceCopyMediaSubTypeOptions(_ available: CFArray, _ subType: CFString) -> CFArray?
func SCNetworkInterfaceCopyMTU(_ interface: SCNetworkInterface, _ mtu_cur: UnsafeMutablePointer<Int32>?, _ mtu_min: UnsafeMutablePointer<Int32>?, _ mtu_max: UnsafeMutablePointer<Int32>?) -> Bool
func SCNetworkInterfaceSetMediaOptions(_ interface: SCNetworkInterface, _ subtype: CFString?, _ options: CFArray?) -> Bool
func SCNetworkInterfaceSetMTU(_ interface: SCNetworkInterface, _ mtu: Int32) -> Bool
func SCNetworkInterfaceForceConfigurationRefresh(_ interface: SCNetworkInterface) -> Bool
func SCVLANInterfaceCopyAll(_ prefs: SCPreferences) -> CFArray
func SCVLANInterfaceCopyAvailablePhysicalInterfaces() -> CFArray
func SCVLANInterfaceCreate(_ prefs: SCPreferences, _ physical: SCNetworkInterface, _ tag: CFNumber) -> SCVLANInterface?
func SCVLANInterfaceRemove(_ vlan: SCVLANInterface) -> Bool
func SCVLANInterfaceGetPhysicalInterface(_ vlan: SCVLANInterface) -> SCNetworkInterface?
func SCVLANInterfaceGetTag(_ vlan: SCVLANInterface) -> CFNumber?
func SCVLANInterfaceGetOptions(_ vlan: SCVLANInterface) -> CFDictionary?
func SCVLANInterfaceSetPhysicalInterfaceAndTag(_ vlan: SCVLANInterface, _ physical: SCNetworkInterface, _ tag: CFNumber) -> Bool
func SCVLANInterfaceSetLocalizedDisplayName(_ vlan: SCVLANInterface, _ newName: CFString) -> Bool
func SCVLANInterfaceSetOptions(_ vlan: SCVLANInterface, _ newOptions: CFDictionary) -> Bool
func SCNetworkProtocolGetTypeID() -> CFTypeID
func SCNetworkProtocolGetConfiguration(_ protocol: SCNetworkProtocol) -> CFDictionary?
func SCNetworkProtocolGetEnabled(_ protocol: SCNetworkProtocol) -> Bool
func SCNetworkProtocolGetProtocolType(_ protocol: SCNetworkProtocol) -> CFString?
func SCNetworkProtocolSetConfiguration(_ protocol: SCNetworkProtocol, _ config: CFDictionary?) -> Bool
func SCNetworkProtocolSetEnabled(_ protocol: SCNetworkProtocol, _ enabled: Bool) -> Bool
func SCNetworkServiceGetTypeID() -> CFTypeID
func SCNetworkServiceAddProtocolType(_ service: SCNetworkService, _ protocolType: CFString) -> Bool
func SCNetworkServiceCopyAll(_ prefs: SCPreferences) -> CFArray?
func SCNetworkServiceCopyProtocols(_ service: SCNetworkService) -> CFArray?
func SCNetworkServiceCreate(_ prefs: SCPreferences, _ interface: SCNetworkInterface) -> SCNetworkService?
func SCNetworkServiceCopy(_ prefs: SCPreferences, _ serviceID: CFString) -> SCNetworkService?
func SCNetworkServiceEstablishDefaultConfiguration(_ service: SCNetworkService) -> Bool
func SCNetworkServiceGetEnabled(_ service: SCNetworkService) -> Bool
func SCNetworkServiceGetInterface(_ service: SCNetworkService) -> SCNetworkInterface?
func SCNetworkServiceGetName(_ service: SCNetworkService) -> CFString?
func SCNetworkServiceCopyProtocol(_ service: SCNetworkService, _ protocolType: CFString) -> SCNetworkProtocol?
func SCNetworkServiceGetServiceID(_ service: SCNetworkService) -> CFString?
func SCNetworkServiceRemove(_ service: SCNetworkService) -> Bool
func SCNetworkServiceRemoveProtocolType(_ service: SCNetworkService, _ protocolType: CFString) -> Bool
func SCNetworkServiceSetEnabled(_ service: SCNetworkService, _ enabled: Bool) -> Bool
func SCNetworkServiceSetName(_ service: SCNetworkService, _ name: CFString?) -> Bool
func SCNetworkSetGetTypeID() -> CFTypeID
func SCNetworkSetAddService(_ set: SCNetworkSet, _ service: SCNetworkService) -> Bool
func SCNetworkSetContainsInterface(_ set: SCNetworkSet, _ interface: SCNetworkInterface) -> Bool
func SCNetworkSetCopyAll(_ prefs: SCPreferences) -> CFArray?
func SCNetworkSetCopyCurrent(_ prefs: SCPreferences) -> SCNetworkSet?
func SCNetworkSetCopyServices(_ set: SCNetworkSet) -> CFArray?
func SCNetworkSetCreate(_ prefs: SCPreferences) -> SCNetworkSet?
func SCNetworkSetCopy(_ prefs: SCPreferences, _ setID: CFString) -> SCNetworkSet?
func SCNetworkSetGetName(_ set: SCNetworkSet) -> CFString?
func SCNetworkSetGetSetID(_ set: SCNetworkSet) -> CFString?
func SCNetworkSetGetServiceOrder(_ set: SCNetworkSet) -> CFArray?
func SCNetworkSetRemove(_ set: SCNetworkSet) -> Bool
func SCNetworkSetRemoveService(_ set: SCNetworkSet, _ service: SCNetworkService) -> Bool
func SCNetworkSetSetCurrent(_ set: SCNetworkSet) -> Bool
func SCNetworkSetSetName(_ set: SCNetworkSet, _ name: CFString?) -> Bool
func SCNetworkSetSetServiceOrder(_ set: SCNetworkSet, _ newOrder: CFArray) -> Bool
