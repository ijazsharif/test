import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset('assets/svgs/language_icon.svg'),
            minLeadingWidth: 16,
            title: Text(
              'Language',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
            ),
            trailing: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/payment_icon.svg'),
            minLeadingWidth: 16,
            title: Text(
              'Payment and Packages',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/lock_icon.svg'),
            minLeadingWidth: 16,
            title: Text(
              'Change Password',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/repeatremainder_icon.svg'),
            minLeadingWidth: 16,
            title: Text(
              'Reminder Frequency',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/howtouse_icon.svg'),
            minLeadingWidth: 16,
            title: Text(
              'How to Use',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/logout_icon.svg'),
            minLeadingWidth: 16,
            title: Text(
              'Logout',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
