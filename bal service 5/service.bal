import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "bal service 5",
	id: "bal service 5-789e9a5b-4e2c-415a-9b36-f19413711980"
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
