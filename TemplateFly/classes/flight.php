<?php
class Flight {
    private $flight_nb;
    private $source;
    private $destination;
    private $date;
    private $time;

    public function __construct($flight_nb, $source, $destination, $date, $time) {
        $this->flight_nb = $flight_nb;
        $this->source = $source;
        $this->destination = $destination;
        $this->date = $date;
        $this->time = $time;
    }

    public function getFlightNb() {
        return $this->flight_nb;
    }

    public function getSource() {
        return $this->source;
    }

    public function getDestination() {
        return $this->destination;
    }

    public function getDate() {
        return $this->date;
    }

    public function getTime() {
        return $this->time;
    }

    public static function search($source = null, $destination = null, $date = null, $time = null) {
        // Implementation to search for flights based on the provided criteria
        // You can implement logic here to handle cases where inputs are null or not provided
        // Return an array of Flight objects that match the search criteria
        $flights = []; // Placeholder for flight search results
        // Example implementation:
        // if ($source !== null && $destination !== null && $date !== null && $time !== null) {
        //     $flights[] = new Flight($flight_nb, $source, $destination, $date, $time);
        // }
        return $flights;
    }
}

?>