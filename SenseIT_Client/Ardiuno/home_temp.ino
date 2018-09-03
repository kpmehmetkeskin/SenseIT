#define echoPin 6
#define trigPin 7

void setup()
{
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode(8, OUTPUT);
  Serial.begin(9600);
}

void loop()
{
  mesafe();

}

void mesafe()
{
  long duration, distance;
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  duration = pulseIn(echoPin, HIGH);
  distance = duration / 58.2;
  delay(50);
  Serial.println(distance);

  if(distance > 15) {
    digitalWrite(8, HIGH);  
  } else {
    digitalWrite(8, LOW);  
  }

  
}

