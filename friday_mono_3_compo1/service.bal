import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "friday_mono_3_compo1",
	id: "friday_mono_3_compo1-4da8b92d-2c53-4b23-98b5-93aa04a85249"
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
