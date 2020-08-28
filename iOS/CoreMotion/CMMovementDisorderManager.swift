
@available(iOS 12.0, *)
class CMDyskineticSymptomResult : NSObject, NSCopying, NSSecureCoding {
  var startDate: Date { get }
  var endDate: Date { get }
  var percentUnlikely: Float { get }
  var percentLikely: Float { get }
}
@available(iOS 12.0, *)
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
