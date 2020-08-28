
@available(iOS 14.0, *)
class MXCPUExceptionDiagnostic : MXDiagnostic {
  var callStackTree: MXCallStackTree { get }
  var totalCPUTime: Measurement<UnitDuration> { get }
  var totalSampledTime: Measurement<UnitDuration> { get }
}
