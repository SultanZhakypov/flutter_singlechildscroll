import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/fonts.dart';

class CircleAvatarClass extends StatelessWidget {
 const CircleAvatarClass({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 59,
          backgroundImage: const AssetImage('assets/images/Image.png'),
          child: Stack(
            children: const [
              Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xff6200EE),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
         const Padding(
          padding: EdgeInsets.only(top: 24, bottom: 5),
          child: Text('Tiana Rosser',style: Fonts.f16w400 ,),
        ),
        const Text('Developer',style: Fonts.f12w400,),
        const Padding(
          padding: EdgeInsets.only(top: 24),
          child: Divider(),
        ),
      ],
    );
  }
}
