const int ledPin =  13;      // the number of the LED pin
int ledPin2 = 12;

int ledState = LOW;             // ledState used to set the LED
int ledState2 = LOW;

unsigned long previousMillis = 0;
unsigned long previousMillis2 = 0; // will store last time LED was updated

const long interval = 1000;
const long interval2 = 220; // interval at which to blink (milliseconds)

void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(ledPin2, OUTPUT);
}

void loop() {
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis;
    if (ledState == LOW) {
      ledState = HIGH;
    } else {
      ledState = LOW;
    }
    digitalWrite(ledPin, ledState);
  }
  
  if (currentMillis - previousMillis2 >= interval2) {
    previousMillis2 = currentMillis;
    if (ledState2 == LOW) {
      ledState2 = HIGH;
    } else {
      ledState2 = LOW;
    }
    digitalWrite(ledPin2, ledState2);
  }
}
