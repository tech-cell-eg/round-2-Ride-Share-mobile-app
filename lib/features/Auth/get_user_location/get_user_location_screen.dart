import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class GetUserLocationScreen extends StatefulWidget {
    const GetUserLocationScreen({super.key});

  @override
  State<GetUserLocationScreen> createState() => _GetUserLocationScreenState();
}

class _GetUserLocationScreenState extends State<GetUserLocationScreen> {
  
Future<Position?> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;
  Position? position ;
  // التأكد ان اليوزر فاتح خاصية اللوكيشن فى الموبايل
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (serviceEnabled == false) {
    print('اتأكد انك مشغل خاصية اللوكيشن على موبايلك');
     
  }

  // هنا عشان نتأكد ان اليوزر ادى التطبيق صلاحية الوصول للوكيشن بتاعه
  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {

    permission = await Geolocator.requestPermission();
    
    if (permission == LocationPermission.denied) {
    print('1111111111111111');   print('denied رفض');
      print('1111111111111/');
    }

    if (permission == LocationPermission.whileInUse) {
      print('whileInUse');
      // get current location هنحط هنا ميثود
        position = await  Geolocator.getCurrentPosition();
        print('//////////////////');
      print(position.latitude);
      print(position.longitude);
       print('//////////////////');
    }
  }
  return position;
   
}
@override
void initState() {
    getCurrentLocation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}