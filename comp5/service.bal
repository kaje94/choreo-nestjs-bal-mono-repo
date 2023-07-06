import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp5",
	id: "comp5-4e1aed06-1cc3-42e6-82a0-a32466faa436"
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
