
@available(macOS 10.13, *)
let VNErrorDomain: String
enum VNErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OK
  case requestCancelled
  case invalidFormat
  case operationFailed
  case outOfBoundsError
  case invalidOption
  case ioError
  case missingOption
  case notImplemented
  case internalError
  case outOfMemory
  case unknownError
  case invalidOperation
  case invalidImage
  case invalidArgument
  case invalidModel
  @available(macOS 10.14, *)
  case unsupportedRevision
  @available(macOS 10.15, *)
  case dataUnavailable
  @available(macOS 11.0, *)
  case timeStampNotFound
}
