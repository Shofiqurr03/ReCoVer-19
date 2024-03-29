import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sound_stream/sound_stream.dart';
import 'package:dialogflow_grpc/dialogflow_grpc.dart';
import 'package:dialogflow_grpc/generated/google/cloud/dialogflow/v2beta1/session.pb.dart';

// TODO import Dialogflow
DialogflowGrpcV2Beta1 dialogflow;

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var q1 = 'What is corona';
  var q2 = 'Who can receive Covid-19 vaccine?';
  var q3 = 'NID card is lost, how do I register?';
  var q4 = 'Does this vaccine have any side effects?';
  var q5 = 'Who cannot be vaccinated in this campaign?';
  var q6 = 'How many doses of Covid-19 vaccine should be taken?';
  var q7 = 'One asked, will a pregnant woman get this vaccine?';
  var q8 = 'I have to take pressure medicine every day; Can I be vaccinated?';

  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();

  bool _isRecording = false;

  RecorderStream _recorder = RecorderStream();
  StreamSubscription _recorderStatus;
  StreamSubscription<List<int>> _audioStreamSubscription;
  BehaviorSubject<List<int>> _audioStream;

  // TODO DialogflowGrpc class instance

  @override
  void initState() {
    super.initState();
    initPlugin();
  }

  @override
  void dispose() {
    _recorderStatus?.cancel();
    _audioStreamSubscription?.cancel();
    super.dispose();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlugin() async {
    _recorderStatus = _recorder.status.listen((status) {
      if (mounted)
        setState(() {
          _isRecording = status == SoundStreamStatus.Playing;
        });
    });

    await Future.wait([_recorder.initialize()]);

    // TODO Get a Service account
    // Get a Service account
    final serviceAccount = ServiceAccount.fromString(
        '${(await rootBundle.loadString('assets/credentials.json'))}');
    // Create a DialogflowGrpc Instance
    dialogflow = DialogflowGrpcV2Beta1.viaServiceAccount(serviceAccount);
  }

  void stopStream() async {
    await _recorder.stop();
    await _audioStreamSubscription?.cancel();
    await _audioStream?.close();
  }

  void handleSubmitted(text) async {
    print(text);
    _textController.clear();

    //TODO Dialogflow Code
    ChatMessage message = ChatMessage(
      text: text,
      name: "You",
      type: true,
    );

    setState(() {
      _messages.insert(0, message);
    });

    DetectIntentResponse data = await dialogflow.detectIntent(text, 'en-US');
    String fulfillmentText = data.queryResult.fulfillmentText;
    if (fulfillmentText.isNotEmpty) {
      ChatMessage botMessage = ChatMessage(
        text: fulfillmentText,
        name: "A.I. DOCTOR",
        type: false,
      );

      setState(() {
        _messages.insert(0, botMessage);
      });
    }
  }

  void handleStream() async {
    _recorder.start();

    _audioStream = BehaviorSubject<List<int>>();
    _audioStreamSubscription = _recorder.audioStream.listen((data) {
      print(data);
      _audioStream.add(data);
    });

    // TODO Create SpeechContexts
    // Create an audio InputConfig
    var biasList = SpeechContextV2Beta1(phrases: [
      'Dialogflow CX',
      'Dialogflow Essentials',
      'Action Builder',
      'HIPAA'
    ], boost: 20.0);

    // See: https://cloud.google.com/dialogflow/es/docs/reference/rpc/google.cloud.dialogflow.v2#google.cloud.dialogflow.v2.InputAudioConfig
    var config = InputConfigV2beta1(
        encoding: 'AUDIO_ENCODING_LINEAR_16',
        languageCode: 'en-US',
        sampleRateHertz: 16000,
        singleUtterance: false,
        speechContexts: [biasList]);

    // TODO Make the streamingDetectIntent call, with the InputConfig and the audioStream
    // TODO Get the transcript and detectedIntent and show on screen

    final responseStream =
    dialogflow.streamingDetectIntent(config, _audioStream);
    // Get the transcript and detectedIntent and show on screen
    responseStream.listen((data) {
      //print('----');
      setState(() {
        //print(data);
        String transcript = data.recognitionResult.transcript;
        String queryText = data.queryResult.queryText;
        String fulfillmentText = data.queryResult.fulfillmentText;

        if (fulfillmentText.isNotEmpty) {
          ChatMessage message = new ChatMessage(
            text: queryText,
            name: "You",
            type: true,
          );

          ChatMessage botMessage = new ChatMessage(
            text: fulfillmentText,
            name: "Bot",
            type: false,
          );

          _messages.insert(0, message);
          _textController.clear();
          _messages.insert(0, botMessage);
        }
        if (transcript.isNotEmpty) {
          _textController.text = transcript;
        }
      });
    }, onError: (e) {
      //print(e);
    }, onDone: () {
      //print('done');
    });
  }

  // The chat interface
  //
  //------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask About Covid-19'),
      ),
      body: Container(
        color: Color(0x40ce8b8b),
        child: Column(children: <Widget>[
          Flexible(
              child: ListView.builder(
                padding: EdgeInsets.only(left: 18.w,right: 18.w,bottom: 40.h,top: 40.h),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              )),
          Divider(height: 3.h,thickness: 1),
          // InkWell(
          //   onTap: (){
          //     handleSubmitted();
          //
          //   },
          //     child: Container
          //       (child: Text('what is corona ?'))
          // ),
          SizedBox(height: 2.h,),

          Container(
            child: Text('FAQ:',style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          SingleChildScrollView(

            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: 2200.w,
              child: Padding(
                padding:  EdgeInsets.all(17.r),
                child: Row(
                  children: [


                    Flexible(


                      child:    OutlinedButton(
                        child: Text("What is corona ?", style: TextStyle(fontSize: 15.sp),),
                        style: OutlinedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            side: BorderSide(
                                color: Colors.blue
                            )

                        ),
                        onPressed: () {
                          handleSubmitted(q1);
                        },
                      ),



                    ),
                    SizedBox(width: 10.w),

                    Flexible(

                      child:    OutlinedButton(

                        style: OutlinedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            side: BorderSide(
                                color: Colors.blue
                            )

                        ),


                        child: Text("Who can receive Covid-19 vaccine?", style: TextStyle(fontSize: 15.sp),),

                        onPressed: () {
                          handleSubmitted(q2);
                        },
                      ),



                    ),

                    SizedBox(width: 10.w),

                    Flexible(

                      child:    OutlinedButton(

                        style: OutlinedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            side: BorderSide(
                                color: Colors.blue
                            )

                        ),
                        onPressed: () {
                          handleSubmitted(q3);
                        },
                      ),



                    ),

                    SizedBox(width: 10.w),

                    Flexible(

                      child:    OutlinedButton(

                        child: Text("Does this vaccine have any side effects?", style: TextStyle(fontSize: 15.sp),),
                        style: OutlinedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            side: BorderSide(
                                color: Colors.blue
                            )

                        ),
                        onPressed: () {
                          handleSubmitted(q4);
                        },
                      ),



                    ),


                    SizedBox(width: 10.w),

                    Flexible(

                      child:    OutlinedButton(

                        child: Text("Who cannot be vaccinated in this campaign?", style: TextStyle(fontSize: 15.sp),),
                        style: OutlinedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            side: BorderSide(
                                color: Colors.blue
                            )

                        ),
                        onPressed: () {
                          handleSubmitted(q5);
                        },
                      ),



                    ),



                    SizedBox(width: 10.w),

                    Flexible(

                      child:    OutlinedButton(

                        child: Text("How many doses of Covid-19 vaccine should be taken?", style: TextStyle(fontSize: 15.sp),),
                        style: OutlinedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            side: BorderSide(
                                color: Colors.blue
                            )

                        ),
                        onPressed: () {
                          handleSubmitted(q6);
                        },
                      ),



                    ),



                    SizedBox(width: 10),

                    Flexible(

                      child:    OutlinedButton(

                        child: Text("One asked, will a pregnant woman get this vaccine?", style: TextStyle(fontSize: 15.sp),),
                        style: OutlinedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            side: BorderSide(
                                color: Colors.blue
                            )

                        ),
                        onPressed: () {
                          handleSubmitted(q7);
                        },
                      ),



                    ),




                    SizedBox(width: 10.w),

                    Flexible(

                      child:    OutlinedButton(

                        child: Text("I have to take pressure medicine every day; Can I be vaccinated?", style: TextStyle(fontSize: 15.sp),),
                        style: OutlinedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            side: BorderSide(
                                color: Colors.blue
                            )

                        ),
                        onPressed: () {

                          handleSubmitted(q8);
                        },
                      ),



                    ),






                  ],
                ),
              ),
            ),
          ),

          Divider(height: 3.r,thickness: 1,),

          Container(
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).accentColor),
                child: Container(
                  margin:  EdgeInsets.symmetric(horizontal: 8.r),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _textController,
                          onSubmitted: handleSubmitted,
                          decoration: InputDecoration.collapsed(
                              hintText: "Send a message"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.r),
                        child: IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () => handleSubmitted(_textController.text),
                        ),
                      ),
                      IconButton(
                        iconSize: 30.0,
                        icon: Icon(_isRecording ? Icons.mic_off : Icons.mic),
                        onPressed: _isRecording ? stopStream : handleStream,
                      ),
                    ],
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}

//------------------------------------------------------------------------------------
// The chat message balloon
//
//------------------------------------------------------------------------------------
class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Container(
        margin:  EdgeInsets.only(right: 16.r),
        child: CircleAvatar(child: new Text('D')),
      ),
      new Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              margin:  EdgeInsets.only(top: 5.r),
              child: Text(text),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(this.name, style: Theme.of(context).textTheme.subtitle1),
            Container(
              margin:  EdgeInsets.only(top: 5.r),
              child: Text(text),
            ),
          ],
        ),
      ),
      Container(
        margin:  EdgeInsets.only(left: 16.r),
        child: CircleAvatar(
            child: Text(
              this.name[0],
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: 40.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
