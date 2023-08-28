import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp15",
	id: "comp15-11349866-3f35-4b84-aed8-aa2a0d2601dd"
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
