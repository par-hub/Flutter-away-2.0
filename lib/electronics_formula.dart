import 'package:flutter/material.dart';
import 'package:formula_app/cardsfor_formula.dart';

class ElectronicsFormula extends StatelessWidget {
  const ElectronicsFormula({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> formulas = [
      {'title': 'Ohm’s Law', 'formula': 'V = IR'},
      {'title': 'Power', 'formula': 'P = VI = I²R = V² / R'},
      {
        'title': 'Series Combination (Resistors)',
        'formula': 'Req = R₁ + R₂ + …',
      },
      {
        'title': 'Parallel Combination (Resistors)',
        'formula': '1/Req = 1/R₁ + 1/R₂ + …',
      },
      {'title': 'Voltage Divider', 'formula': 'Vₓ = Vtotal × (Rₓ / Rtotal)'},
      {'title': 'Current Divider', 'formula': 'Iₓ = Itotal × (Rtotal / Rₓ)'},
      {
        'title': 'Kirchhoff’s Current Law (KCL)',
        'formula': '∑I = 0 (Sum of currents entering = leaving the node)',
      },
      {
        'title': 'Kirchhoff’s Voltage Law (KVL)',
        'formula': '∑V = 0 (Sum of voltages in a loop = 0)',
      },
      {
        'title': 'Nodal Analysis (at node i)',
        'formula': '∑(Vi − Vj) / Rij = 0',
      },
      {'title': 'Mesh Analysis', 'formula': '∑IR = ∑V'},
      {'title': 'Source Transformation', 'formula': 'Vs = IsRs'},
      {
        'title': 'Superposition Theorem',
        'formula':
            '1️⃣ Consider one source at a time.\n2️⃣ Replace others: voltage → short, current → open.\n3️⃣ Add individual effects.',
      },
      {
        'title': 'Thevenin Equivalent',
        'formula':
            'VTH = Open-circuit voltage\nRTH = Resistance seen from load (sources off)',
      },
      {'title': 'Norton Equivalent', 'formula': 'IN = VTH / RTH, RN = RTH'},
      {
        'title': 'Load Current & Voltage',
        'formula': 'IL = VTH / (RTH + RL)\nVL = IL × RL',
      },
      {
        'title': 'Power in Load',
        'formula': 'PL = I²L × RL = V²TH × RL / (RTH + RL)²',
      },
      {
        'title': 'Maximum Power Transfer',
        'formula': 'RL = RTH,  Pmax = V²TH / (4RTH)',
      },
      {
        'title': 'Capacitors',
        'formula':
            'Series: 1/Ceq = 1/C₁ + 1/C₂ + …\nParallel: Ceq = C₁ + C₂ + …',
      },
      {
        'title': 'Inductors',
        'formula':
            'Series: Leq = L₁ + L₂ + …\nParallel: 1/Leq = 1/L₁ + 1/L₂ + …',
      },
      {
        'title': 'Impedance (AC Circuits)',
        'formula': 'ZR = R, ZL = jωL, ZC = 1/(jωC)',
      },
      {
        'title': 'Total Impedance (Series)',
        'formula': 'Zeq = √[R² + (X_L − X_C)²]',
      },
      {'title': 'Charge & Energy in Capacitor', 'formula': 'Q = CV\nE = ½CV²'},
      {'title': 'Filter Cut-off Frequency', 'formula': 'f_c = 1 / (2πRC)'},
      {
        'title': 'Transfer Function (Magnitude)',
        'formula': '|H(ω)| = 1 / √(1 + (ω/ωc)²)',
      },
      {
        'title': 'Ideal Diode Equation',
        'formula': 'I = I₀(e^(V / ηV_T) − 1), where V_T = kT/q ≈ 26mV at 300K',
      },
      {
        'title': 'Forward Bias Voltage (Diode)',
        'formula': 'VD = ηV_T ln(I / I₀ + 1)',
      },
      {
        'title': 'Reverse Saturation (Diode)',
        'formula': 'At large reverse bias: I ≈ −I₀',
      },
      {
        'title': 'Cut-in (Threshold) Voltage',
        'formula': 'Si ≈ 0.7V,  Ge ≈ 0.3V',
      },
      {'title': 'Power Dissipated (Diode)', 'formula': 'P = V_D × I_D'},
      {
        'title': 'Zener Region',
        'formula': 'VZ = constant when in breakdown region',
      },
      {'title': 'Load Current (Zener)', 'formula': 'IL = VZ / RL'},
      {
        'title': 'Series Resistor (Zener)',
        'formula': 'R = (Vin − VZ) / (IL + IZ)',
      },
      {'title': 'Power in Zener', 'formula': 'PZ = VZ × IZ'},
      {
        'title': 'Voltage Regulation Range',
        'formula': 'Vin(min) = VZ + IminR\nVin(max) = VZ + ImaxR',
      },
      {
        'title': 'Inverting Amplifier (Op-Amp)',
        'formula': 'Vo = −(Rf / Rin) × Vin',
      },
      {
        'title': 'Non-Inverting Amplifier (Op-Amp)',
        'formula': 'Vo = (1 + Rf / R1) × Vin',
      },
      {
        'title': 'Summing Amplifier (Op-Amp)',
        'formula': 'Vo = −Rf (V1/R1 + V2/R2 + …)',
      },
      {
        'title': 'Difference Amplifier (Op-Amp)',
        'formula': 'Vo = (R2 / R1) × (V2 − V1)',
      },
      {
        'title': 'Integrator (Op-Amp)',
        'formula': 'Vo(t) = −(1/RC) ∫ Vin(t) dt',
      },
      {
        'title': 'Differentiator (Op-Amp)',
        'formula': 'Vo(t) = −RC × dVin(t)/dt',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff29133f),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Electronics Formulas',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        titleSpacing: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Image.asset(
              "assets/Mobilon-removebg-preview (1) 2.png",
              height: 35,
              width: 35,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: formulas.length,
        itemBuilder: (context, index) {
          final formula = formulas[index];
          return CardsforFormula(
            title: formula['title']!,
            formula: formula['formula']!,
          );
        },
      ),
    );
  }
}
