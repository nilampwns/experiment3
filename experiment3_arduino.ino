int pressure = A0;
int pressVal;

void setup() {
  
pinMode(pressure, INPUT);
Serial.begin(9600);

}

void loop() {

pressVal = analogRead(pressure);
Serial.println(pressVal);
delay(100);
}
