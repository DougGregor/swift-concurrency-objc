
extension INDailyRoutineRelevanceProvider {
  @available(tvOS 12.0, *)
  enum Situation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case morning
    case evening
    case home
    case work
    case school
    case gym
    @available(tvOS 13.0, *)
    case commute
    @available(tvOS 13.0, *)
    case headphonesConnected
    @available(tvOS 13.0, *)
    case activeWorkout
    @available(tvOS 13.0, *)
    case physicalActivityIncomplete
  }
}
@available(tvOS 12.0, *)
class INRelevanceProvider : NSObject, NSCopying, NSSecureCoding {
}
@available(tvOS 12.0, *)
class INDateRelevanceProvider : INRelevanceProvider {
  var startDate: Date { get }
  var endDate: Date? { get }
  init(start startDate: Date, end endDate: Date?)
}
@available(tvOS 12.0, *)
class INLocationRelevanceProvider : INRelevanceProvider {
  @NSCopying var region: CLRegion { get }
  init(region: CLRegion)
}
@available(tvOS 12.0, *)
class INDailyRoutineRelevanceProvider : INRelevanceProvider {
  var situation: INDailyRoutineRelevanceProvider.Situation { get }
  init(situation: INDailyRoutineRelevanceProvider.Situation)
}
