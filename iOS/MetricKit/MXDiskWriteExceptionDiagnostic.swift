
@available(iOS 14.0, *)
class MXDiskWriteExceptionDiagnostic : MXDiagnostic {
  var callStackTree: MXCallStackTree { get }
  var totalWritesCaused: Measurement<UnitInformationStorage> { get }
}
