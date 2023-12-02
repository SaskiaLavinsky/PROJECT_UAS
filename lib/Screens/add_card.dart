import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:redwallet/Screens/test.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
   String? _selectedTransaction;
   String? _selectedTransaction2;
   String? _selectedTransaction3;
   String? _selectedTransaction4;
   String? _selectedTransaction5;
   final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 190,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        flexibleSpace: ClipPath(
          clipper: MyClipper(),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/homepage.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0, bottom: 120),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(''),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "ID Card",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your ID Card';
                          }
                          return null; 
                        },
                      ),
                      SizedBox(height: 20),
          
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "NPWP",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          ),
                          validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your NPWP';
                          }
                          return null; 
                        },
                      ),
                      SizedBox(height: 20),
          
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tujuan membuka rekening",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            DropdownButtonFormField<String>(
                              value: _selectedTransaction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please select an option';
                                }
                                return null;
                              },
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedTransaction = newValue;
                                });
                              },
                              items: <String>[
                                'Menabung',
                                'Investasi',
                                'Keperluan Pribadi',
                                'Tujuan Lainnya'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              
                            ),
                          ],
                        ),
                      ),
          
                      SizedBox(height: 20),
          
                       Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status Perkawinan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 8),
                              DropdownButton<String>(
                                isExpanded: true,
                                value: _selectedTransaction2,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedTransaction2 = newValue;
                                  });
                                },
                                items: <String>[
                                  'Menikah',
                                  'Belum Menikah',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                underline: Container(
                                  height: 2,
                                  color: Colors.grey, 
                                ),
                              ),
                            ],
                          ),
                        ),

          
                      SizedBox(height: 20),
          
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Agama",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            DropdownButtonFormField<String>(
                              value: _selectedTransaction3,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please select an option';
                                }
                                return null;
                              },
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedTransaction3 = newValue;
                                });
                              },
                              items: <String>[
                                'Islam',
                                'Kristen Protestan',
                                'Kristen Katolik',
                                'Hindu',
                                'Budha',
                                'Konghucu'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
          
                      SizedBox(height: 20),
          
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama Ibu Kandung",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Nama Ibu Kandung",
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your NPWP';
                          }
                          return null; 
                        },
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alamat Domisili",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Alamat Domisili",
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your NPWP';
                          }
                          return null; 
                        },
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pekerjaan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Pekerjaan",
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your NPWP';
                          }
                          return null; 
                        },
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gaji per Bulan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              TextInputFormatter.withFunction((oldValue, newValue) {
                                if (newValue.text.isEmpty) {
                                  return newValue;
                                }
                          
                                final f = NumberFormat("#,###");
                                final parsedValue = int.tryParse(newValue.text);
                          
                                if (parsedValue != null) {
                                  final newText = f.format(parsedValue);
                                  return TextEditingValue(
                            text: newText,
                            selection: TextSelection.collapsed(offset: newText.length),
                                  );
                                }
                                return oldValue;
                              }),
                            ],
                            decoration: InputDecoration(
                              hintText: "-",
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                              prefixText: 'Rp ',
                              prefixStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your NPWP';
                          }
                          return null; 
                        },
                          ),
                          
                          SizedBox(height: 20),
                          
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Silahkan pilih kantor cabang untuk rekening yang akan dibuka.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 30),
                                  Text(
                                  "Kota",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 8),
                                DropdownButtonFormField<String>(
                                  value: _selectedTransaction4,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please select an option';
                                    }
                                    return null;
                                  },
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedTransaction4 = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Kota Jakarta Barat',
                                    'Kota Jakarta Timur',
                                    'Kota Jakarta Selatan',
                                    'Kota Jakarta Pusat',
                                    'Kota Jakarta  Utara',
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
          
                      SizedBox(height: 20),
          
                      Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cabang",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 8),
                                DropdownButtonFormField<String>(
                                  value: _selectedTransaction5,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please select an option';
                                    }
                                    return null;
                                  },
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedTransaction5 = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Cabang A',
                                    'Cabang B',
                                    'Cabang C',
                                    'Cabang D',
                                    'Cabang E',
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
          
                      SizedBox(height: 20),
          
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => TestPage()),
                                );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red, 
                                onPrimary: Colors.white, 
                                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10), 
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: Text(
                                'Next',
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
          
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width / 8, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}