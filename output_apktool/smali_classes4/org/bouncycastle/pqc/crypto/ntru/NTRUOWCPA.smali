.class Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;
.super Ljava/lang/Object;
.source "NTRUOWCPA.java"


# instance fields
.field private final params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

.field private final sampling:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    .line 23
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->sampling:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    .line 24
    return-void
.end method

.method private checkCiphertext([B)I
    .locals 3
    .param p1, "ciphertext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ciphertext"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    int-to-short v0, v0

    .line 209
    .local v0, "t":S
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    mul-int v1, v1, v2

    and-int/lit8 v1, v1, 0x7

    rsub-int/lit8 v1, v1, 0x8

    const/16 v2, 0xff

    shl-int v1, v2, v1

    and-int/2addr v1, v0

    int-to-short v0, v1

    .line 213
    not-int v1, v0

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0xf

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private checkM(Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;)I
    .locals 5
    .param p1, "m"    # Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "t":I
    const/4 v1, 0x0

    .line 251
    .local v1, "ps":S
    const/4 v2, 0x0

    .line 252
    .local v2, "ms":S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 254
    iget-object v4, p1, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    aget-short v4, v4, v3

    and-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    int-to-short v1, v4

    .line 255
    iget-object v4, p1, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    aget-short v4, v4, v3

    and-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-short v2, v4

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_0
    ushr-int/lit8 v4, v2, 0x1

    xor-int/2addr v4, v1

    or-int/2addr v0, v4

    .line 259
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    check-cast v4, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->weight()I

    move-result v4

    xor-int/2addr v4, v2

    or-int/2addr v0, v4

    .line 263
    not-int v4, v0

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1f

    and-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private checkR(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)I
    .locals 5
    .param p1, "r"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "t":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 225
    iget-object v2, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v2, v2, v1

    .line 226
    .local v2, "c":S
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 227
    add-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0x4

    or-int/2addr v0, v3

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "c":S
    :cond_0
    iget-object v2, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-short v2, v2, v3

    or-int/2addr v0, v2

    .line 234
    not-int v2, v0

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    and-int/lit8 v2, v2, 0x1

    return v2
.end method


# virtual methods
.method public decrypt([B[B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;
    .locals 23
    .param p1, "ciphertext"    # [B
    .param p2, "privateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertext",
            "privateKey"
        }
    .end annotation

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 134
    .local v1, "sk":[B
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v2

    new-array v2, v2, [B

    .line 136
    .local v2, "rm":[B
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    .line 137
    .local v3, "x1":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    .line 138
    .local v4, "x2":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    .line 139
    .local v5, "x3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    .line 141
    .local v6, "x4":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v7, v3

    .local v7, "c":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v8, v4

    .local v8, "f":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v9, v5

    .line 142
    .local v9, "cf":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v10, v4

    .local v10, "mf":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v11, v5

    .local v11, "finv3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v12, v6

    .line 143
    .local v12, "m":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v13, v4

    .local v13, "liftm":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v14, v5

    .local v14, "invh":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v15, v6

    .line 144
    .local v15, "r":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object/from16 v16, v3

    .line 146
    .local v16, "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object/from16 v17, v3

    move-object/from16 v3, p1

    .end local v3    # "x1":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v17, "x1":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqSumZeroFromBytes([B)V

    .line 147
    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3FromBytes([B)V

    .line 148
    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    .line 150
    invoke-virtual {v9, v7, v8}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 151
    invoke-virtual {v10, v9}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqToS3(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 153
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v3

    move-object/from16 v18, v4

    .end local v4    # "x2":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v18, "x2":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    array-length v4, v1

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3FromBytes([B)V

    .line 154
    invoke-virtual {v12, v10, v11}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3Mul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 155
    array-length v3, v2

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v12, v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v3

    .line 157
    .local v3, "arr1":[B
    const/4 v4, 0x0

    .line 160
    .local v4, "fail":I
    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->checkCiphertext([B)I

    move-result v19

    or-int v4, v4, v19

    .line 166
    move/from16 v19, v4

    .end local v4    # "fail":I
    .local v19, "fail":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v4, v4, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    if-eqz v4, :cond_0

    .line 168
    move-object v4, v12

    check-cast v4, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->checkM(Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;)I

    move-result v4

    or-int v4, v19, v4

    .end local v19    # "fail":I
    .restart local v4    # "fail":I
    goto :goto_0

    .line 166
    .end local v4    # "fail":I
    .restart local v19    # "fail":I
    :cond_0
    move/from16 v4, v19

    .line 172
    .end local v19    # "fail":I
    .restart local v4    # "fail":I
    :goto_0
    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 173
    const/16 v19, 0x0

    move/from16 v20, v4

    move/from16 v4, v19

    .local v4, "i":I
    .local v20, "fail":I
    :goto_1
    move-object/from16 v19, v5

    .end local v5    # "x3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v19, "x3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 175
    move-object/from16 v5, v16

    move/from16 v16, v4

    .end local v4    # "i":I
    .local v5, "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v16, "i":I
    iget-object v4, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    move-object/from16 v21, v4

    iget-object v4, v7, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v16

    move/from16 v22, v4

    iget-object v4, v13, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v16

    sub-int v4, v22, v4

    int-to-short v4, v4

    aput-short v4, v21, v16

    .line 173
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v16, v5

    move-object/from16 v5, v19

    .end local v16    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 179
    .end local v5    # "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v16, "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    :cond_1
    move-object/from16 v5, v16

    move/from16 v16, v4

    .end local v4    # "i":I
    .restart local v5    # "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v16, "i":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v21, v6

    .end local v6    # "x4":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v21, "x4":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    array-length v6, v1

    invoke-static {v1, v4, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqFromBytes([B)V

    .line 180
    invoke-virtual {v15, v5, v14}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 193
    invoke-direct {v0, v15}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->checkR(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)I

    move-result v4

    or-int v4, v20, v4

    .line 195
    .end local v20    # "fail":I
    .local v4, "fail":I
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->trinaryZqToZ3()V

    .line 196
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v6

    invoke-virtual {v15, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v6

    .line 197
    .local v6, "arr2":[B
    move-object/from16 v20, v1

    .end local v1    # "sk":[B
    .local v20, "sk":[B
    array-length v1, v6

    move-object/from16 v22, v5

    .end local v5    # "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v22, "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    const/4 v5, 0x0

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v1

    array-length v0, v3

    invoke-static {v3, v5, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;

    invoke-direct {v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;-><init>([BI)V

    return-object v0
.end method

.method public encrypt(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;[B)[B
    .locals 9
    .param p1, "r"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "m"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p3, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "m",
            "publicKey"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    .local v0, "x1":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v1

    .line 108
    .local v1, "x2":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v2, v0

    .local v2, "h":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v3, v0

    .line 109
    .local v3, "liftm":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v4, v1

    .line 111
    .local v4, "ct":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-virtual {v2, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqSumZeroFromBytes([B)V

    .line 113
    invoke-virtual {v4, p1, v2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 115
    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 116
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 118
    iget-object v6, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v6, v5

    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v5

    add-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v6, v5

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    :cond_0
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqSumZeroToBytes(I)[B

    move-result-object v6

    return-object v6
.end method

.method public keypair([B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;
    .locals 25
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 36
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v1

    new-array v1, v1, [B

    .line 37
    .local v1, "privateKey":[B
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    .line 38
    .local v2, "n":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v3

    .line 42
    .local v3, "q":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    .line 43
    .local v4, "x3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    .line 44
    .local v5, "x4":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    .line 46
    .local v6, "x5":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v7, v4

    .line 47
    .local v7, "invfMod3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v8, v4

    .local v8, "gf":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v9, v5

    .local v9, "invgf":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v10, v6

    .line 48
    .local v10, "tmp":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v11, v4

    .local v11, "invh":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v12, v4

    .line 50
    .local v12, "h":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->sampling:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    move-object/from16 v14, p1

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleFg([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    move-result-object v13

    .line 51
    .local v13, "pair":Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->f()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v15

    .line 52
    .local v15, "f":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move/from16 v16, v3

    .end local v3    # "q":I
    .local v16, "q":I
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->g()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    .line 54
    .local v3, "g":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-virtual {v7, v15}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 55
    move-object/from16 v17, v4

    .end local v4    # "x3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v17, "x3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v4

    invoke-virtual {v15, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v4

    .line 56
    .local v4, "fs3ToBytes":[B
    move-object/from16 v18, v5

    .end local v5    # "x4":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v18, "x4":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    array-length v5, v4

    move-object/from16 v19, v6

    .end local v6    # "x5":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v19, "x5":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    array-length v5, v1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v5

    .line 58
    .local v5, "s3Res":[B
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v6

    move-object/from16 v21, v4

    .end local v4    # "fs3ToBytes":[B
    .local v21, "fs3ToBytes":[B
    array-length v4, v5

    move-object/from16 v22, v7

    const/4 v7, 0x0

    .end local v7    # "invfMod3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v22, "invfMod3":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-static {v5, v7, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    .line 61
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    .line 63
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v4, v4, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;

    if-eqz v4, :cond_1

    .line 66
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_0

    .line 68
    iget-object v6, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v7, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v23, v4, -0x1

    aget-short v7, v7, v23

    move/from16 v23, v4

    .end local v4    # "i":I
    .local v23, "i":I
    iget-object v4, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v23

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0x3

    int-to-short v4, v7

    aput-short v4, v6, v23

    .line 66
    add-int/lit8 v4, v23, -0x1

    .end local v23    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 70
    :cond_0
    move/from16 v23, v4

    .end local v4    # "i":I
    .restart local v23    # "i":I
    iget-object v4, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v6, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/16 v20, 0x0

    aget-short v6, v6, v20

    mul-int/lit8 v6, v6, 0x3

    neg-int v6, v6

    int-to-short v6, v6

    aput-short v6, v4, v20

    move/from16 v4, v23

    goto :goto_2

    .line 74
    .end local v23    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 76
    iget-object v6, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v7, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v4

    mul-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    aput-short v7, v6, v4

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_2
    :goto_2
    invoke-virtual {v8, v3, v15}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 81
    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 83
    invoke-virtual {v10, v9, v15}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 84
    invoke-virtual {v11, v10, v15}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 85
    array-length v6, v1

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v11, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqToBytes(I)[B

    move-result-object v6

    .line 86
    .local v6, "sqRes":[B
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    move/from16 v23, v2

    .end local v2    # "n":I
    .local v23, "n":I
    array-length v2, v6

    move/from16 v24, v4

    const/4 v4, 0x0

    .end local v4    # "i":I
    .local v24, "i":I
    invoke-static {v6, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-virtual {v10, v9, v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 89
    invoke-virtual {v12, v10, v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 90
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaPublicKeyBytes()I

    move-result v2

    invoke-virtual {v12, v2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqSumZeroToBytes(I)[B

    move-result-object v2

    .line 92
    .local v2, "publicKey":[B
    new-instance v4, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;

    invoke-direct {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;-><init>([B[B)V

    return-object v4
.end method
