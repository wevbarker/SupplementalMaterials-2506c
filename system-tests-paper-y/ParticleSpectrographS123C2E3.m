<<xAct`PSALTer`;
DefConstantSymbol[K1,PrintAs->"\!\(\*SubscriptBox[\(\[ScriptCapitalK]\)\(\*OverscriptBox[\(\[Kappa]\),\((4)\)]\),\(1\)]\)"];
DefConstantSymbol[K2,PrintAs->"\!\(\*SubscriptBox[\(\[ScriptCapitalK]\)\(\*OverscriptBox[\(\[Kappa]\),\((4)\)]\),\(2\)]\)"];
DefField[S123Field[-a,-b,-c],Symmetric[{-a,-b,-c}],PrintAs->"\[ScriptCapitalK]",PrintSourceAs->"\[ScriptCapitalJ]"];
ParticleSpectrum[K1*CD[-b][S123Field[-c,d,-d]]*CD[c][S123Field[a,-a,b]]+K2*CD[-c][S123Field[-b,d,-d]]*CD[c][S123Field[a,-a,b]]+3*K2*CD[-a][S123Field[a,b,c]]*CD[-d][S123Field[-b,-c,d]]-2*K2*CD[c][S123Field[a,-a,b]]*CD[-d][S123Field[-b,-c,d]]-(5*K2*CD[-d][S123Field[-a,-b,-c]]*CD[d][S123Field[a,b,c]])/3,TheoryName->"S123C2E3",Method->"Hard",ShowPropagator->True,AspectRatio->Portrait,MaxLaurentDepth->1];
Quit[];