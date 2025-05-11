import 'package:flutter/material.dart';
import 'package:forui/forui.dart'; 

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('UP Police Services'),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Home Page NEED IDEAS',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24), // Spacer between title and buttons
                _buildRouteButton(context, 'Login', '/login'),
                _buildRouteButton(context, 'User Dashboard', '/userDashboard'),
                _buildRouteButton(context, 'Admin Dashboard', '/adminDashboard'),
                _buildRouteButton(context, 'User Events', '/usereventpage'),
                _buildRouteButton(context, 'Register', '/register'),
                _buildRouteButton(context, 'Capture Picture', '/picture'),
                _buildRouteButton(context, 'Profile', '/profile'),
                _buildRouteButton(context, 'Location', '/location'),
                _buildRouteButton(context, 'Create Sub Event', '/createsubevent'),
                _buildRouteButton(context, 'Create Event', '/createevent'),
                _buildRouteButton(context, 'Map', '/map'),
                _buildRouteButton(context, 'User Event', '/userEvent'),
              const SizedBox(height: 24), // Spacer between title and tabs
          
              // ShadTabs implementation
              // ShadTabs<String>(
              //   value: 'account',
              //   tabBarConstraints: const BoxConstraints(maxWidth: 400),
              //   contentConstraints: const BoxConstraints(maxWidth: 400),
              //   tabs: [
              //     ShadTab(
              //       value: 'account',
              //       child: const Text('Account'),
              //       content: ShadCard(
              //         title: const Text('Account'),
              //         description: const Text(
              //             "Make changes to your account here. Click save when you're done."),
              //         child: Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             const SizedBox(height: 16),
              //             ShadInputFormField(
              //               label: const Text('Name'),
              //               initialValue: 'Ale',
              //             ),
              //             const SizedBox(height: 8),
              //             ShadInputFormField(
              //               label: const Text('Username'),
              //               initialValue: 'nank1ro',
              //             ),
              //             const SizedBox(height: 16),
              //           ],
              //         ),
              //         footer: const ShadButton(child: Text('Save changes')),
              //       ),
              //     ),
              //     ShadTab(
              //       value: 'password',
              //       child: const Text('Password'),
              //       content: ShadCard(
              //         title: const Text('Password'),
              //         description: const Text(
              //             "Change your password here. After saving, you'll be logged out."),
              //         child: Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             const SizedBox(height: 16),
              //             ShadInputFormField(
              //               label: const Text('Current password'),
              //               obscureText: true,
              //             ),
              //             const SizedBox(height: 8),
              //             ShadInputFormField(
              //               label: const Text('New password'),
              //               obscureText: true,
              //             ),
              //             const SizedBox(height: 16),
              //           ],
              //         ),
              //         footer: const ShadButton(child: Text('Save password')),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildRouteButton(BuildContext context, String label, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FButton(
        onPress: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(label),
      ),
    );
  }
}