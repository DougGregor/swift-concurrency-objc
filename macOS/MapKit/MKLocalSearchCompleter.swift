
extension MKLocalSearchCompleter {
  @available(macOS, introduced: 10.11.4, deprecated: 10.15, message: "Use MKLocalSearchCompleterResultType")
  enum FilterType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locationsAndQueries
    case locationsOnly
  }
  @available(macOS 10.15, *)
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var address: MKLocalSearchCompleter.ResultType { get }
    static var pointOfInterest: MKLocalSearchCompleter.ResultType { get }
    static var query: MKLocalSearchCompleter.ResultType { get }
  }
}
@available(macOS 10.11.4, *)
class MKLocalSearchCompleter : NSObject {
  var queryFragment: String
  var region: MKCoordinateRegion
  @available(macOS, introduced: 10.11.4, deprecated: 10.15, message: "Use resultTypes")
  var filterType: MKLocalSearchCompleter.FilterType
  @available(macOS 10.15, *)
  var resultTypes: MKLocalSearchCompleter.ResultType
  @available(macOS 10.15, *)
  @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  weak var delegate: @sil_weak MKLocalSearchCompleterDelegate?
  var results: [MKLocalSearchCompletion] { get }
  var isSearching: Bool { get }
  func cancel()
}
@available(macOS 10.11.4, *)
protocol MKLocalSearchCompleterDelegate : NSObjectProtocol {
  @asyncHandler optional func completerDidUpdateResults(_ completer: MKLocalSearchCompleter)
  @asyncHandler optional func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error)
}
@available(macOS 10.11.4, *)
class MKLocalSearchCompletion : NSObject {
  var title: String { get }
  var titleHighlightRanges: [NSValue] { get }
  var subtitle: String { get }
  var subtitleHighlightRanges: [NSValue] { get }
}
extension MKLocalSearch.Request {
  @available(macOS 10.11.4, *)
  init(completion: MKLocalSearchCompletion)
}
