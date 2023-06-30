import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component1",
	id: "component1-c7d35c1a-f145-4ce2-80d4-a6edd59086e2"
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
