
@available(watchOS 5.0, *)
class CMDyskineticSymptomResult : NSObject, NSCopying, NSSecureCoding {
  var startDate: Date { get }
  var endDate: Date { get }
  var percentUnlikely: Float { get }
  var percentLikely: Float { get }
}
@available(watchOS 5.0, *)
class CMTremorResult : NSObject, NSCopying, NSSecureCoding {
  var startDate: Date { get }
  var endDate: Date { get }
  var percentUnknown: Float { get }
  var percentNone: Float { get }
  var percentSlight: Float { get }
  var percentMild: Float { get }
  var percentModerate: Float { get }
  var percentStrong: Float { get }
}
@available(watchOS 5.0, *)
typealias CMDyskineticSymptomResultHandler = ([CMDyskineticSymptomResult], Error?) -> Void
@available(watchOS 5.0, *)
typealias CMTremorResultHandler = ([CMTremorResult], Error?) -> Void
@available(watchOS 5.0, *)
class CMMovementDisorderManager : NSObject {
  class func isAvailable() -> Bool
  class func authorizationStatus() -> CMAuthorizationStatus
  func monitorKinesias(forDuration duration: TimeInterval)
  func queryDyskineticSymptom(from fromDate: Date, to toDate: Date, withHandler handler: @escaping CMDyskineticSymptomResultHandler)
  func queryTremor(from fromDate: Date, to toDate: Date, withHandler handler: @escaping CMTremorResultHandler)
  func lastProcessedDate() -> Date?
  func monitorKinesiasExpirationDate() -> Date?
}
