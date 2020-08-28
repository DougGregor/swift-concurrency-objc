
@available(tvOS 14.0, *)
class MXHangDiagnostic : MXDiagnostic {
  var callStackTree: MXCallStackTree { get }
  var hangDuration: Measurement<UnitDuration> { get }
}
