
func IOUSBHostCIMessageStatusToIOReturn(_ status: IOUSBHostCIMessageStatus) -> IOReturn
func IOUSBHostCIMessageStatusFromIOReturn(_ status: IOReturn) -> IOUSBHostCIMessageStatus
func IOUSBHostCILinkStateEnabled(_ linkState: IOUSBHostCILinkState) -> Bool
func IOUSBHostCIMessageTypeToString(_ type: IOUSBHostCIMessageType) -> UnsafePointer<CChar>!
func IOUSBHostCIMessageStatusToString(_ status: IOUSBHostCIMessageStatus) -> UnsafePointer<CChar>!
func IOUSBHostCILinkStateToString(_ linkState: IOUSBHostCILinkState) -> UnsafePointer<CChar>!
func IOUSBHostCIDeviceSpeedToString(_ speed: IOUSBHostCIDeviceSpeed) -> UnsafePointer<CChar>!
