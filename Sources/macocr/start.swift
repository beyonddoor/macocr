import ArgumentParser
@available(macOS 11.0, *)
@main
struct Repeat: ArgumentParser.ParsableCommand {
    @Flag(inversion: FlagInversion.prefixedNo, help: "fast")
    var fast = false
    
    @Flag(inversion: FlagInversion.prefixedNo, help: "fast")
    var prettifyText = false


    // @Option(name: .shortAndLong, help: "User word file")
    // var wordfile: String?

    @Argument(completion: .file(extensions: ["jpg","jpeg","png","tiff"]))
    var files: [String] = []

    mutating func run() throws {
        Runner.run(context: self)
    }
}
