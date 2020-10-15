
struct IOUSBHostCIUserClientVersion : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIUserClientVersion100: IOUSBHostCIUserClientVersion { get }
struct IOUSBHostCIExceptionType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIExceptionTypeUnknown: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeCapabilitiesInvalid: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeTerminated: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeCommandReadCollision: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeCommandWriteFailed: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeCommandTimeout: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeCommandFailure: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeInterruptInvalid: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeInterruptOverflow: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeDoorbellReadCollision: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeDoorbellOverflow: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeProtocolError: IOUSBHostCIExceptionType { get }
var IOUSBHostCIExceptionTypeFrameUpdateError: IOUSBHostCIExceptionType { get }
struct IOUSBHostCIMessage {
  var control: UInt32
  var data0: UInt32
  var data1: UInt64
  init()
  init(control: UInt32, data0: UInt32, data1: UInt64)
}
var IOUSBHostCIMessageControlType: Int { get }
var IOUSBHostCIMessageControlTypePhase: Int { get }
var IOUSBHostCIMessageControlStatus: Int { get }
var IOUSBHostCIMessageControlStatusPhase: Int { get }
var IOUSBHostCIMessageControlNoResponse: Int { get }
var IOUSBHostCIMessageControlValid: Int { get }
var IOUSBHostCIPortEventMessageData0PortNumber: Int { get }
var IOUSBHostCIPortEventMessageData0PortNumberPhase: Int { get }
var IOUSBHostCICapabilitiesMessageControlPortCount: Int { get }
var IOUSBHostCICapabilitiesMessageControlPortCountPhase: Int { get }
var IOUSBHostCICapabilitiesMessageData0CommandTimeoutThreshold: Int { get }
var IOUSBHostCICapabilitiesMessageData0CommandTimeoutThresholdPhase: Int { get }
var IOUSBHostCICapabilitiesMessageData0ConnectionLatency: Int { get }
var IOUSBHostCICapabilitiesMessageData0ConnectionLatencyPhase: Int { get }
var IOUSBHostCIPortCapabilitiesMessageControlPortNumber: UInt32 { get }
var IOUSBHostCIPortCapabilitiesMessageControlPortNumberPhase: UInt32 { get }
var IOUSBHostCIPortCapabilitiesMessageControlInternalConnector: UInt32 { get }
var IOUSBHostCIPortCapabilitiesMessageControlConnectorType: UInt32 { get }
var IOUSBHostCIPortCapabilitiesMessageControlConnectorTypePhase: UInt32 { get }
var IOUSBHostCIPortCapabilitiesMessageData0MaxPower: UInt32 { get }
var IOUSBHostCIPortCapabilitiesMessageData0MaxPowerPhase: UInt32 { get }
var IOUSBHostCICommandMessageControlStatus: UInt32 { get }
var IOUSBHostCICommandMessageControlStatusPhase: UInt32 { get }
var IOUSBHostCICommandMessageData0RootPort: UInt32 { get }
var IOUSBHostCICommandMessageData0RootPortPhase: UInt32 { get }
var IOUSBHostCICommandMessageData0DeviceAddress: UInt32 { get }
var IOUSBHostCICommandMessageData0DeviceAddressPhase: UInt32 { get }
var IOUSBHostCICommandMessageData0EndpointAddress: UInt32 { get }
var IOUSBHostCICommandMessageData0EndpointAddressPhase: UInt32 { get }
var IOUSBHostCICommandMessageData0StreamID: UInt32 { get }
var IOUSBHostCICommandMessageData0StreamIDPhase: UInt32 { get }
var IOUSBHostCIPortStatusCommandData1Powered: Int { get }
var IOUSBHostCIPortStatusCommandData1Overcurrent: Int { get }
var IOUSBHostCIPortStatusCommandData1Connected: Int { get }
var IOUSBHostCIPortStatusCommandData1LinkState: Int { get }
var IOUSBHostCIPortStatusCommandData1LinkStatePhase: Int { get }
var IOUSBHostCIPortStatusCommandData1Speed: Int { get }
var IOUSBHostCIPortStatusCommandData1SpeedPhase: Int { get }
var IOUSBHostCIPortStatusCommandData1OvercurrentChange: Int { get }
var IOUSBHostCIPortStatusCommandData1ConnectChange: Int { get }
var IOUSBHostCIPortStatusCommandData1LinkStateChange: Int { get }
var IOUSBHostCIPortStatusCommandData1ChangeMask: Int { get }
var IOUSBHostCIDeviceCreateCommandData0RootPort: Int { get }
var IOUSBHostCIDeviceCreateCommandData0RootPortPhase: Int { get }
var IOUSBHostCIDeviceCreateCommandData0Route: Int { get }
var IOUSBHostCIDeviceCreateCommandData0RoutePhase: Int { get }
var IOUSBHostCIDeviceCreateCommandData1DeviceAddress: Int { get }
var IOUSBHostCIDeviceCreateCommandData1DeviceAddressPhase: Int { get }
var IOUSBHostCIEndpointCreateCommandData1Descriptor: UInt { get }
var IOUSBHostCIEndpointCreateCommandData1DescriptorPhase: UInt { get }
var IOUSBHostCIEndpointResetCommandData1ClearState: Int { get }
var IOUSBHostCIEndpointSetNextTransferCommandData1Address: UInt { get }
var IOUSBHostCIEndpointSetNextTransferCommandData1AddressPhase: UInt { get }
var IOUSBHostCISetupTransferData1bmRequestType: UInt { get }
var IOUSBHostCISetupTransferData1bmRequestTypePhase: UInt { get }
var IOUSBHostCISetupTransferData1bRequest: UInt { get }
var IOUSBHostCISetupTransferData1bRequestPhase: UInt { get }
var IOUSBHostCISetupTransferData1wValue: UInt { get }
var IOUSBHostCISetupTransferData1wValuePhase: UInt { get }
var IOUSBHostCISetupTransferData1wIndex: UInt { get }
var IOUSBHostCISetupTransferData1wIndexPhase: UInt { get }
var IOUSBHostCISetupTransferData1wLength: UInt { get }
var IOUSBHostCISetupTransferData1wLengthPhase: UInt { get }
var IOUSBHostCINormalTransferData0Length: Int { get }
var IOUSBHostCINormalTransferData0LengthPhase: Int { get }
var IOUSBHostCIIsochronousTransferControlFrameNumber: Int { get }
var IOUSBHostCIIsochronousTransferControlFrameNumberPhase: Int { get }
var IOUSBHostCIIsochronousTransferControlASAP: Int { get }
var IOUSBHostCIIsochronousTransferData0Length: Int { get }
var IOUSBHostCIIsochronousTransferData0LengthPhase: Int { get }
var IOUSBHostCITransferCompletionMessageControlStatus: UInt { get }
var IOUSBHostCITransferCompletionMessageControlStatusPhase: UInt { get }
var IOUSBHostCITransferCompletionMessageControlDeviceAddress: UInt { get }
var IOUSBHostCITransferCompletionMessageControlDeviceAddressPhase: UInt { get }
var IOUSBHostCITransferCompletionMessageControlEndpointAddress: UInt { get }
var IOUSBHostCITransferCompletionMessageControlEndpointAddressPhase: UInt { get }
var IOUSBHostCITransferCompletionMessageData0TransferLength: UInt { get }
var IOUSBHostCITransferCompletionMessageData0TransferLengthPhase: UInt { get }
var IOUSBHostCITransferCompletionMessageData1TransferStructure: UInt { get }
var IOUSBHostCITransferCompletionMessageData1TransferStructurePhase: UInt { get }
struct IOUSBHostCIMessageType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIMessageTypeControllerCapabilities: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortCapabilities: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortEvent: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeFrameNumberUpdate: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeFrameTimestampUpdate: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeCommandMin: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeControllerPowerOn: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeControllerPowerOff: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeControllerStart: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeControllerPause: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeControllerFrameNumber: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortPowerOn: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortPowerOff: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortResume: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortSuspend: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortReset: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortDisable: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypePortStatus: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeDeviceCreate: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeDeviceDestroy: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeDeviceStart: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeDevicePause: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeDeviceUpdate: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeEndpointCreate: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeEndpointDestroy: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeEndpoint_reserved_: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeEndpointPause: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeEndpointUpdate: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeEndpointReset: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeEndpointSetNextTransfer: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeCommandMax: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeSetupTransfer: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeNormalTransfer: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeStatusTransfer: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeIsochronousTransfer: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeLink: IOUSBHostCIMessageType { get }
var IOUSBHostCIMessageTypeTransferComplete: IOUSBHostCIMessageType { get }
struct IOUSBHostCIMessageStatus : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIMessageStatusReserved: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusSuccess: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusOffline: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusNotPermitted: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusBadArgument: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusTimeout: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusNoResources: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusEndpointStopped: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusProtocolError: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusTransactionError: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusOverrunError: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusStallError: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusMissedServiceError: IOUSBHostCIMessageStatus { get }
var IOUSBHostCIMessageStatusError: IOUSBHostCIMessageStatus { get }
struct IOUSBHostCIDeviceSpeed : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIDeviceSpeedNone: IOUSBHostCIDeviceSpeed { get }
var IOUSBHostCIDeviceSpeedFull: IOUSBHostCIDeviceSpeed { get }
var IOUSBHostCIDeviceSpeedLow: IOUSBHostCIDeviceSpeed { get }
var IOUSBHostCIDeviceSpeedHigh: IOUSBHostCIDeviceSpeed { get }
var IOUSBHostCIDeviceSpeedSuper: IOUSBHostCIDeviceSpeed { get }
var IOUSBHostCIDeviceSpeedSuperPlus: IOUSBHostCIDeviceSpeed { get }
var IOUSBHostCIDeviceSpeedSuperPlusBy2: IOUSBHostCIDeviceSpeed { get }
struct IOUSBHostCIControllerState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIControllerStateOff: IOUSBHostCIControllerState { get }
var IOUSBHostCIControllerStatePaused: IOUSBHostCIControllerState { get }
var IOUSBHostCIControllerStateActive: IOUSBHostCIControllerState { get }
struct IOUSBHostCIPortState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIPortStateOff: IOUSBHostCIPortState { get }
var IOUSBHostCIPortStatePowered: IOUSBHostCIPortState { get }
var IOUSBHostCIPortStateSuspended: IOUSBHostCIPortState { get }
var IOUSBHostCIPortStateActive: IOUSBHostCIPortState { get }
struct IOUSBHostCILinkState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCILinkStateU0: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateU1: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateU2: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateU3: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateDisabled: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateRxDetect: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateInactive: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStatePolling: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateRecovery: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateReset: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateCompliance: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateTest: IOUSBHostCILinkState { get }
var IOUSBHostCILinkStateResume: IOUSBHostCILinkState { get }
struct IOUSBHostCIDeviceState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIDeviceStateDestroyed: IOUSBHostCIDeviceState { get }
var IOUSBHostCIDeviceStatePaused: IOUSBHostCIDeviceState { get }
var IOUSBHostCIDeviceStateActive: IOUSBHostCIDeviceState { get }
struct IOUSBHostCIEndpointState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOUSBHostCIEndpointStateDestroyed: IOUSBHostCIEndpointState { get }
var IOUSBHostCIEndpointStateHalted: IOUSBHostCIEndpointState { get }
var IOUSBHostCIEndpointStatePaused: IOUSBHostCIEndpointState { get }
var IOUSBHostCIEndpointStateActive: IOUSBHostCIEndpointState { get }
typealias IOUSBHostCIDoorbell = UInt32
var IOUSBHostCIDoorbellDeviceAddress: UInt32 { get }
var IOUSBHostCIDoorbellDeviceAddressPhase: UInt32 { get }
var IOUSBHostCIDoorbellEndpointAddress: UInt32 { get }
var IOUSBHostCIDoorbellEndpointAddressPhase: UInt32 { get }
var IOUSBHostCIDoorbellStreamID: UInt32 { get }
var IOUSBHostCIDoorbellStreamIDPhase: UInt32 { get }
typealias IOUSBHostCIPortStatus = UInt32
var IOUSBHostCIPortStatusPowered: Int { get }
var IOUSBHostCIPortStatusOvercurrent: Int { get }
var IOUSBHostCIPortStatusConnected: Int { get }
var IOUSBHostCIPortStatusLinkState: Int { get }
var IOUSBHostCIPortStatusLinkStatePhase: Int { get }
var IOUSBHostCIPortStatusSpeed: Int { get }
var IOUSBHostCIPortStatusSpeedPhase: Int { get }
var IOUSBHostCIPortStatusOvercurrentChange: Int { get }
var IOUSBHostCIPortStatusConnectChange: Int { get }
var IOUSBHostCIPortStatusLinkStateChange: Int { get }
var IOUSBHostCIPortStatusChangeMask: Int { get }
