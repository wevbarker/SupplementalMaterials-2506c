(*========*)
(*  S123  *)
(*========*)

Comment@"Here is the most general Lagrangian for the totally symmetric field.";
LagrangianDensity=M1*S123Field[-a,-b,-c]*S123Field[a,b,c]+M2*S123Field[a,-a,b]*S123Field[-b,c,-c]+K1*CD[-b][S123Field[-c,d,-d]]*CD[c][S123Field[a,-a,b]]+K2*CD[-c][S123Field[-b,d,-d]]*CD[c][S123Field[a,-a,b]]+K3*CD[-a][S123Field[a,b,c]]*CD[-d][S123Field[-b,-c,d]]+K4*CD[c][S123Field[a,-a,b]]*CD[-d][S123Field[-b,-c,d]]+K7*CD[-d][S123Field[-a,-b,-c]]*CD[d][S123Field[a,b,c]];
DisplayExpression[LagrangianDensity,EqnLabel->"S123RootTheory"];

Comment@{"Now we take",Cref@"S123RootTheory"," and we perform the survey:"};
Code[LagrangianDensity,
	MakeSurvey[LagrangianDensity, 
		TheoryName->"S123",
		ImageSize->500,
		VertexSize->0.5,
		Magnification->2.
	];
];
