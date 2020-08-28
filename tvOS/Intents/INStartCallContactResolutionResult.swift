
@available(tvOS 13.0, *)
enum INStartCallContactUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noContactFound
  case multipleContactsUnsupported
  case noHandleForLabel
  case invalidHandle
  case unsupportedMmiUssd
  @available(tvOS, introduced: 13.0, deprecated: 14.0)
  case noCallHistoryForRedial
  case noUsableHandleForRedial
}
@available(tvOS 13.0, *)
class INStartCallContactResolutionResult : INPersonResolutionResult {
  class func unsupported(forReason reason: INStartCallContactUnsupportedReason) -> Self
  init(personResolutionResult: INPersonResolutionResult)
}
