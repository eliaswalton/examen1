import 'package:flutter/material.dart';

class CambioMoneda extends StatefulWidget {
  const CambioMoneda({super.key});

  @override
  State<CambioMoneda> createState() => _CambioMonedaState();
}

class _CambioMonedaState extends State<CambioMoneda> {
  String _selectedCurrency = 'USD';
  final double _tipoDeCambio = 24.74; 
  final TextEditingController _controlador = TextEditingController();
  double _resultado = 0.0;

  void _convertCurrency() {
    double input = double.tryParse(_controlador.text) ?? 0.0;
    setState(() {
      if (_selectedCurrency == 'USD') {
        _resultado = input * _tipoDeCambio;
      } else if (_selectedCurrency == 'EUR') {
        _resultado = input * 27.03; 
      } else if (_selectedCurrency == 'HNL to USD') {
        _resultado = input / _tipoDeCambio;
      } else if (_selectedCurrency == 'HNL to EUR') {
        _resultado = input / 27.03;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversor de Monedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              value: _selectedCurrency,
              items: const [
                DropdownMenuItem(
                  value: 'USD',
                  child: Text('USD a Lempiras'),
                ),
                DropdownMenuItem(
                  value: 'EUR',
                  child: Text('EUR a Lempiras'),
                ),
                DropdownMenuItem(
                  value: 'HNL to USD',
                  child: Text('Lempiras a USD'),
                ),
                DropdownMenuItem(
                  value: 'HNL to EUR',
                  child: Text('Lempiras a EUR'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedCurrency = value!;
                });
              },
            ),
            TextField(
              controller: _controlador,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Cantidad',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertCurrency,
              child: const Text('Convertir'),
            ),
            const SizedBox(height: 20),
            Text(
              'Resultado: $_resultado',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}