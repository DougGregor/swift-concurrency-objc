
extension MKLocalSearch {
  @available(iOS 13.0, *)
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var address: MKLocalSearch.ResultType { get }
    static var pointOfInterest: MKLocalSearch.ResultType { get }
  }
  @available(iOS 6.1, *)
  class Request : NSObject, NSCopying {
    @available(iOS 13.0, *)
    convenience init(__naturalLanguageQuery naturalLanguageQuery: String)
    @available(iOS 13.0, *)
    convenience init(__naturalLanguageQuery naturalLanguageQuery: String, region: MKCoordinateRegion)
    var naturalLanguageQuery: String?
    var region: MKCoordinateRegion
    @available(iOS 13.0, *)
    var resultTypes: MKLocalSearch.ResultType
    @available(iOS 13.0, *)
    @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  }
}
