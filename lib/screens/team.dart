import 'package:flutter/material.dart';
import 'package:charify/utils/constants.dart';

class TeamScreen extends StatelessWidget {
  final List<TeamMember> teamMembers = [
    TeamMember('Ronnie A', 'Tech Lead', 'assets/images/ronnie_image.jpg'),
    TeamMember('George S', 'Front-End Dev', 'assets/images/george.jpg'),
    TeamMember('Eddie K', 'Project Manager', 'assets/images/eddie_image.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Meet The Team'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: teamMembers.length,
        itemBuilder: (context, index) {
          return TeamMemberCard(teamMembers[index]);
        },
      ),
    );
  }
}

class TeamMember {
  final String name;
  final String role;
  final String imageAsset;

  TeamMember(this.name, this.role, this.imageAsset);
}

class TeamMemberCard extends StatelessWidget {
  final TeamMember teamMember;

  TeamMemberCard(this.teamMember);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset(
            teamMember.imageAsset,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  teamMember.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  teamMember.role,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// void main() => runApp(MaterialApp(home: TeamScreen()));
