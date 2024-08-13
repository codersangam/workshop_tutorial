import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: const Text(
      //     'Loginasdas',
      //     style: TextStyle(
      //       color: Colors.red,
      //       fontWeight: FontWeight.w900,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello dear1'),
              const Text('Hello dear2'),
              const BackButton(),
              const CloseButton(),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Click me'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Text Btn'),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: const Text('Elevated Btn'),
              ),
              const Text('Hello dear3'),
              const Text('Hello dear4'),
              Image.asset(
                'assets/images/a.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://techblog.codersangam.com/storage/featured-image/sHJJHLyaaRz207VqfJj9fry5WMpkBRqcAoxYNQRS.jpg',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 100),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    'https://techblog.codersangam.com/storage/featured-image/sHJJHLyaaRz207VqfJj9fry5WMpkBRqcAoxYNQRS.jpg',
                    height: 200,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                  const Text('Hello')
                ],
              ),
              // const ListTile(
              //   leading: CircleAvatar(
              //     radius: 50,
              //     backgroundImage: NetworkImage('https://picsum.photos/200'),
              //   ),
              //   title: Text('sangam'),
              //   subtitle: Text('sangam'),
              //   trailing: Text('11:00 pm'),
              // ),
              SizedBox(
                height: 500,
                child: ListView.separated(
                  itemCount: 15,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const Divider(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            NetworkImage('https://picsum.photos/200'),
                      ),
                      title: Text('sangam ${index + 1}'),
                      subtitle: const Text('sangam'),
                      trailing: const Text('11:00 pm'),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 500,
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Image.asset('assets/images/a.png');
                  },
                ),
              ),
              const SizedBox(height: 100),
              Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  image: const DecorationImage(
                    image: NetworkImage('https://picsum.photos/200'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 10,
                        color: Colors.purple),
                  ],
                ),
                child: const Text(
                  'dasdsadas',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
