import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "comp13",
	id: "comp13-e069dc6e-51bb-4fd9-a913-e892855df1bf"
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
