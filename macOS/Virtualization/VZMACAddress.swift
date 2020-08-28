
var ETHER_ADDR_LEN: Int32 { get }
var ETHER_TYPE_LEN: Int32 { get }
var ETHER_CRC_LEN: Int32 { get }
var ETHER_MIN_LEN: Int32 { get }
var ETHER_MAX_LEN: Int32 { get }
var ETHER_ALIGN: Int32 { get }
struct ether_header {
  var ether_dhost: (u_char, u_char, u_char, u_char, u_char, u_char)
  var ether_shost: (u_char, u_char, u_char, u_char, u_char, u_char)
  var ether_type: u_short
  init()
  init(ether_dhost: (u_char, u_char, u_char, u_char, u_char, u_char), ether_shost: (u_char, u_char, u_char, u_char, u_char, u_char), ether_type: u_short)
}
typealias ether_header_t = ether_header
struct ether_addr {
  var octet: (u_char, u_char, u_char, u_char, u_char, u_char)
  init()
  init(octet: (u_char, u_char, u_char, u_char, u_char, u_char))
}
typealias ether_addr_t = ether_addr
var ETHERTYPE_PUP: Int32 { get }
var ETHERTYPE_IP: Int32 { get }
var ETHERTYPE_ARP: Int32 { get }
var ETHERTYPE_REVARP: Int32 { get }
var ETHERTYPE_VLAN: Int32 { get }
var ETHERTYPE_IPV6: Int32 { get }
var ETHERTYPE_PAE: Int32 { get }
var ETHERTYPE_RSN_PREAUTH: Int32 { get }
var ETHERTYPE_PTP: Int32 { get }
var ETHERTYPE_LOOPBACK: Int32 { get }
var ETHERTYPE_IEEE802154: Int32 { get }
var ETHERTYPE_TRAIL: Int32 { get }
var ETHERTYPE_NTRAILER: Int32 { get }
func ether_hostton(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<ether_addr>!) -> Int32
func ether_line(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<ether_addr>!, _: UnsafeMutablePointer<CChar>!) -> Int32
func ether_ntoa(_: UnsafePointer<ether_addr>!) -> UnsafeMutablePointer<CChar>!
func ether_aton(_: UnsafePointer<CChar>!) -> UnsafeMutablePointer<ether_addr>!
func ether_ntohost(_: UnsafeMutablePointer<CChar>!, _: UnsafePointer<ether_addr>!) -> Int32
@available(macOS 11.0, *)
class VZMACAddress : NSObject, NSCopying {
  init(ethernetAddress: ether_addr_t)
  convenience init?(string: String)
  class func randomLocallyAdministered() -> Self
  var ethernetAddress: ether_addr_t { get }
  var string: String { get }
  var isBroadcastAddress: Bool { get }
  var isMulticastAddress: Bool { get }
  var isUnicastAddress: Bool { get }
  var isLocallyAdministeredAddress: Bool { get }
  var isUniversallyAdministeredAddress: Bool { get }
}
