
extension MKLocalSearchCompleter {
  @available(watchOS, introduced: 2.3, deprecated: 6.0, message: "Use MKLocalSearchCompleterResultType")
  enum FilterType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locationsAndQueries
    case locationsOnly
  }
  @available(watchOS 6.0, *)
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var address: MKLocalSearchCompleter.ResultType { get }
    static var pointOfInterest: MKLocalSearchCompleter.ResultType { get }
    static var query: MKLocalSearchCompleter.ResultType { get }
  }
}
@available(watchOS 2.3, *)
class MKLocalSearchCompleter : NSObject {
  var queryFragment: String
  var region: MKCoordinateRegion
  @available(watchOS, introduced: 2.3, deprecated: 6.0, message: "Use resultTypes")
  var filterType: MKLocalSearchCompleter.FilterType
  @available(watchOS 6.0, *)
  var resultTypes: MKLocalSearchCompleter.ResultType
  @available(watchOS 6.0, *)
  @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  weak var delegate: @sil_weak MKLocalSearchCompleterDelegate?
  var results: [MKLocalSearchCompletion] { get }
  var isSearching: Bool { get }
  func cancel()
}
@available(watchOS 2.3, *)
protocol MKLocalSearchCompleterDelegate : NSObjectProtocol {
  optional func completerDidUpdateResults(_ completer: MKLocalSearchCompleter)
  optional func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error)
}
@available(watchOS 2.3, *)
class MKLocalSearchCompletion : NSObject {
  var title: String { get }
  var titleHighlightRanges: [NSValue] { get }
  var subtitle: String { get }
  var subtitleHighlightRanges: [NSValue] { get }
}
extension MKLocalSearch.Request {
  @available(watchOS 2.3, *)
  init(completion: MKLocalSearchCompletion)
}
