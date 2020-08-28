
@available(macOS 10.9, *)
struct MKDirectionsTransportType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var automobile: MKDirectionsTransportType { get }
  static var walking: MKDirectionsTransportType { get }
  @available(macOS 10.11, *)
  static var transit: MKDirectionsTransportType { get }
  static var any: MKDirectionsTransportType { get }
}
