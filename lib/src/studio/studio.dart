import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'components/video_player.dart';

class StudioPage extends StatefulWidget {
  const StudioPage({Key? key}) : super(key: key);

  @override
  _StudioPageState createState() => _StudioPageState();
}

class _StudioPageState extends State<StudioPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 1,
          itemBuilder: (_, int i) {
            return Card(
              elevation: 8,
              child: SizedBox(
                height: 230,
                child: MyVideoPlayer(
                  videoPlayerController:
                      VideoPlayerController.asset('assets/v1.mp4'),
                  // videoPlayerController: VideoPlayerController.network(
                  //     'https://stream.mux.com/Nseg33g01kM7uO66LVS402rDJpfFMoGI8S/high.mp4?token=eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InQ5UHZucm9ZY0hQNjhYSmlRQnRHTEVVSkVSSXJ0UXhKIn0.eyJleHAiOjE2NDE0ODM2NDYsImF1ZCI6InYiLCJzdWIiOiJOc2VnMzNnMDFrTTd1TzY2TFZTNDAyckRKcGZGTW9HSThTIn0.hpn_S55JctAauUcjO-lxlVts2sixLh-WZ0OjeiRuMmnTeYd83aWpjBczXPlEbzkp56sgPu1MSKiMzMZ-qG71CwiSxdXiHSDy_DzHbcvMdP-5Pe7mowSWi9rgKzLokKx_pLS_toKl8T8E8S-KU9egIjQYo3a9tPWmjLDkwti0pbRm7AeMvv2ORx_Ee5oi6YdsHW1ulYWE_VHUcWJ9jXa1wM44xgcnb4iRl-espqAF0NM8vOHunVW5jesOq5fdaPtt3UEEJ1ZETC5du05ewk5T7yYlLozBZ2aZPMOyHKi2_0sbn_FE6_X0aPky3oUoTyLj73GSZaKjhGOv3eMQMfW1TQ'),
                  looping: true,
                ),
              ),
            );
          }),
    );
  }
}
