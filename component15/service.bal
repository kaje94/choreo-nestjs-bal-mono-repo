import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component15",
	id: "component15-15108934-525d-48f4-99e9-43d6b857b1c2"
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
