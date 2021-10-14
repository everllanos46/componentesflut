import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100;
  bool _checkState=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              _createSlider(),
              _createCheckBox(),
              _createSwitch(),
              Expanded(
                child: _crearImagen())],
          ),
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.orangeAccent,
      label: '$_sliderValue',
      // divisions: 10,
      value: _sliderValue,
      min: 10,
      max: 400,
      onChanged: (_checkState) ? (value) {
        setState(() {
          _sliderValue = value;
        });
      } : null,
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://pack-yak.intomanga.com/images/manga/Shingeki-no-Kyojin/chapter/139-5/page/1/bb447e65-ee5b-44b2-ab4f-1201dd2760bb'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckBox() {

    // return Checkbox(
    //   value: _checkState,
    //   onChanged: (valor){
    //     setState(() {
    //       _checkState=valor!;
    //     });
    //   }
    // );

    return CheckboxListTile(
      title: Text("Check"),
      value: _checkState,
      onChanged: (valor){
        setState(() {
          _checkState=valor!;
        });
      }
      );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text("Check"),
      value: _checkState,
      onChanged: (valor){
        setState(() {
          _checkState=valor;
        });
      }
      );
  }
}
