import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp8",
	id: "comp8-d7e0d44e-22d4-4e8a-8a59-f984708786e2"
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
