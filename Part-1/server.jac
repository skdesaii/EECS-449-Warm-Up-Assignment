walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker presidential_candidate {
    has name: str;
    has party: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "! You are affiliated with the " + self.party + " party."
        };
    }
}

walker area_of_trapezoid {
    has base_1: float;
    has base_2: float;
    has height: float;

    can return_message with `root entry {
    report {
        "response": "The area of the trapezoid with b1 = " + str(self.base_1) +
                    ", b2 = " + str(self.base_2) + ", and height = " + str(self.height) +
                    " is = " + str(0.5 * self.height * (self.base_1 + self.base_2))
        };
    }

}

