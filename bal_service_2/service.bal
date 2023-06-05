import ballerina/http;



# A service representing a network-accessible API
# bound to port `9090`.
@display {
        label: "bal_service_2",
        id: "b8199e49-fa1d-47f3-aee3-6c87e7806ef1"
    }
service / on new http:Listener(9090) {

    @display {
        label: "bal_service_3",
        id: "b8199e49-fa1d-47f3-aee3-6c87e7806ef2"
    }
    http:Client balService3ComponentClient;

    function init() returns error? {
        self.balService3ComponentClient = check new ("");
    }

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
