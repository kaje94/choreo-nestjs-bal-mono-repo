import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp1",
	id: "comp1-32002dcf-9f2f-4d91-af5f-e5561ce90eb5"
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
