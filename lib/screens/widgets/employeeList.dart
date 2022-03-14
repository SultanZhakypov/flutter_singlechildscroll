import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/fonts.dart';
import 'package:flutter_application_4/model/user_model.dart';

class UsersList extends StatelessWidget {
  const UsersList({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(user.image),
          ),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 13)),
                      Text(
                        user.name,
                        style: Fonts.f16w400,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        user.speciality,
                        style: Fonts.f12w400,
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xffCF6679),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Divider()
            ],
          ),
        ),
      ],
    );
  }
}

class Emplyoee extends StatelessWidget {
  const Emplyoee({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (content, index) => UsersList(
              user: User.getListUser()[index],
            ),
        itemCount: User.getListUser().length);
  }
}
