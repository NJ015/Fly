<?php
class Passenger {
    private $profile;
    private $feedback;

    public function __construct($profile, $feedback) {
        $this->profile = $profile;
        $this->feedback = $feedback;
    }

    public function bookTicket($id) {
        //available seats - 1 bil specific flight
        //save the reserved seat in the name of that passenger
        //ticket generation + send confirmation msg(email/sms)
    }

    public function cancelTicket($ticket_id) {
        //available seats + 1 bil specific flight
        //remove the reserved seat in the name of that passenger
    }

    //one-way so no need to edit==> cancel then book again
    // public function editReservation() {
    //     // Implementation to edit reservation details
    //     // This method might need additional parameters
    // }

    // public function itSupport() {
    //     // Implementation for IT support related functionalities
    //     // This method might interact with IT support systems or provide assistance to the passenger
    // }

    // Setters
    public function setProfile($profile) {
        $this->profile = $profile;
    }

    public function setFeedback($feedback) {
        $this->feedback = $feedback;
    }
}

?>