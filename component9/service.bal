import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component9",
	id: "component9-148c41d8-dd08-4367-bdb7-a000c0686312"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
