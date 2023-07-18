import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp8",
	id: "comp8-b12a3c97-8b18-4adc-83e5-2ed1a7ccd914"
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
