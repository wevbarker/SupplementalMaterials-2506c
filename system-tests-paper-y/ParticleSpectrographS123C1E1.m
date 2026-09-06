<<xAct`PSALTer`;
DefConstantSymbol[K1,PrintAs->"\!\(\*SubscriptBox[\(\[ScriptCapitalK]\)\(\*OverscriptBox[\(\[Kappa]\),\((4)\)]\),\(1\)]\)"];
DefConstantSymbol[K3,PrintAs->"\!\(\*SubscriptBox[\(\[ScriptCapitalK]\)\(\*OverscriptBox[\(\[Kappa]\),\((4)\)]\),\(3\)]\)"];
DefField[S123Field[-a,-b,-c],Symmetric[{-a,-b,-c}],PrintAs->"\[ScriptCapitalK]",PrintSourceAs->"\[ScriptCapitalJ]"];
ParticleSpectrum[K1*CD[-b][S123Field[-c,d,-d]]*CD[c][S123Field[a,-a,b]]-K1*CD[-c][S123Field[-b,d,-d]]*CD[c][S123Field[a,-a,b]]+K3*CD[-a][S123Field[a,b,c]]*CD[-d][S123Field[-b,-c,d]]-(2*K3*CD[c][S123Field[a,-a,b]]*CD[-d][S123Field[-b,-c,d]])/3,TheoryName->"S123C1E1",Method->"Hard",ShowPropagator->True,AspectRatio->Portrait,MaxLaurentDepth->1];
Quit[];