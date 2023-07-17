import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp9",
	id: "comp9-5d904551-e014-4c2a-b7dc-20cbbb2ba53b"
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
