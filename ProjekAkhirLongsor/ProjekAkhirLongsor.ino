#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <SoftwareSerial.h>
#define RX 10
#define TX 11
#define DHTTYPE DHT11
#define DHTPIN 5

DHT dht(DHTPIN, DHTTYPE);

String AP = "IF TAMBANG";
String PASS = "mbuhrareti";
String HOST = "192.168.100.120";
String PORT = "80";

int countTrueCommand;
int countTimeCommand;
boolean found = false;
int dhtPin = 5;
int ledPin = 9;
int buzzerPin = 8;

SoftwareSerial esp8266(RX,TX);

void setup() {
  Serial.begin(9600);
  esp8266.begin(9600);
  Serial.println("DHT11 test!");
  sendCommand("AT", 5, "OK");
  sendCommand("AT+CWMODE=1", 5, "OK");
  sendCommand("AT+CWJAP=\""+ AP +"\",\""+ PASS +"\"",20,"OK");
  beginSetup();
  dht.begin();
}

void loop() {
  String getData = "GET /projekAkhir_IoT/dariArduino.php?kelembapan="+getLembab();
  sendCommand("AT+CIPMUX=1",5,"OK");
  sendCommand("AT+CIPSTART=0,\"TCP\",\""+ HOST +"\","+ PORT,15,"OK");
  sendCommand("AT+CIPSEND=0," +String(getData.length()+4),4,">");
  esp8266.println(getData); delay(1500); countTrueCommand++;
  sendCommand("AT+CIPCLOSE=0",5,"OK");
}

void beginSetup(){
  pinMode (buzzerPin, OUTPUT);
  pinMode (dhtPin, OUTPUT);
  pinMode (ledPin, OUTPUT);
}

String getLembab() {

  float h = dht.readHumidity();
  if (isnan(h)) {
    Serial.println("Gagal membaca DHT sensor!");
    return;
  }

  Serial.print("Humidity: ");
  Serial.print(h);
 
  if (h <= 40) {
    Serial.println("Normal");
    digitalWrite(ledPin, LOW);
    digitalWrite(buzzerPin, LOW);
    delay (1000);
  }
  if (40 < h < 70) {
    Serial.println("Siaga");
    digitalWrite(buzzerPin, LOW);
    digitalWrite(ledPin, HIGH);
    delay (2000);
    digitalWrite(ledPin, LOW);
    digitalWrite(buzzerPin, LOW);
    
  }
  if (h >= 70) {
    Serial.println("Berpotensi longsor!");
    digitalWrite(ledPin, HIGH);
    digitalWrite(buzzerPin, HIGH);
    delay (1000);
    digitalWrite(ledPin, LOW);
    digitalWrite(buzzerPin, LOW);
  }

  return String(h);
}

void sendCommand(String command, int maxTime, char readReplay[]) {
  Serial.print(countTrueCommand);
  Serial.print(". at command => ");
  Serial.print(command);
  Serial.print(" ");
  while(countTimeCommand < (maxTime*1))
  {
    esp8266.println(command);//at+cipsend
    if(esp8266.find(readReplay))//ok
    {
      found = true;
      break;
    }
  
    countTimeCommand++;
  }
  
  if(found == true)
  {
    Serial.println("OK");
    countTrueCommand++;
    countTimeCommand = 0;
  }
  
  if(found == false)
  {
    Serial.println("Fail");
    countTrueCommand = 0;
    countTimeCommand = 0;
  }
  
  found = false;
 }
