import 'package:flutter/material.dart';
import 'package:formula_app/cardsfor_formula.dart';

class CalculasFormula extends StatelessWidget {
  const CalculasFormula({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> formulas = [
      {'title': 'Number of Subsets of a Set', 'formula': 'N = 2ⁿ'},
      {
        'title': 'Cardinality Relation',
        'formula': '|A ∪ B| = |A| + |B| - |A ∩ B|',
      },
      {'title': 'Power Set', 'formula': '|P(A)| = 2^|A|'},
      {
        'title': 'Supremum and Infimum',
        'formula': 'sup S = least upper bound\ninf S = greatest lower bound',
      },
      {
        'title': 'Limit of a Sequence (Definition)',
        'formula':
            'For every ε > 0, there exists N such that |aₙ − L| < ε for n > N.',
      },
      {'title': 'Recursive Sequence Example', 'formula': 'Sₙ₊₁ = 3Sₙ'},
      {
        'title': 'Monotone Convergence Theorem',
        'formula': 'Every bounded and monotonic sequence converges.',
      },
      {
        'title': 'Sandwich Theorem',
        'formula': 'If aₙ ≤ bₙ ≤ cₙ and aₙ, cₙ → L, then bₙ → L.',
      },
      {
        'title': 'Exponential Sequence Limit',
        'formula': 'limₙ→∞ (1 + 1/n)ⁿ = e',
      },
      {'title': 'Factorial Ratio Form', 'formula': '(aₙ₊₁ / aₙ)'},
      {
        'title': 'Ratio Test',
        'formula':
            'L = limₙ→∞ (aₙ₊₁ / aₙ)\nIf L < 1 → converges\nIf L > 1 → diverges',
      },
      {'title': 'Root Test', 'formula': 'L = limₙ→∞ (|aₙ|)^(1/n)'},
      {'title': 'p-Series Test', 'formula': '∑ (1/nᵖ) converges if p > 1'},
      {
        'title': 'Alternating Series Test (Leibniz)',
        'formula': 'If aₙ decreasing and aₙ → 0, then ∑(−1)ⁿaₙ converges.',
      },
      {
        'title': 'Comparison Test',
        'formula': 'Compare with a known convergent or divergent series.',
      },
      {'title': 'General Power Series', 'formula': '∑ₙ₌₀ aₙ(x − c)ⁿ'},
      {
        'title': 'Radius of Convergence (Ratio Test Form)',
        'formula': 'R = limₙ→∞ (aₙ / aₙ₊₁)',
      },
      {
        'title': 'Maclaurin Series (Taylor at x=0)',
        'formula': 'f(x) = ∑ₙ₌₀ [f⁽ⁿ⁾(0)/n!] xⁿ',
      },
      {
        'title': 'Taylor Series (about x=a)',
        'formula': 'f(x) = ∑ₙ₌₀ [f⁽ⁿ⁾(a)/n!] (x − a)ⁿ',
      },
      {
        'title': 'Limit Definition',
        'formula':
            'limₓ→a f(x) = L ⇔ ∀ε>0, ∃δ>0 such that |x−a|<δ ⇒ |f(x)−L|<ε',
      },
      {
        'title': 'Continuity',
        'formula': 'f is continuous at x=a if limₓ→a f(x) = f(a)',
      },
      {
        'title': 'L’Hôpital’s Rule',
        'formula': 'If lim f/g yields 0/0 or ∞/∞, then lim f/g = lim f′/g′',
      },
      {
        'title': 'Standard Limits',
        'formula':
            'limₓ→0 (sin x / x) = 1\nlimₓ→0 [(1−cos x)/x²] = 1/2\nlimₓ→0 (1+x)^(1/x) = e',
      },
      {
        'title': 'Double Integral (Cartesian)',
        'formula': '∬_R f(x,y) dA = ∫ₐᵇ ∫_{g₁(x)}^{g₂(x)} f(x,y) dy dx',
      },
      {'title': 'Triple Integral', 'formula': '∭_V f(x,y,z) dz dy dx'},
      {
        'title': 'Polar Form (Double Integral)',
        'formula': '∬_R f(r,θ) r dr dθ',
      },
      {'title': 'Volume Under a Surface', 'formula': 'V = ∬_R f(x,y) dA'},
      {
        'title': 'Coordinate Conversion (Polar)',
        'formula': 'x = r cosθ\ny = r sinθ\ndA = r dr dθ',
      },
      {
        'title': 'Improper Integral Definition',
        'formula': '∫ₐ^∞ f(x) dx = lim_{b→∞} ∫ₐᵇ f(x) dx',
      },
      {
        'title': 'Convergence Comparison Test (Integrals)',
        'formula':
            'If 0 ≤ f(x) ≤ g(x) and ∫ g(x) converges, then ∫ f(x) converges.',
      },
      {
        'title': 'Gamma Function',
        'formula': 'Γ(n) = ∫₀^∞ xⁿ⁻¹ e⁻ˣ dx\nΓ(n+1) = nΓ(n)\nΓ(1/2) = √π',
      },
      {
        'title': 'Beta Function',
        'formula': 'B(m,n) = ∫₀¹ xᵐ⁻¹(1−x)ⁿ⁻¹ dx\nB(m,n) = Γ(m)Γ(n)/Γ(m+n)',
      },
      {
        'title': 'Partial Derivative',
        'formula': '∂f/∂x = lim_{h→0} [f(x+h,y)−f(x,y)]/h',
      },
      {
        'title': 'Directional Derivative',
        'formula': 'Dᵤf = ∇f ⋅ u = fₓcosα + f_y sinα',
      },
      {'title': 'Gradient', 'formula': '∇f = (∂f/∂x, ∂f/∂y)'},
      {'title': 'Critical Points', 'formula': 'fₓ = 0, fᵧ = 0'},
      {
        'title': 'Second Derivative Test (Hessian)',
        'formula':
            'D = fₓₓ fᵧᵧ − (fₓᵧ)²\nIf D>0 & fₓₓ>0 → local min\nIf D>0 & fₓₓ<0 → local max\nIf D<0 → saddle point',
      },
      {
        'title': 'Iterated Limit Check',
        'formula': 'Compare limₓ→a limᵧ→b f(x,y) and lim_{(x,y)→(a,b)} f(x,y)',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff29133f),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Calculus Formulas',
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
