import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component16",
	id: "component16-bbd3646d-a6cc-4434-8c68-8b28089d606c"
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
