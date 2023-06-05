import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "bal_service_1",
    id: "bal_service_1-04c87f61-65ca-40d4-93ab-8baf9d8ad076"
}
service / on new http:Listener(9090) {
    @display {
        label: "bal_service_2",
        id: "b8199e49-fa1d-47f3-aee3-6c87e7806ef1"
    }
    http:Client balService2Client;

    @display {
        label: "bal_service_3",
        id: "daa15d46-c1f5-433f-990f-383d85c68dbb"
    }
    http:Client balService3ComponentClient;

    function init() returns error? {
        self.balService2Client = check new ("");
        self.balService3ComponentClient = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting2(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }

    resource function get greeting1(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
