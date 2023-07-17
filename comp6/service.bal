import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp6",
	id: "comp6-78bb55bd-ff3e-47f8-bc5a-aa0d75cf557c"
}
//
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
