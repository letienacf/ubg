s(S)-->np1(S).

np(N)-->nn(NN1),nn(NN2),{NN1=sem~(cat~X..subcat~Y),NN2=sem~(cat~Z),Z==Y,
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~NN1..comp~NN2)}.

np(N)-->nn(NN1),nn(NN2),{NN1=sem~(cat~X..subcat~Y),NN2=sem~(cat~Z),X==Z,
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~NN1..comp~NN2)}.

np(N)-->nn(N).

np1(N)-->np(N1),adjp(A),{N1=sem~(cat~X..subcat~Y),A=sem~(cat~Z..subcat~T),X==Z,Y==T,
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~N1..comp~A)}.


adjp(A)-->jj(A).


nn(syn~(cat~nn)..sem~(cat~người..subcat~nữ..head~cô))-->[cô].
nn(syn~(cat~nn)..sem~(cat~người..subcat~nữ..head~chị))-->[chị].
nn(syn~(cat~nn)..sem~(cat~nữ..subcat~kết_hôn..head~dâu))-->[dâu].
nn(syn~(cat~nn)..sem~(cat~người..subcat~nam..head~chú))-->[chú].
nn(syn~(cat~nn)..sem~(cat~nam..subcat~kết_hôn..head~rể))-->[rể].
nn(syn~(cat~nn)..sem~(cat~động_vật..head~con))-->[con].
nn(syn~(cat~nn)..sem~(cat~động_vật..subcat~chó..head~chó))-->[chó].

rb(syn~(cat~rb)..sem~(head~rất))-->[rất].

jj(syn~(cat~jj)..sem~(head~này))-->[này].
jj(syn~(cat~jj)..sem~(cat~người..subcat~nữ..head~nữ_tính))-->[nữ,tính].

