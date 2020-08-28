
extension MKLocalSearch {
  @available(macOS 10.15, *)
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var address: MKLocalSearch.ResultType { get }
    static var pointOfInterest: MKLocalSearch.ResultType { get }
  }
  @available(macOS 10.9, *)
  class Request : NSObject, NSCopying {
    @available(macOS 10.15, *)
    convenience init(__naturalLanguageQuery naturalLanguageQuery: String)
    @available(macOS 10.15, *)
    convenience init(__naturalLanguageQuery naturalLanguageQuery: String, region: MKCoordinateRegion)
    var naturalLanguageQuery: String?
    var region: MKCoordinateRegion
    @available(macOS 10.15, *)
    var resultTypes: MKLocalSearch.ResultType
    @available(macOS 10.15, *)
    @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  }
}
