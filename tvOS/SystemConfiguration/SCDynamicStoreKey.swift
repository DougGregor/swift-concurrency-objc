
func SCDynamicStoreKeyCreateNetworkGlobalEntity(_ allocator: CFAllocator?, _ domain: CFString, _ entity: CFString) -> CFString
func SCDynamicStoreKeyCreateNetworkInterface(_ allocator: CFAllocator?, _ domain: CFString) -> CFString
func SCDynamicStoreKeyCreateNetworkInterfaceEntity(_ allocator: CFAllocator?, _ domain: CFString, _ ifname: CFString, _ entity: CFString?) -> CFString
func SCDynamicStoreKeyCreateNetworkServiceEntity(_ allocator: CFAllocator?, _ domain: CFString, _ serviceID: CFString, _ entity: CFString?) -> CFString
func SCDynamicStoreKeyCreateComputerName(_ allocator: CFAllocator?) -> CFString
func SCDynamicStoreKeyCreateHostNames(_ allocator: CFAllocator?) -> CFString
func SCDynamicStoreKeyCreateLocation(_ allocator: CFAllocator?) -> CFString
func SCDynamicStoreKeyCreateProxies(_ allocator: CFAllocator?) -> CFString
