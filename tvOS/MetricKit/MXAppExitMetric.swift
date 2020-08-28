
@available(tvOS 14.0, *)
class MXForegroundExitData : NSObject, NSSecureCoding {
  var cumulativeNormalAppExitCount: Int { get }
  var cumulativeMemoryResourceLimitExitCount: Int { get }
  var cumulativeBadAccessExitCount: Int { get }
  var cumulativeAbnormalExitCount: Int { get }
  var cumulativeIllegalInstructionExitCount: Int { get }
  var cumulativeAppWatchdogExitCount: Int { get }
}
@available(tvOS 14.0, *)
class MXBackgroundExitData : NSObject, NSSecureCoding {
  var cumulativeNormalAppExitCount: Int { get }
  var cumulativeMemoryResourceLimitExitCount: Int { get }
  var cumulativeCPUResourceLimitExitCount: Int { get }
  var cumulativeMemoryPressureExitCount: Int { get }
  var cumulativeBadAccessExitCount: Int { get }
  var cumulativeAbnormalExitCount: Int { get }
  var cumulativeIllegalInstructionExitCount: Int { get }
  var cumulativeAppWatchdogExitCount: Int { get }
  var cumulativeSuspendedWithLockedFileExitCount: Int { get }
  var cumulativeBackgroundTaskAssertionTimeoutExitCount: Int { get }
}
@available(tvOS 14.0, *)
class MXAppExitMetric : MXMetric {
  var foregroundExitData: MXForegroundExitData { get }
  var backgroundExitData: MXBackgroundExitData { get }
}
