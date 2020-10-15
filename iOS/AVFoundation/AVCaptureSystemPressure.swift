
extension AVCaptureDevice.SystemPressureState {
  @available(iOS 11.1, *)
  struct Level : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(iOS 11.1, *)
  struct Factors : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var systemTemperature: AVCaptureDevice.SystemPressureState.Factors { get }
    static var peakPower: AVCaptureDevice.SystemPressureState.Factors { get }
    static var depthModuleTemperature: AVCaptureDevice.SystemPressureState.Factors { get }
  }
}
extension AVCaptureDevice.SystemPressureState.Level {
  @available(iOS 11.1, *)
  static let nominal: AVCaptureDevice.SystemPressureState.Level
  @available(iOS 11.1, *)
  static let fair: AVCaptureDevice.SystemPressureState.Level
  @available(iOS 11.1, *)
  static let serious: AVCaptureDevice.SystemPressureState.Level
  @available(iOS 11.1, *)
  static let critical: AVCaptureDevice.SystemPressureState.Level
  @available(iOS 11.1, *)
  static let shutdown: AVCaptureDevice.SystemPressureState.Level
}
extension AVCaptureDevice {
  @available(iOS 11.1, *)
  class SystemPressureState : NSObject {
    var level: AVCaptureDevice.SystemPressureState.Level { get }
    var factors: AVCaptureDevice.SystemPressureState.Factors { get }
  }
}
