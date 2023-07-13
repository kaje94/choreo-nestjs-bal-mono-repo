import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component5",
	id: "component5-bb4ee0b0-f5f4-4136-a2f2-3455e7716203"
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
