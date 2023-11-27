import 'dart:convert';

List<Product> productListFromJson(String data)
=> List<Product>.from(jsonDecode(data).map((e)
=> Product.fromJson(e)));

String productToJson(Product product)
=> jsonEncode(product.toJson());

class Product{

  late String productId;
  late String productName;
  late double price;
  late bool inStock;
  late Availability availability;
  late Details details;

  Product.fromJson(Map<String, dynamic> json){
    productId = json["productId"];
    productName = json["productName"];
    price = json["price"];
    inStock = json["inStock"];
    availability = Availability.fromJson(json["availability"]);
    details = Details.fromJson(json["details"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "productId": productId,
      "productName": productName,
      "price": price,
      "inStock": inStock,
      "availability": availability,
      "details": details
    };
    return map;
  }

  @override
  String toString() {
    return "Product id: $productId \nProduct name: $productName \nPrice: $price \nIn stock: $inStock \nAvailability: \n{\n$availability\n} \nDetails: \n{\n$details\n}";
  }

}

class Availability{

  late bool online;
  late Offline offline;

  Availability.fromJson(Map<String, dynamic> json){
    online = json["online"];
    offline = Offline.fromJson(json["offline"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "online": online,
      "offline": offline
    };
    return map;
  }

  @override
  String toString() {
    return "\tOnline: $online \n\tOffline: \n\t{\n$offline\n\t}";
  }

}

class Offline{

  late int store1;
  late int store2;
  late int store3;

  Offline.fromJson(Map<String, dynamic> json){
    store1 = json["store1"];
    store2 = json["store2"];
    store3 = json["store3"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "store1": store1,
      "store2": store2,
      "store3": store3
    };
    return map;
  }

  @override
  String toString() {
    return "\t\tStore 1: $store1 \n\t\tStore 2: $store2 \n\t\tStore 3: $store3";
  }
}

class Details{

  late String brand;
  late String model;
  late Specs specs;

  Details.fromJson(Map<String, dynamic> json){
    brand = json["brand"];
    model = json["model"];
    specs = Specs.fromJson(json["specs"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "brand": brand,
      "model": model,
      "specs": specs
    };
    return map;
  }

  @override
  String toString() {
    return "\tBrand: $brand \n\tModel: $model \n\tSpecs: \n\t{\n$specs\n\t}";
  }

}

class Specs{

  late Screen screen;
  late Storage storage;
  late Ram ram;
  Camera? camera;
  Graphics? graphics;
  late Battery battery;
  late OperatingSystem operatingSystem;
  late Connectivity connectivity;
  late Warranty warranty;

  Specs.fromJson(Map<String, dynamic> json){
    screen = Screen.fromJson(json["screen"]);
    storage = Storage.fromJson(json["storage"]);
    ram = Ram.fromJson(json["ram"]);
    camera = json["camera"] != null ? Camera.fromJson(json["camera"]) : null;
    graphics = json["graphics"] != null ? Graphics.fromJson(json["graphics"]) : null;
    battery = Battery.fromJson(json["battery"]);
    operatingSystem = OperatingSystem.fromJson(json["operatingSystem"]);
    connectivity = Connectivity.fromJson(json["connectivity"]);
    warranty = Warranty.fromJson(json["warranty"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "screen": screen,
      "storage": storage,
      "ram": ram,
      "camera": camera,
      "graphics": graphics,
      "battery": battery,
      "operatingSystem": operatingSystem,
      "connectivity": connectivity,
      "warranty": warranty
    };
    return map;
  }

  @override
  String toString() {
    return "\t\tScreen: \n\t\t{\n$screen\n\t\t} \n\t\tStorage: \n\t\t{\n$storage\n\t\t} \n\t\tRam: \n\t\t{\n$ram\n\t\t} \n\t\tCamera: \n\t\t{\n\t\t\t${camera ?? "ma'lumotlar topilmadi"}\n\t\t} \n\t\tGraphics: \n\t\t{\n\t\t\t${graphics ?? "ma'lumotlar topilmadi"}\n\t\t} \n\t\tBattery: \n\t\t{\n$battery\n\t\t} \n\t\tOperatingSystem: \n\t\t{\n$operatingSystem\n\t\t} \n\t\tConnectivity: \n\t\t{\n$connectivity\n\t\t} \n\t\tWarranty: \n\t\t{\n$warranty\n\t\t}";
  }

}

class Screen{

  late String type;
  late double size;
  late String resolution;

  Screen.fromJson(Map<String, dynamic> json){
    type = json["type"];
    size = json["size"];
    resolution = json["resolution"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "type": type,
      "size": size,
      "resolution": resolution
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\tType: $type \n\t\t\tSize: $size \n\t\t\tResolution: $resolution";
  }

}

class Storage{

  late String type;
  late String capacity;

  Storage.fromJson(Map<String, dynamic> json){
    type = json["type"];
    capacity = json["capacity"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "type": type,
      "capacity": capacity
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\tType: $type \n\t\t\tCapacity: $capacity";
  }

}
class Ram{

  late String type;
  late String capacity;
  late String speed;

  Ram.fromJson(Map<String, dynamic> json){
    type = json["type"];
    capacity = json["capacity"];
    speed = json["speed"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "type": type,
      "capacity": capacity,
      "speed": speed
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\tType: $type \n\t\t\tCapacity: $capacity \n\t\t\tSpeed: $speed";
  }

}

class Graphics{

  late String type;

  Graphics.fromJson(Map<String, dynamic> json){
    type = json["type"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "type": type
    };
    return map;
  }

  @override
  String toString() {
    return "Type: $type";
  }

}

class Camera{

  late Rear rear;
  late Front front;

  Camera.fromJson(Map<String, dynamic> json){
    rear = Rear.fromJson(json["rear"]);
    front = Front.fromJson(json["front"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "rear": rear,
      "front": front
    };
    return map;
  }

  @override
  String toString() {
    return "Rear: \n\t\t\t{\n$rear\n\t\t\t} \n\t\t\tFront: \n\t\t\t{\n$front\n\t\t\t}";
  }

}

class Rear{

  late String resolution;
  late String aperture;

  Rear.fromJson(Map<String, dynamic> json){
    resolution = json["resolution"];
    aperture = json["aperture"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "resolution": resolution,
      "aperture": aperture
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\t\tResolution: $resolution \n\t\t\t\tAperture: $aperture";
  }

}

class Front{

  late String resolution;
  late String aperture;

  Front.fromJson(Map<String, dynamic> json){
    resolution = json["resolution"];
    aperture = json["aperture"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "resolution": resolution,
      "aperture": aperture
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\t\tResolution: $resolution \n\t\t\t\tAperture: $aperture";
  }

}

class Battery{

  late String capacity;
  late String type;
  late Charging charging;

  Battery.fromJson(Map<String, dynamic> json){
    capacity = json["capacity"];
    type = json["type"];
    charging = Charging.fromJson(json["charging"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "capacity": capacity,
      "type": type,
      "charging": charging
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\tCapacity: $capacity \n\t\t\tType: $type \n\t\t\tCharging: \n\t\t\t{\n$charging\n\t\t\t}";
  }

}

class Charging{

  late String type;
  late int wattage;

  Charging.fromJson(Map<String, dynamic> json){
    type = json["type"];
    wattage = json["wattage"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "type": type,
      "wattage": wattage
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\t\tType: $type \n\t\t\t\tWattage: $wattage";
  }

}

class OperatingSystem{

  late String name;
  late String version;
  String? customSkin;

  OperatingSystem.fromJson(Map<String, dynamic> json){
    name = json["name"];
    version = json["version"];
    customSkin = json["customSkin"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "name": name,
      "version": version,
      "customSkin": customSkin
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\tName: $name \n\t\t\tVersion: $version \n\t\t\tCustom skin: ${customSkin ?? "ma'lumotlar topilmadi"}";
  }

}

class Connectivity{

  late String wifi;
  late String bluetooth;
  bool? nfc;
  int? thunderboltPorts;
  bool? hdmi;
  UsbPorts? usbPorts;

  Connectivity.fromJson(Map<String, dynamic> json){
    wifi = json["wifi"];
    bluetooth = json["bluetooth"];
    nfc = json["nfc"];
    usbPorts = json["usbPorts"] != null ? UsbPorts.fromJson(json["usbPorts"]) : null;
    thunderboltPorts = json["thunderboltPorts"];
    hdmi = json["hdmi"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "wifi": wifi,
      "bluetooth": bluetooth,
      "nfc": nfc,
      "usbPorts": usbPorts,
      "thunderboltPorts": thunderboltPorts,
      "hdmi": hdmi
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\tWifi: $wifi \n\t\t\tBluetooth: $bluetooth \n\t\t\tNFC: ${nfc ?? "ma'lumotlar topilmadi"} \n\t\t\tUsb Ports: \n\t\t\t{\n\t\t\t\t${usbPorts ?? "ma'lumotlar topilmadi"}\n\t\t\t} \n\t\t\tThunderbolt Ports: ${thunderboltPorts ?? "ma'lumotlar topilmadi"} \n\t\t\tHDMI: ${hdmi ?? "ma'lumotlar topilmadi"}";
  }

}

class UsbPorts{

  late int typeA;
  late int typeC;

  UsbPorts.fromJson(Map<String, dynamic> json){
    typeA = json["typeA"];
    typeC = json["typeC"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "typeA": typeA,
      "typeC": typeC
    };
    return map;
  }

  @override
  String toString() {
    return "Type A: $typeA \n\t\t\t\tType C: $typeC";
  }

}

class Warranty{

  late int months;
  late String type;

  Warranty.fromJson(Map<String, dynamic> json){
    months = json["months"];
    type = json["type"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "months": months,
      "type": type
    };
    return map;
  }

  @override
  String toString() {
    return "\t\t\tMonths: $months \n\t\t\tType: $type";
  }

}