
@available(watchOS 6.0, *)
enum INStartCallContactUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noContactFound
  case multipleContactsUnsupported
  case noHandleForLabel
  case invalidHandle
  case unsupportedMmiUssd
  @available(watchOS, introduced: 6.0, deprecated: 7.0)
  case noCallHistoryForRedial
  case noUsableHandleForRedial
}
@available(watchOS 6.0, *)
class INStartCallContactResolutionResult : INPersonResolutionResult {
  class func unsupported(forReason reason: INStartCallContactUnsupportedReason) -> Self
  init(personResolutionResult: INPersonResolutionResult)
}
