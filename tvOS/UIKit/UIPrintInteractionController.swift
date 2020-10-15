
extension UIPrintInteractionController {
}
extension UIPrinter {
  @available(tvOS 9.0, *)
  @available(tvOS, unavailable)
  enum CutterBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case noCut
    case printerDefault
    case cutAfterEachPage
    case cutAfterEachCopy
    case cutAfterEachJob
  }
}
