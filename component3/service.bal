import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component3",
	id: "component3-40031b8d-be4a-4f0a-9811-32aef29b0be5"
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
