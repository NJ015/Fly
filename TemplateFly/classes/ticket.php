<?php
class Ticket {
    private $ticket_id;
    private $ticket_price;
    private $ticket_class;
    private $source;
    private $destination;
    private $date;
    private $time;
    private $seat;
    private $gate;
    private $insurance;
    private $status;

    public function __construct($ticket_id, $ticket_price, $ticket_class, $source, $destination, $date, $time, $seat, $gate, $insurance, $status) {
        $this->ticket_id = $ticket_id;
        $this->ticket_price = $ticket_price;
        $this->ticket_class = $ticket_class;
        $this->source = $source;
        $this->destination = $destination;
        $this->date = $date;
        $this->time = $time;
        $this->seat = $seat;
        $this->gate = $gate;
        $this->insurance = $insurance;
        $this->status = $status;
    }

    // Getters
    public function getTicketId() {
        return $this->ticket_id;
    }

    public function getTicketPrice() {
        return $this->ticket_price;
    }

    public function getTicketClass() {
        return $this->ticket_class;
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

    public function getSeat() {
        return $this->seat;
    }

    public function getGate() {
        return $this->gate;
    }

    public function getInsurance() {
        return $this->insurance;
    }

    public function getStatus() {
        return $this->status;
    }
}
?>