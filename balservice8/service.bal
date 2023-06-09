import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "balservice8",
	id: "balservice8-d552d482-8f74-4ff7-95e5-17c3123055ad"
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
