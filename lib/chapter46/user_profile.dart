import 'package:flutter/material.dart';

///Class UserProfile digunakan untuk menampilkan profile user ke layar
class UserProfile extends StatelessWidget {
  ///field ini digunakan untuk menyimpan nama user
  final String name;

  ///field ini digunakan untuk menyimpan role user
  final String role;

  ///field digunakan untuk menyimpan avatar user
  final String avatar;

  ///* [name] berisi nama user. Nilai default nama user adalah `No Name`.
  ///* [role] berisi peran/jabatan dari user. Nilai default role user adalah `No Role`.
  ///* [avatar] berisi link dari foto profil user. Nilai default avatar adalah `null`.
  UserProfile({this.name, this.role, this.avatar});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image(
            image: avatar != null
                ? NetworkImage(avatar)
                : AssetImage('assets/images/bola.jpg'),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Text(
          name ?? 'No Name',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 10),
        Text(
          "[$role]" ?? '[No Role]',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
