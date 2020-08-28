
struct MKPointOfInterestCategory : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MKPointOfInterestCategory {
  @available(macOS 10.15, *)
  static let airport: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let amusementPark: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let aquarium: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let atm: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let bakery: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let bank: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let beach: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let brewery: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let cafe: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let campground: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let carRental: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let evCharger: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let fireStation: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let fitnessCenter: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let foodMarket: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let gasStation: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let hospital: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let hotel: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let laundry: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let library: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let marina: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let movieTheater: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let museum: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let nationalPark: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let nightlife: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let park: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let parking: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let pharmacy: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let police: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let postOffice: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let publicTransport: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let restaurant: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let restroom: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let school: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let stadium: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let store: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let theater: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let university: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let winery: MKPointOfInterestCategory
  @available(macOS 10.15, *)
  static let zoo: MKPointOfInterestCategory
}
