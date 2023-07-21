import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component13",
	id: "component13-30e84e84-7af1-40d5-ba88-0d39a9c98cab"
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
