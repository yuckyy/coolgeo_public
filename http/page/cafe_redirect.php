<?php
// Redirect to a new URL
$newLocation = "https://www.cafezemeli.ge/";
header("Location: " . $newLocation);
exit(); // Make sure to exit after sending the header
?>