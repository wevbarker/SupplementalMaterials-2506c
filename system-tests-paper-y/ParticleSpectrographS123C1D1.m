<<xAct`PSALTer`;
DefConstantSymbol[K1,PrintAs->"\!\(\*SubscriptBox[\(\[ScriptCapitalK]\)\(\*OverscriptBox[\(\[Kappa]\),\((4)\)]\),\(1\)]\)"];
DefConstantSymbol[K2,PrintAs->"\!\(\*SubscriptBox[\(\[ScriptCapitalK]\)\(\*OverscriptBox[\(\[Kappa]\),\((4)\)]\),\(2\)]\)"];
DefConstantSymbol[M1,PrintAs->"\!\(\*SubscriptBox[\(\[ScriptCapitalM]\)\(\*OverscriptBox[\(\[Kappa]\),\((2)\)]\),\(1\)]\)"];
DefField[S123Field[-a,-b,-c],Symmetric[{-a,-b,-c}],PrintAs->"\[ScriptCapitalK]",PrintSourceAs->"\[ScriptCapitalJ]"];
ParticleSpectrum[M1*S123Field[-a,-b,-c]*S123Field[a,b,c]-(M1*S123Field[a,-a,b]*S123Field[-b,c,-c])/2+K1*CD[-b][S123Field[-c,d,-d]]*CD[c][S123Field[a,-a,b]]+K2*CD[-c][S123Field[-b,d,-d]]*CD[c][S123Field[a,-a,b]]-18*K1*CD[-a][S123Field[a,b,c]]*CD[-d][S123Field[-b,-c,d]]+12*K1*CD[c][S123Field[a,-a,b]]*CD[-d][S123Field[-b,-c,d]]-2*K1*CD[-d][S123Field[-a,-b,-c]]*CD[d][S123Field[a,b,c]]-2*K2*CD[-d][S123Field[-a,-b,-c]]*CD[d][S123Field[a,b,c]],TheoryName->"S123C1D1",Method->"Hard",ShowPropagator->True,AspectRatio->Portrait,MaxLaurentDepth->1];
Quit[];