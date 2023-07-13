import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component9",
	id: "component9-5ed5bb21-ff25-4425-8c44-3098f2db8771"
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
