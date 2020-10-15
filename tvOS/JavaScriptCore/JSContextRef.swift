
func JSContextGroupCreate() -> JSContextGroupRef!
func JSContextGroupRetain(_ group: JSContextGroupRef!) -> JSContextGroupRef!
func JSContextGroupRelease(_ group: JSContextGroupRef!)
func JSGlobalContextCreate(_ globalObjectClass: JSClassRef!) -> JSGlobalContextRef!
func JSGlobalContextCreateInGroup(_ group: JSContextGroupRef!, _ globalObjectClass: JSClassRef!) -> JSGlobalContextRef!
func JSGlobalContextRetain(_ ctx: JSGlobalContextRef!) -> JSGlobalContextRef!
func JSGlobalContextRelease(_ ctx: JSGlobalContextRef!)
func JSContextGetGlobalObject(_ ctx: JSContextRef!) -> JSObjectRef!
func JSContextGetGroup(_ ctx: JSContextRef!) -> JSContextGroupRef!
func JSContextGetGlobalContext(_ ctx: JSContextRef!) -> JSGlobalContextRef!
func JSGlobalContextCopyName(_ ctx: JSGlobalContextRef!) -> JSStringRef!
func JSGlobalContextSetName(_ ctx: JSGlobalContextRef!, _ name: JSStringRef!)
