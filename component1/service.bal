import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component1",
	id: "component1-b8d8b8ae-a8b7-43ac-837b-a2b8a85ee1eb"
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
