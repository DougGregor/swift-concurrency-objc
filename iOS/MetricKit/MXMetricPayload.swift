
@available(iOS 13.0, *)
class MXMetricPayload : NSObject, NSSecureCoding {
  var latestApplicationVersion: String { get }
  var includesMultipleApplicationVersions: Bool { get }
  var timeStampBegin: Date { get }
  var timeStampEnd: Date { get }
  var cpuMetrics: MXCPUMetric? { get }
  var gpuMetrics: MXGPUMetric? { get }
  var cellularConditionMetrics: MXCellularConditionMetric? { get }
  var applicationTimeMetrics: MXAppRunTimeMetric? { get }
  var locationActivityMetrics: MXLocationActivityMetric? { get }
  var networkTransferMetrics: MXNetworkTransferMetric? { get }
  var applicationLaunchMetrics: MXAppLaunchMetric? { get }
  var applicationResponsivenessMetrics: MXAppResponsivenessMetric? { get }
  var diskIOMetrics: MXDiskIOMetric? { get }
  var memoryMetrics: MXMemoryMetric? { get }
  var displayMetrics: MXDisplayMetric? { get }
  @available(iOS 14.0, *)
  var animationMetrics: MXAnimationMetric? { get }
  @available(iOS 14.0, *)
  var applicationExitMetrics: MXAppExitMetric? { get }
  var signpostMetrics: [MXSignpostMetric]? { get }
  var metaData: MXMetaData? { get }
  func jsonRepresentation() -> Data
  @available(iOS, introduced: 13.0, deprecated: 100000)
  func dictionaryRepresentation() -> [AnyHashable : Any]
  @available(iOS 14.0, *)
  func __dictionaryRepresentation() -> [AnyHashable : Any]
}
