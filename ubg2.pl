s(SF)-->np(NF),vp(VF),{SF=syn~(cat~s)..sem~(head~H),
                        VF=sem~H,H=arg0~N,NF=sem~N}.

s(SF)-->np(NF),vp1(VF),{SF=syn~(cat~s)..sem~(head~H),
                        VF=sem~H,H=arg0~N,NF=sem~N}.

s(SF)-->np1(NF),vp(VF),{SF=syn~(cat~s)..sem~(head~H),
                        VF=sem~H,H=arg0~N,NF=sem~N}.                        

s(S)-->np2(S).
              
np(N)-->nn(NN),nnp(NNP),{NN=sem~(cat~X..subcat~Y),
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~NN..comp~NNP)}.

np(N)-->nn(NN1),nn(NN2),{NN1=sem~(cat~X..subcat~Y),
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~NN1..comp~NN2)}.

np(N)-->nn(NN1),np(NN2),{NN1=sem~(cat~X..subcat~Y),
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~NN1..comp~NN2)}.

np(N)-->prp(N).

np(N)-->nn(N).

np(N)-->cd(CD),np(NP),{NP=sem~(cat~X..subcat~Y),
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~NP..comp~CD)}.

np(N)-->dt(DT),np(NP),{NP=sem~(cat~X..subcat~Y),
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~NP..comp~DT)}.

np1(N)-->np(N1),pp(P),{N1=sem~(cat~X..subcat~Y),
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~N1..comp~P)}.

np1(N)-->np(N1),adjp(A),{N1=sem~(cat~X..subcat~Y),
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~N1..comp~A)}.

np2(N)-->np1(N1),adjp(A),{N1=sem~(cat~X..subcat~Y),
                        N=syn~(cat~np)..sem~(cat~X..subcat~Y..head~N1..comp~A)}.

vp(V)-->vb(VB),pp(P),{VB=sem~(cat~X..subcat~Y..arg1~Z),
                    V=syn~(cat~vp)..sem~(cat~X..subcat~Y..arg1~Z..head~VB..comp~P)}.

vp(V)-->vb(VB),np(NP),{VB=sem~(cat~X..subcat~Y),
                        V=syn~(cat~vp)..sem~(cat~X..subcat~Y..head~VB..arg1~NP)}.

vp(V)-->rb(RB),vp(VP),{VP=sem~(cat~X..subcat~Y..arg1~Z),
                        V=syn~(cat~vp)..sem~(cat~X..subcat~Y..arg1~Z..head~VP..comp~RB)}.

vp(V)-->vb(VB),np1(NP),{VB=sem~(cat~X..subcat~Y),
                        V=syn~(cat~vp)..sem~(cat~X..subcat~Y..head~VB..arg1~NP)}.

vp1(V)-->vp(VB),pp(P),{VB=sem~(cat~X..subcat~Y..arg1~Z),
                    V=syn~(cat~vp)..sem~(cat~X..subcat~Y..arg1~Z..head~VB..comp~P)}.

pp(P)-->in(I),np(N),{I=sem~(cat~X..subcat~Y),
                    P=syn~(cat~pp)..sem~(cat~X..subcat~Y..head~I..comp~N)}.

adjp(A)-->jj(A).

adjp(A)-->rb(R),adjp(J),{J=sem~(cat~X..subcat~Y),
                        A=syn~(cat~adjp)..sem~(cat~X..subcat~Y..head~J..comp~R)}.

nn(syn~(cat~nn)..sem~(cat~người..subcat~nam..head~anh))-->[anh].
nn(syn~(cat~nn)..sem~(cat~người..subcat~nữ..head~chị))-->[chị].
nn(syn~(cat~nn)..sem~(cat~người..subcat~nam..head~chú))-->[chú].
nn(syn~(cat~nn)..sem~(cat~người..subcat~nữ..head~cô))-->[cô].
nn(syn~(cat~nn)..sem~(head~rể))-->[rể].
nn(syn~(cat~nn)..sem~(head~dâu))-->[dâu].
nn(syn~(cat~nn)..sem~(cat~người..head~người))-->[người].
nn(syn~(cat~nn)..sem~(cat~động_vật..head~con))-->[con].
nn(syn~(cat~nn)..sem~(cat~động_vật..subcat~chó..head~chó))-->[chó].
nn(syn~(cat~nn)..sem~(cat~bình_minh..head~sáng))-->[sáng].
nn(syn~(cat~nn..num~sg)..sem~(cat~người..head~học_sinh))-->[học,sinh].
nn(syn~(cat~nn..num~sg)..sem~(cat~cấp..head~cấp))-->[cấp].
nn(syn~(cat~nn..num~sg)..sem~(cat~cấp..head~hai))-->[hai].
nn(syn~(cat~nn..num~sg)..sem~(cat~ngôn_ngữ..head~tiếng_Anh))-->[tiếng,anh].
nn(syn~(cat~nn..num~sg)..sem~(cat~ngôn_ngữ..head~tiếng_Việt))-->[tiếng,việt].
nn(syn~(cat~nn)..sem~(cat~động_vật..head~huyền_đề))-->[huyền,đề].

nnp(syn~(cat~nnp..num~sg)..sem~(cat~người..subcat~nam..head~hùng))-->[hùng].
nnp(syn~(cat~nnp..num~sg)..sem~(cat~người..subcat~nữ..head~hoa))-->[hoa].

rb(syn~(cat~rb)..sem~(head~sẽ))-->[sẽ].
rb(syn~(cat~rb)..sem~(head~thường))-->[thường].
rb(syn~(cat~rb)..sem~(head~rất))-->[rất].

vb(syn~(cat~vb)..sem~(cat~động_vật..head~sủa))-->[sủa].
vb(syn~(cat~vb)..sem~(cat~người..arg1~(cat~người)..head~là))-->[là].
vb(syn~(cat~vb)..sem~(head~nuôi))-->[nuôi].
vb(syn~(cat~vb)..sem~(head~nói_chuyện))-->[nói,chuyện].
vb(syn~(cat~vb)..sem~(head~dạy))-->[dạy].
vb(syn~(cat~vb)..sem~(head~thông_dịch))-->[thông,dịch].

cd(syn~(cat~cd..num~pl)..sem~(cat~số_lượng..head~hai))-->[hai].
cd(syn~(cat~cd..num~sg)..sem~(cat~số_lượng..head~một))-->[một].

in(sys~(cat~in)..sem~(head~của))-->[của].
in(sys~(cat~in)..sem~(head~với))-->[với].
in(sys~(cat~in)..sem~(head~qua))-->[qua].

prp(syn~(cat~prp..num~pl)..sem~(cat~người..head~họ))-->[họ].
prp(syn~(cat~prp..num~sg)..sem~(cat~người..head~nó))-->[nó].

dt(syn~(cat~dt..num~sg)..sem~(cat~số_lượng..head~mỗi))-->[mỗi].

jj(syn~(cat~jj)..sem~(head~này))-->[này].
jj(syn~(cat~jj)..sem~(cat~động_vật..head~khôn))-->[khôn].
jj(syn~(cat~jj)..sem~(head~huyền_đề..cat~động_vật))-->[này].
