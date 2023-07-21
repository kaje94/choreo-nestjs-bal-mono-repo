import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "component17",
	id: "component17-09868cd3-13f1-4b6e-99f1-fc2c50039dba"
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
