import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Posttest5',
    home: LandingPage(),
  ));
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  get textButton => null;

  Widget greenContainer1(b) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(b),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POSTTEST5 RAHMAT KAMARA'),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromARGB(255, 25, 245, 5), Colors.blue]),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Selamat Datang \n\n Di Aplikasi \n\n E-Voting',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              SizedBox(height: 20),
              greenContainer1('assets/orang2.png'),
              SizedBox(height: 40),
              // // greenContainer1('assets/orang3.png'),
              // // SizedBox(height: 20),
              // greenContainer1('assets/orang4.png'),
              // SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text('   Next =>   '),
              ),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  get textButton => null;

  Widget greenContainer1(b) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(b),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETAILS PAGE'),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromARGB(255, 25, 245, 5), Colors.blue]),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Penjelasan Aplikasi E-Voting \n',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              Text(
                'Aplikasi E-Voting adalah aplikasi yang memudahkan pengguna untuk melakukan voting atau pemungutan suara. Selain digunakan untuk personal, aplikasi ini juga dapat digunakan disebuah komunitas atau organisasi lainnya. Dengan berbagai fitur yang ada memudahkan pengguna melakukan voting secara cepat, tepat, dan kapan saja serta dimana saja.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              greenContainer1('assets/E-Voting.png'),
              SizedBox(height: 40),
              // // greenContainer1('assets/orang3.png'),
              // // SizedBox(height: 20),
              // greenContainer1('assets/orang4.png'),
              // SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text('  <= Home   '),
              ),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget greenContainer1(b) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(b),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromARGB(255, 25, 245, 5), Colors.blue]),
          ),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              final snackBar = SnackBar(
                content: const Text('Maaf, menu Home belum dapat digunakan.'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, // Handle your callback
            child: Ink(
                child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  '2 Kandidat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(height: 20),
                greenContainer1('assets/orang2.png'),
                SizedBox(height: 20),
                Text('3 Kandidat',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                SizedBox(height: 20),
                greenContainer1('assets/orang3.png'),
                SizedBox(height: 20),
                Text('4 Kandidat',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                SizedBox(height: 20),
                greenContainer1('assets/orang4.png'),
                SizedBox(height: 20),
              ],
            )),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 25, 245, 5),
                      Colors.blue
                    ]),
              ),
              child: Text(
                'MENU',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            ListTile(
              title: Text('Form E-Voting'),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MainPage()));
              },
            ),
            ListTile(
              title: Text('Landing Page'),
              leading: Icon(Icons.app_registration),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LandingPage()));
              },
            ),
            ListTile(
              title: Text('Details Page'),
              leading: Icon(Icons.details),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

enum Gender { Unknown, Cowok, Cewek }

class _MainPageState extends State<MainPage> {
  bool isSedia = false;
  Gender gender = Gender.Unknown;
  String namaDepan = '', namaBelakang = '', asalInstansi = '';
  final ctrlAsalInstansi = TextEditingController();
  final ctrlNamaDepan = TextEditingController();
  final ctrlNamaBelakang = TextEditingController();

  @override
  void dispose() {
    ctrlNamaDepan.dispose();
    ctrlNamaBelakang.dispose();
    super.dispose();
  }

  String getGender(Gender value) {
    if (value == Gender.Cowok) {
      return 'Cowok';
    } else if (value == Gender.Cewek) {
      return 'Cewek';
    }
    return 'Unknown*';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FORM E-VOTING'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromARGB(255, 25, 245, 5), Colors.blue]),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Text('Nama Lengkap  : $namaDepan $namaBelakang'),
              SizedBox(height: 20),
              Text('Jenis Kelamin : ${getGender(gender)}'),
              SizedBox(height: 20),
              Text('Asal Instansi  : $asalInstansi'),
              SizedBox(height: 20),
              Text('Saya ${isSedia ? "Bersedia" : "Tidak Bersedia*"}'),
              SizedBox(height: 20),
              TextField(
                controller: ctrlNamaDepan,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Depan",
                    labelText: "Nama Depan"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: ctrlNamaBelakang,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Belakang",
                    labelText: "Nama Belakang"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: ctrlAsalInstansi,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Asal Instansi",
                    labelText: "Asal Instansi"),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text('Unknown'),
                leading: Radio(
                  groupValue: gender,
                  value: Gender.Unknown,
                  onChanged: (Gender? value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Cowok'),
                leading: Radio(
                  groupValue: gender,
                  value: Gender.Cowok,
                  onChanged: (Gender? value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Cewek'),
                leading: Radio(
                  groupValue: gender,
                  value: Gender.Cewek,
                  onChanged: (Gender? value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Bersedia Mengikuti Aturan yang Berlaku'),
                leading: Checkbox(
                    value: isSedia,
                    onChanged: (bool? value) {
                      setState(() {
                        isSedia = value!;
                      });
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      namaDepan = ctrlNamaDepan.text;
                      namaBelakang = ctrlNamaBelakang.text;
                      asalInstansi = ctrlAsalInstansi.text;
                    });
                  },
                  child: Text('Tampilkan')),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
