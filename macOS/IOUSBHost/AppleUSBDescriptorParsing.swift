
func IOUSBGetNextDescriptor(_ configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor>!, _ currentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!) -> UnsafePointer<IOUSBDescriptorHeader>!
func IOUSBGetNextDescriptorWithType(_ configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor>!, _ currentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!, _ type: UInt8) -> UnsafePointer<IOUSBDescriptorHeader>!
func IOUSBGetNextAssociatedDescriptor(_ configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor>!, _ parentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!, _ currentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!) -> UnsafePointer<IOUSBDescriptorHeader>!
func IOUSBGetNextAssociatedDescriptorWithType(_ configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor>!, _ parentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!, _ currentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!, _ type: UInt8) -> UnsafePointer<IOUSBDescriptorHeader>!
func IOUSBGetNextInterfaceAssociationDescriptor(_ configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor>!, _ currentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!) -> UnsafePointer<IOUSBInterfaceAssociationDescriptor>!
func IOUSBGetNextInterfaceDescriptor(_ configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor>!, _ currentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!) -> UnsafePointer<IOUSBInterfaceDescriptor>!
func IOUSBGetNextEndpointDescriptor(_ configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor>!, _ interfaceDescriptor: UnsafePointer<IOUSBInterfaceDescriptor>!, _ currentDescriptor: UnsafePointer<IOUSBDescriptorHeader>!) -> UnsafePointer<IOUSBEndpointDescriptor>!
func IOUSBGetNextCapabilityDescriptor(_ bosDescriptor: UnsafePointer<IOUSBBOSDescriptor>!, _ currentDescriptor: UnsafePointer<IOUSBDeviceCapabilityDescriptorHeader>!) -> UnsafePointer<IOUSBDeviceCapabilityDescriptorHeader>!
func IOUSBGetNextCapabilityDescriptorWithType(_ bosDescriptor: UnsafePointer<IOUSBBOSDescriptor>!, _ currentDescriptor: UnsafePointer<IOUSBDeviceCapabilityDescriptorHeader>!, _ type: UInt8) -> UnsafePointer<IOUSBDeviceCapabilityDescriptorHeader>!
func IOUSBGetUSB20ExtensionDeviceCapabilityDescriptor(_ bosDescriptor: UnsafePointer<IOUSBBOSDescriptor>!) -> UnsafePointer<IOUSBDeviceCapabilityUSB2Extension>!
func IOUSBGetSuperSpeedDeviceCapabilityDescriptor(_ bosDescriptor: UnsafePointer<IOUSBBOSDescriptor>!) -> UnsafePointer<IOUSBDeviceCapabilitySuperSpeedUSB>!
func IOUSBGetSuperSpeedPlusDeviceCapabilityDescriptor(_ bosDescriptor: UnsafePointer<IOUSBBOSDescriptor>!) -> UnsafePointer<IOUSBDeviceCapabilitySuperSpeedPlusUSB>!
func IOUSBGetContainerIDDescriptor(_ bosDescriptor: UnsafePointer<IOUSBBOSDescriptor>!) -> UnsafePointer<IOUSBDeviceCapabilityContainerID>!
func IOUSBGetPlatformCapabilityDescriptor(_ bosDescriptor: UnsafePointer<IOUSBBOSDescriptor>!) -> UnsafePointer<IOUSBPlatformCapabilityDescriptor>!
func IOUSBGetBillboardDescriptor(_ bosDescriptor: UnsafePointer<IOUSBBOSDescriptor>!) -> UnsafePointer<IOUSBDeviceCapabilityBillboard>!
func IOUSBGetEndpointDirection(_ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!) -> UInt8
func IOUSBGetEndpointAddress(_ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!) -> UInt8
func IOUSBGetEndpointNumber(_ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!) -> UInt8
func IOUSBGetEndpointType(_ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!) -> UInt8
func IOUSBGetEndpointMaxPacketSize(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!) -> UInt16
func IOUSBGetEndpointBurstSize(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!, _ companionDescriptor: UnsafePointer<IOUSBSuperSpeedEndpointCompanionDescriptor>!, _ sspCompanionDescriptor: UnsafePointer<IOUSBSuperSpeedPlusIsochronousEndpointCompanionDescriptor>!) -> UInt32
func IOUSBGetEndpointMult(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!, _ companionDescriptor: UnsafePointer<IOUSBSuperSpeedEndpointCompanionDescriptor>!, _ sspCompanionDescriptor: UnsafePointer<IOUSBSuperSpeedPlusIsochronousEndpointCompanionDescriptor>!) -> UInt8
func IOUSBGetEndpointIntervalEncodedMicroframes(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!) -> UInt32
func IOUSBGetEndpointIntervalMicroframes(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!) -> UInt32
func IOUSBGetEndpointIntervalFrames(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!) -> UInt32
func IOUSBGetEndpointMaxStreamsEncoded(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!, _ companionDescriptor: UnsafePointer<IOUSBSuperSpeedEndpointCompanionDescriptor>!) -> UInt32
func IOUSBGetEndpointMaxStreams(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBEndpointDescriptor>!, _ companionDescriptor: UnsafePointer<IOUSBSuperSpeedEndpointCompanionDescriptor>!) -> UInt32
func IOUSBGetConfigurationMaxPowerMilliAmps(_ usbDeviceSpeed: UInt32, _ descriptor: UnsafePointer<IOUSBConfigurationDescriptor>!) -> UInt32
