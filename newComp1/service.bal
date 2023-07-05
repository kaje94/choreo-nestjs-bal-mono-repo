import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "newComp1",
	id: "newComp1-8e87bf72-51f4-42cf-8fa0-f21a101ef93c"
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
