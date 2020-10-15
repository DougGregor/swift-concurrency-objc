
extension INDailyRoutineRelevanceProvider {
  @available(watchOS 5.0, *)
  enum Situation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case morning
    case evening
    case home
    case work
    case school
    case gym
    @available(watchOS 6.0, *)
    case commute
    @available(watchOS 6.0, *)
    case headphonesConnected
    @available(watchOS 6.0, *)
    case activeWorkout
    @available(watchOS 6.0, *)
    case physicalActivityIncomplete
  }
}
@available(watchOS 5.0, *)
class INRelevanceProvider : NSObject, NSCopying, NSSecureCoding {
}
@available(watchOS 5.0, *)
class INDateRelevanceProvider : INRelevanceProvider {
  var startDate: Date { get }
  var endDate: Date? { get }
  init(start startDate: Date, end endDate: Date?)
}
@available(watchOS 5.0, *)
class INLocationRelevanceProvider : INRelevanceProvider {
  @NSCopying var region: CLRegion { get }
  init(region: CLRegion)
}
@available(watchOS 5.0, *)
class INDailyRoutineRelevanceProvider : INRelevanceProvider {
  var situation: INDailyRoutineRelevanceProvider.Situation { get }
  init(situation: INDailyRoutineRelevanceProvider.Situation)
}
