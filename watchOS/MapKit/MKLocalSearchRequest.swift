
extension MKLocalSearch {
  @available(watchOS 6.0, *)
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var address: MKLocalSearch.ResultType { get }
    static var pointOfInterest: MKLocalSearch.ResultType { get }
  }
  @available(watchOS 2.0, *)
  class Request : NSObject, NSCopying {
    @available(watchOS 6.0, *)
    convenience init(__naturalLanguageQuery naturalLanguageQuery: String)
    @available(watchOS 6.0, *)
    convenience init(__naturalLanguageQuery naturalLanguageQuery: String, region: MKCoordinateRegion)
    var naturalLanguageQuery: String?
    var region: MKCoordinateRegion
    @available(watchOS 6.0, *)
    var resultTypes: MKLocalSearch.ResultType
    @available(watchOS 6.0, *)
    @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  }
}
