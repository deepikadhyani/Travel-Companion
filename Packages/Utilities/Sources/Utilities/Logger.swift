public struct Logger {
    public init() {}
    public static func info(_ message: String) {
        #if DEBUG
        print("[INFO] \\(message)")
        #endif
    }
}
