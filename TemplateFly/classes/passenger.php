<?php
class Passenger {
    private $profile;
    private $feedback;

    public function __construct($profile, $feedback) {
        $this->profile = $profile;
        $this->feedback = $feedback;
    }

    public function bookTicket($ticket_id) {
        // implementation to book a ticket
    }

    public function cancelTicket($ticket_id) {
        // Implementation to cancel a ticket
    }

    public function editReservation() {
        // Implementation to edit reservation details
        // This method might need additional parameters
    }

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