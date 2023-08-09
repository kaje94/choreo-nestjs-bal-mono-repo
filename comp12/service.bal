import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp12",
	id: "comp12-4d925f2d-7d3b-4b6c-af3a-e21961b27947"
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
