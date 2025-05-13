import sys

    
"""        
for i in range (0, 64):
    print ("mov block_{0} A{0:02d};".format(i))
for i in range (0, 8):
    print ("mov state_{0} A{1};".format(4*i, i))
print("")    
for i in range (0, 8):
    print ("mov a{0} state_{1};".format(i, 4*i))
"""





# The standard way to generate the sha256 function is hidden.
"""
print ("(* function sha256compression(hin, inp) { *)")
print ("proc sha256compression (")
for i in range (0, 256, 4):
    print ("  bit hin_{0}, bit hin_{1}, bit hin_{2}, bit hin_{3},".format(i, i+1, i+2, i+3))
for i in range (0, 512, 4):
    print ("  bit inp_{0}, bit inp_{1}, bit inp_{2}, bit inp_{3}{4}".
           format(i, i+1, i+2, i+3, ';' if i == 508 else ','))
for i in range (0, 256, 4):
    print ("  bit out_{0}, bit out_{1}, bit out_{2}, bit out_{3}{4}".
           format(i, i+1, i+2, i+3, '' if i == 252 else ','))
print (") =")

print ("")
print ("{ true && true }")
print ("")
print ("")
"""

##########################################################################
## temporary solution for the local renaming bug ## BEGIN
##########################################################################
print ("proc main (")
print ("  uint8 A00, uint8 A01, uint8 A02, uint8 A03, uint8 A04,")
print ("  uint8 A05, uint8 A06, uint8 A07, uint8 A08, uint8 A09,")
print ("  uint8 A10, uint8 A11, uint8 A12, uint8 A13, uint8 A14,")
print ("  uint8 A15, uint8 A16, uint8 A17, uint8 A18, uint8 A19,")
print ("  uint8 A20, uint8 A21, uint8 A22, uint8 A23, uint8 A24,")
print ("  uint8 A25, uint8 A26, uint8 A27, uint8 A28, uint8 A29,")
print ("  uint8 A30, uint8 A31, uint8 A32, uint8 A33, uint8 A34,")
print ("  uint8 A35, uint8 A36, uint8 A37, uint8 A38, uint8 A39,")
print ("  uint8 A40, uint8 A41, uint8 A42, uint8 A43, uint8 A44,")
print ("  uint8 A45, uint8 A46, uint8 A47, uint8 A48, uint8 A49,")
print ("  uint8 A50, uint8 A51, uint8 A52, uint8 A53, uint8 A54,")
print ("  uint8 A55, uint8 A56, uint8 A57, uint8 A58, uint8 A59,")
print ("  uint8 A60, uint8 A61, uint8 A62, uint8 A63,")
print ("  uint32 A0, uint32 A1, uint32 A2, uint32 A3,")
print ("  uint32 A4, uint32 A5, uint32 A6, uint32 A7")
print (") =")
print ("{ true && true }")
print ("")


for i in range (0, 8):
    print ("inline scatter(A{0},".format(i))
    for j in range(31, 0, -4):
        print ("               hin_{0}, hin_{1}, hin_{2}, hin_{3}{4}".
               format(32*i+j, 32*i+j-1, 32*i+j-2, 32*i+j-3, ');' if j == 3 else ','))
print ("")

for i in range (0, 16):
    print ("inline merge(A{0:02d}, A{1:02d}, A{2:02d}, A{3:02d}, W_{4});".
           format(4*i, 4*i+1, 4*i+2, 4*i+3, i))
print ("")

for i in range (0, 16):
    print ("inline scatter(W_{0},".format(i))
    for j in range(0, 32, 4):
        print ("               inp_{0}, inp_{1}, inp_{2}, inp_{3}{4}".
               format(32*i+j, 32*i+j+1, 32*i+j+2, 32*i+j+3, ');' if j == 28 else ','))
print ("")
##########################################################################
## temporary solution for the local renaming bug ## END
##########################################################################


print ("(* Extend the inputs *)\n")
#for i in range (0, 256):
#    print ("mov hin_{0} hin_{0};".format(i))
#for i in range (0, 512):
#    print ("mov inp_{0} inp_{0};".format(i))
for i in range (0, 256):
    print ("cast hin_{0}@uint256 hin_{0}@bit;".format(i))
for i in range (0, 512):
    print ("cast inp_{0}@uint256 inp_{0}@bit;".format(i))
print ("\n")


##########################################################################
## The main part to translate circom code into cryptoline code ## BEGIN
##########################################################################
print ("    (* var H[8]; *)")
print ("")
print ("    (* var a; *)")
print ("")
print ("    (* var b; *)")
print ("")
print ("    (* var c; *)")
print ("")
print ("    (* var d; *)")
print ("")
print ("    (* var e; *)")
print ("")
print ("    (* var f; *)")
print ("")
print ("    (* var g; *)")
print ("")
print ("    (* var h; *)")
print ("")
print ("    (* var out[256]; *)")
print ("\n")


print ("    (* for (var i=0; i<8; i++) { *)")
print ("")
for i in range (0, 8):

    print ("        (*== i = {0} ==*)".format(i))
    print ("")
    print ("        (* H[i] = 0; *)")
    print ("        mov H_{0} 0@uint256;".format(i))
    print ("")
    print ("        (* for (var j=0; j<32; j++) { *)")
    print ("")
    for j in range (0, 32):

        print ("            (*== j = {0} ==*)".format(j))
        print ("")
        print ("            (* H[i] += hin[i*32+j] << j; *)")
        print ("            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)")
        if j == 0:
            print ("            mov tmp hin_{0};".format(i*32+j))
        else:
            print ("            shls dc tmp hin_{0} {1};".format(i*32+j, j))
        print ("            adds dc H_{0} H_{1} tmp;".format(i, i))
        print ("")
            
    print ("        (* } *)")
    print ("")

print ("    (* } *)")
print ("\n")

print ("    (* a=H[0]; *)")
print ("    mov a H_0;")
print ("")
print ("    (* b=H[1]; *)")
print ("    mov b H_1;")
print ("")
print ("    (* c=H[2]; *)")
print ("    mov c H_2;")
print ("")
print ("    (* d=H[3]; *)")
print ("    mov d H_3;")
print ("")
print ("    (* e=H[4]; *)")
print ("    mov e H_4;")
print ("")
print ("    (* f=H[5]; *)")
print ("    mov f H_5;")
print ("")
print ("    (* g=H[6]; *)")
print ("    mov g H_6;")
print ("")
print ("    (* h=H[7]; *)")
print ("    mov h H_7;")
print ("")
print ("    (* var w[64]; *)")
print ("")
print ("    (* var T1; *)")
print ("")    
print ("    (* var T2; *)")
print ("\n")


print ("    (* for (var i=0; i<64; i++) { *)")
print ("")
for i in range (0, 64):

    print ("        (*== i = {0} ==*)".format(i))
    print ("")
    if (i<16):
        print ("        (* if (i<16) { *)")
        print ("")            
        print ("            (* w[i]=0; *)")
        print ("            mov w_{0} 0@uint256;".format(i))
        print ("")
        print ("            (* for (var j=0; j<32; j++) { *)")
        print ("")
        for j in range (0, 32):

            print ("                (*== j = {0} ==*)".format(j))
            print ("")
            print ("                (* w[i] +=  inp[i*32+31-j]<<j; *)")
            print ("                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)")
            if j == 0:
                print ("                mov tmp inp_{0};".format(i*32+31-j))
            else:
                print ("                shls dc tmp inp_{0} {1};".format(i*32+31-j, j))
            print ("                adds dc w_{0} w_{0} tmp;".format(i))
            print ("")
        print ("            (* } *)")
        print ("")
    else :
        print ("        (* } else { *)")
        print ("")
        print ("            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)")
        print ("            inline ssigma1(w_{0}, tmp0);".format(i-2))
        print ("            adds dc tmp1 tmp0 w_{0};".format(i-7))
        print ("            inline ssigma0(w_{0}, tmp2);".format(i-15))
        print ("            adds dc tmp3 tmp1 tmp2;")
        print ("            adds dc tmp4 tmp3 w_{0};".format(i-16))
        print ("            and w_{0}@uint256 tmp4 0xFFFFFFFF@uint256;".format(i))
        print ("")
        print ("        (* } *)")
        print ("")

    print ("        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)")
    print ("        inline bsigma1(e, tmp0);")
    print ("        adds dc tmp1 h tmp0;")
    print ("        inline Ch(e, f, g, tmp2);")
    print ("        adds dc tmp3 tmp1 tmp2;")
    print ("        adds dc tmp4 tmp3 0x{0:x}@uint256;".format(sha256K[i]))
    print ("        adds dc tmp5 tmp4 w_{0};".format(i))
    print ("        and T1@uint256 tmp5 0xFFFFFFFF@uint256;")
    print ("")

    print ("        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)")
    print ("        inline bsigma0(a, tmp0);")
    print ("        inline Maj(a, b, c, tmp1);")
    print ("        adds dc tmp2 tmp0 tmp1;")
    print ("        and T2@uint256 tmp2 0xFFFFFFFF@uint256;")
    print ("")

    print ("        (* h=g; *)")
    print ("        mov h g;")
    print ("")
    print ("        (* g=f; *)")
    print ("        mov g f;")
    print ("")
    print ("        (* f=e; *)")
    print ("        mov f e;")
    print ("")
    print ("        (* e=(d+T1) & 0xFFFFFFFF; *)")
    print ("        adds dc tmp0 d T1;")
    print ("        and e@uint256 tmp0 0xFFFFFFFF@uint256;")
    print ("")
    print ("        (* d=c; *)")
    print ("        mov d c;")
    print ("")
    print ("        (* c=b; *)")
    print ("        mov c b;")
    print ("")
    print ("        (* b=a; *)")
    print ("        mov b a;")
    print ("")
    print ("        (* a=(T1+T2) & 0xFFFFFFFF; *)")
    print ("        adds dc tmp0 T1 T2;")
    print ("        and a@uint256 tmp0 0xFFFFFFFF@uint256;") 
    print ("")
    print ("    (* } *)")
print ("\n")


print ("    (* H[0] = H[0] + a; *)")
print ("    adds dc H_0 H_0 a;")
print ("")
print ("    (* H[1] = H[1] + b; *)")
print ("    adds dc H_1 H_1 b;")
print ("")
print ("    (* H[2] = H[2] + c; *)")
print ("    adds dc H_2 H_2 c;")
print ("")
print ("    (* H[3] = H[3] + d; *)")
print ("    adds dc H_3 H_3 d;")
print ("")
print ("    (* H[4] = H[4] + e; *)")
print ("    adds dc H_4 H_4 e;")
print ("")
print ("    (* H[5] = H[5] + f; *)")
print ("    adds dc H_5 H_5 f;")
print ("")
print ("    (* H[6] = H[6] + g; *)")
print ("    adds dc H_6 H_6 g;")
print ("")
print ("    (* H[7] = H[7] + h; *)")
print ("    adds dc H_7 H_7 h;")
print ("\n")


print ("    (* for (var i=0; i<8; i++) { *)")
print ("")
for i in range (0, 8):

    print ("        (*== i = {0} ==*)".format(i))
    print ("")
    print ("        (* for (var j=0; j<32; j++) { *)")
    print ("")
    for j in range (0, 32):

        print ("            (*== j = {0} ==*)".format(j))
        print ("")
        print ("            (* out[i*32+31-j] = (H[i] >> j) & 1; *)")
        if j == 0:
            print ("            mov tmp0 H_{0};".format(i))
        else:
            print ("            shrs tmp0 dc H_{0} {1};".format(i, j))
        print ("            and out_{0}@uint256 tmp0 1@uint256;".format(i*32+31-j))
        print ("")
    print ("        (* } *)")
    print ("")
print ("    (* } *)")
print ("\n")
##########################################################################
## The main part to translate circom code into cryptoline code ## END
##########################################################################

print ("    (* return out; *)")
print ("")
# TBD: the semantics of input/output should be confirmed
for i in range (0, 256):
    print ("cast out_{0}@bit out_{0};".format(i))
print ("\n")


##########################################################################
## temporary solution for the local renaming bug ## BEGIN
##########################################################################
for i in range (0, 8):
    print ("inline mergebit(") 
    for j in range(0, 32, 4):
        print ("  out_{0}, out_{1}, out_{2}, out_{3},".format(32*i+j, 32*i+j+1, 32*i+j+2, 32*i+j+3))
    print ("  a{0});".format(i))
print ("")
##########################################################################
## temporary solution for the local renaming bug ## END
##########################################################################



print ("{ true && true }")


print ("\n\n")


# The standard way to generate the main function is hidden.
"""
print ("proc main (")
print ("  uint8 A00, uint8 A01, uint8 A02, uint8 A03, uint8 A04,")
print ("  uint8 A05, uint8 A06, uint8 A07, uint8 A08, uint8 A09,")
print ("  uint8 A10, uint8 A11, uint8 A12, uint8 A13, uint8 A14,")
print ("  uint8 A15, uint8 A16, uint8 A17, uint8 A18, uint8 A19,")
print ("  uint8 A20, uint8 A21, uint8 A22, uint8 A23, uint8 A24,")
print ("  uint8 A25, uint8 A26, uint8 A27, uint8 A28, uint8 A29,")
print ("  uint8 A30, uint8 A31, uint8 A32, uint8 A33, uint8 A34,")
print ("  uint8 A35, uint8 A36, uint8 A37, uint8 A38, uint8 A39,")
print ("  uint8 A40, uint8 A41, uint8 A42, uint8 A43, uint8 A44,")
print ("  uint8 A45, uint8 A46, uint8 A47, uint8 A48, uint8 A49,")
print ("  uint8 A50, uint8 A51, uint8 A52, uint8 A53, uint8 A54,")
print ("  uint8 A55, uint8 A56, uint8 A57, uint8 A58, uint8 A59,")
print ("  uint8 A60, uint8 A61, uint8 A62, uint8 A63,")
print ("  uint32 A0, uint32 A1, uint32 A2, uint32 A3,")
print ("  uint32 A4, uint32 A5, uint32 A6, uint32 A7")
print (") =")
print ("{ true && true }")
print ("")


for i in range (0, 8):
    print ("inline scatter(A{0},".format(i))
    for j in range(31, 0, -4):
        print ("               hashin_{0}, hashin_{1}, hashin_{2}, hashin_{3}{4}".
               format(32*i+j, 32*i+j-1, 32*i+j-2, 32*i+j-3, ');' if j == 3 else ','))
print ("")

for i in range (0, 16):
    print ("inline merge(A{0:02d}, A{1:02d}, A{2:02d}, A{3:02d}, W_{4});".
           format(4*i, 4*i+1, 4*i+2, 4*i+3, i))
print ("")

for i in range (0, 16):
    print ("inline scatter(W_{0},".format(i))
    for j in range(0, 32, 4):
        print ("               msg_{0}, msg_{1}, msg_{2}, msg_{3}{4}".
               format(32*i+j, 32*i+j+1, 32*i+j+2, 32*i+j+3, ');' if j == 28 else ','))
print ("")

print ("inline sha256compression(")
for i in range (0, 256, 4):
    print ("  hashin_{0}, hashin_{1}, hashin_{2}, hashin_{3},".format(i, i+1, i+2, i+3))
for i in range (0, 512, 4):
    print ("  msg_{0}, msg_{1}, msg_{2}, msg_{3},".format(i, i+1, i+2, i+3))
for i in range (0, 256, 4):
    print ("  hashout_{0}, hashout_{1}, hashout_{2}, hashout_{3}{4}".
           format(i, i+1, i+2, i+3, ');' if i == 252 else ','))
print ("")

for i in range (0, 8):
    print ("inline mergebit(") 
    for j in range(0, 32, 4):
        print ("  hashout_{0}, hashout_{1}, hashout_{2}, hashout_{3},".format(32*i+j, 32*i+j+1, 32*i+j+2, 32*i+j+3))
    print ("  a{0});".format(i))
print ("")

print ("{ true && true }")
"""
