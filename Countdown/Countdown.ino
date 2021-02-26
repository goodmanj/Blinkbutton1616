
// Countdown timer.  Press button to start a 10-second timer; 
// Green light on while timer runs, red light blinks once per second, solid red once
// countdown expires.

#define REDLED 1
#define GRNLED 2
#define BUTTON 16

#define TIMERSEC 10

int lastreportedmillis;
int currentmillis;
int startmillis = millis();
int lastButtonValue = LOW;

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(REDLED, OUTPUT);
  pinMode(GRNLED, OUTPUT);
  pinMode(BUTTON, INPUT);
  Serial.swap(1);
  Serial.begin(9600);
  Serial.println("Timer Ready.");
}

// the loop function runs over and over again forever
void loop() {
  
  if (digitalRead(BUTTON) && !lastButtonValue) {  // Button is pushed, wasn't pushed before
    startmillis = millis();
    lastreportedmillis = 11000;
    digitalWrite(GRNLED, HIGH);  
    Serial.println("Timer start.");
    delay(10);
  }
  lastButtonValue = digitalRead(BUTTON);

  currentmillis = TIMERSEC*1000 - (millis() - startmillis);
//  Serial.println(millis()-startmillis);
//  Serial.println(currentmillis);
  delay(10);
  if (currentmillis < 0) {
    if (lastreportedmillis > 0) {
      digitalWrite(REDLED, HIGH);   // Red LED on
      digitalWrite(GRNLED, LOW);   // Green LED off
      Serial.println("Time's up!");
      lastreportedmillis = 0;
    } // otherwise do nothing, wait for next button press.
  } else if (currentmillis < (lastreportedmillis-1000)){
    Serial.print(currentmillis);
    Serial.println(" milliseconds remain.");
    digitalWrite(REDLED, HIGH);   // Flash red LED
    delay(10);
    digitalWrite(REDLED, LOW);
    lastreportedmillis = lastreportedmillis-1000;
  }
}
