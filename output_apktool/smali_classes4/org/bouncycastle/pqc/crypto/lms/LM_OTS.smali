.class Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;
.super Ljava/lang/Object;
.source "LM_OTS.java"


# static fields
.field static final D_MESG:S = -0x7e7fs

.field private static final D_PBLC:S = -0x7f80s

.field private static final ITER_J:I = 0x16

.field private static final ITER_K:I = 0x14

.field private static final ITER_PREV:I = 0x17

.field static final MAX_HASH:I = 0x20

.field static final SEED_RANDOMISER_INDEX:I = -0x3


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cksm([BILorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I
    .locals 6
    .param p0, "S"    # [B
    .param p1, "sLen"    # I
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "S",
            "sLen",
            "parameters"
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "sum":I
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v1

    .line 38
    .local v1, "w":I
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    .line 40
    .local v3, "twoWpow":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    mul-int/lit8 v4, p1, 0x8

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v5

    div-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 42
    add-int v4, v0, v3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v5

    invoke-static {p0, v2, v5}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->coef([BII)I

    move-result v5

    sub-int v0, v4, v5

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getLs()I

    move-result v2

    shl-int v2, v0, v2

    return v2
.end method

.method public static coef([BII)I
    .locals 5
    .param p0, "S"    # [B
    .param p1, "i"    # I
    .param p2, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "S",
            "i",
            "w"
        }
    .end annotation

    .line 22
    mul-int v0, p1, p2

    const/16 v1, 0x8

    div-int/2addr v0, v1

    .line 23
    .local v0, "index":I
    div-int/2addr v1, p2

    .line 24
    .local v1, "digits_per_byte":I
    not-int v2, p1

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    mul-int v2, v2, p2

    .line 25
    .local v2, "shift":I
    const/4 v3, 0x1

    shl-int v4, v3, p2

    sub-int/2addr v4, v3

    .line 27
    .local v4, "mask":I
    aget-byte v3, p0, v0

    ushr-int/2addr v3, v2

    and-int/2addr v3, v4

    return v3
.end method

.method public static lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    .locals 17
    .param p0, "privateKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;
    .param p1, "Q"    # [B
    .param p2, "C"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "Q",
            "C"
        }
    .end annotation

    .line 137
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v1

    .line 139
    .local v1, "parameter":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v2

    .line 140
    .local v2, "n":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getP()I

    move-result v3

    .line 141
    .local v3, "p":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v4

    .line 143
    .local v4, "w":I
    mul-int v5, v3, v2

    new-array v5, v5, [B

    .line 145
    .local v5, "sigComposer":[B
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    .line 147
    .local v6, "ctx":Lorg/bouncycastle/crypto/Digest;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getDerivationFunction()Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;

    move-result-object v7

    .line 149
    .local v7, "derive":Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->cksm([BILorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I

    move-result v8

    .line 150
    .local v8, "cs":I
    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 151
    add-int/lit8 v9, v2, 0x1

    int-to-byte v10, v8

    aput-byte v10, v0, v9

    .line 153
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getI()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getQ()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v9

    add-int/lit8 v10, v2, 0x17

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->padUntil(II)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v9

    .line 155
    .local v9, "tmp":[B
    invoke-virtual {v7, v11}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->setJ(I)V

    .line 156
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_2

    .line 158
    int-to-short v12, v10

    const/16 v13, 0x14

    invoke-static {v12, v9, v13}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    .line 159
    add-int/lit8 v12, v3, -0x1

    if-ge v10, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const/16 v13, 0x17

    invoke-virtual {v7, v9, v12, v13}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->deriveSeed([BZI)V

    .line 160
    invoke-static {v0, v10, v4}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->coef([BII)I

    move-result v12

    .line 161
    .local v12, "a":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    if-ge v14, v12, :cond_1

    .line 163
    const/16 v16, 0x16

    int-to-byte v15, v14

    aput-byte v15, v9, v16

    .line 164
    add-int/lit8 v15, v2, 0x17

    invoke-interface {v6, v9, v11, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 165
    invoke-interface {v6, v9, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 161
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 167
    .end local v14    # "j":I
    :cond_1
    mul-int v14, v2, v10

    invoke-static {v9, v13, v5, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    .end local v12    # "a":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 170
    .end local v10    # "i":I
    :cond_2
    new-instance v10, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-object/from16 v11, p2

    invoke-direct {v10, v1, v11, v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[B[B)V

    return-object v10
.end method

.method public static lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[[B[BZ)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    .locals 4
    .param p0, "sigParams"    # Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .param p1, "privateKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;
    .param p2, "path"    # [[B
    .param p3, "message"    # [B
    .param p4, "preHashed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sigParams",
            "privateKey",
            "path",
            "message",
            "preHashed"
        }
    .end annotation

    .line 113
    const/16 v0, 0x22

    new-array v0, v0, [B

    .line 115
    .local v0, "Q":[B
    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 117
    invoke-virtual {p1, p0, p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getSignatureContext(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;[[B)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v2

    .line 119
    .local v2, "qCtx":Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    array-length v3, p3

    invoke-static {p3, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BIILorg/bouncycastle/crypto/Digest;)V

    .line 121
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getC()[B

    move-result-object v1

    .line 122
    .local v1, "C":[B
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getQ()[B

    move-result-object v0

    .line 123
    .end local v2    # "qCtx":Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    goto :goto_0

    .line 126
    .end local v1    # "C":[B
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v2

    .line 128
    .local v2, "n":I
    new-array v3, v2, [B

    .line 129
    .local v3, "C":[B
    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    .line 132
    .end local v2    # "n":I
    .end local v3    # "C":[B
    .restart local v1    # "C":[B
    :goto_0
    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v2

    return-object v2
.end method

.method public static lm_ots_validate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;[BZ)Z
    .locals 2
    .param p0, "publicKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;
    .param p1, "signature"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    .param p2, "message"    # [B
    .param p3, "prehashed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "signature",
            "message",
            "prehashed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pqc/crypto/lms/LMSException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->getType()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;[B)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getK()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 178
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSException;

    const-string v1, "public key and signature ots types do not match"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;[B)[B
    .locals 2
    .param p0, "publicKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;
    .param p1, "signature"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "signature",
            "message"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->createOtsContext(Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    .line 187
    .local v0, "ctx":Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BLorg/bouncycastle/crypto/Digest;)V

    .line 189
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)[B

    move-result-object v1

    return-object v1
.end method

.method public static lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)[B
    .locals 21
    .param p0, "context"    # Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;

    move-result-object v0

    .line 195
    .local v0, "publicKey":Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v1

    .line 196
    .local v1, "parameter":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getSignature()Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, "sig":Ljava/lang/Object;
    instance-of v3, v2, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    if-eqz v3, :cond_0

    .line 200
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getOtsSignature()Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v3

    .local v3, "signature":Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    goto :goto_0

    .line 204
    .end local v3    # "signature":Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    :cond_0
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    .line 207
    .restart local v3    # "signature":Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v4

    .line 208
    .local v4, "n":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v5

    .line 209
    .local v5, "w":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getP()I

    move-result v6

    .line 210
    .local v6, "p":I
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getQ()[B

    move-result-object v7

    .line 212
    .local v7, "Q":[B
    invoke-static {v7, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->cksm([BILorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I

    move-result v8

    .line 213
    .local v8, "cs":I
    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    .line 214
    add-int/lit8 v9, v4, 0x1

    int-to-byte v10, v8

    aput-byte v10, v7, v9

    .line 216
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getI()[B

    move-result-object v9

    .line 217
    .local v9, "I":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getQ()I

    move-result v10

    .line 219
    .local v10, "q":I
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v11

    .line 220
    .local v11, "finalContext":Lorg/bouncycastle/crypto/Digest;
    invoke-static {v9, v11}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BLorg/bouncycastle/crypto/Digest;)V

    .line 221
    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    .line 222
    const/16 v12, -0x7f80

    invoke-static {v12, v11}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    .line 224
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v12

    .line 225
    invoke-virtual {v12, v9}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v12

    .line 226
    invoke-virtual {v12, v10}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v12

    add-int/lit8 v13, v4, 0x17

    .line 227
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->padUntil(II)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v12

    .line 229
    .local v12, "tmp":[B
    const/4 v13, 0x1

    shl-int v15, v13, v5

    sub-int/2addr v15, v13

    .line 231
    .local v15, "max_digit":I
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->getY()[B

    move-result-object v13

    .line 233
    .local v13, "y":[B
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v14

    .line 234
    .local v14, "ctx":Lorg/bouncycastle/crypto/Digest;
    const/16 v16, 0x0

    move-object/from16 v17, v0

    move/from16 v0, v16

    .local v0, "i":I
    .local v17, "publicKey":Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;
    :goto_1
    if-ge v0, v6, :cond_2

    .line 236
    move-object/from16 v16, v1

    .end local v1    # "parameter":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .local v16, "parameter":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    int-to-short v1, v0

    move-object/from16 v18, v2

    .end local v2    # "sig":Ljava/lang/Object;
    .local v18, "sig":Ljava/lang/Object;
    const/16 v2, 0x14

    invoke-static {v1, v12, v2}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    .line 237
    mul-int v1, v0, v4

    const/16 v2, 0x17

    invoke-static {v13, v1, v12, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    invoke-static {v7, v0, v5}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->coef([BII)I

    move-result v1

    .line 240
    .local v1, "a":I
    move/from16 v19, v1

    move/from16 v2, v19

    .local v2, "j":I
    :goto_2
    if-ge v2, v15, :cond_1

    .line 242
    const/16 v19, 0x16

    move/from16 v20, v0

    .end local v0    # "i":I
    .local v20, "i":I
    int-to-byte v0, v2

    aput-byte v0, v12, v19

    .line 243
    add-int/lit8 v0, v4, 0x17

    move/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "a":I
    .local v19, "a":I
    invoke-interface {v14, v12, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 244
    const/16 v0, 0x17

    invoke-interface {v14, v12, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 240
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v19

    move/from16 v0, v20

    goto :goto_2

    .end local v19    # "a":I
    .end local v20    # "i":I
    .restart local v0    # "i":I
    .restart local v1    # "a":I
    :cond_1
    move/from16 v20, v0

    move/from16 v19, v1

    const/16 v0, 0x17

    .line 247
    .end local v0    # "i":I
    .end local v1    # "a":I
    .end local v2    # "j":I
    .restart local v19    # "a":I
    .restart local v20    # "i":I
    invoke-interface {v11, v12, v0, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 234
    .end local v19    # "a":I
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    .end local v20    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .end local v16    # "parameter":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .end local v18    # "sig":Ljava/lang/Object;
    .local v1, "parameter":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .local v2, "sig":Ljava/lang/Object;
    :cond_2
    move/from16 v20, v0

    move-object/from16 v16, v1

    .line 250
    .end local v0    # "i":I
    .end local v1    # "parameter":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .restart local v16    # "parameter":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    new-array v0, v4, [B

    .line 251
    .local v0, "K":[B
    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 253
    return-object v0
.end method

.method public static lms_ots_generatePublicKey(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;)Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;
    .locals 5
    .param p0, "privateKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getI()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getQ()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getMasterSecret()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lms_ots_generatePublicKey(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BI[B)[B

    move-result-object v0

    .line 51
    .local v0, "K":[B
    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getI()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getQ()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BI[B)V

    return-object v1
.end method

.method static lms_ots_generatePublicKey(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BI[B)[B
    .locals 17
    .param p0, "parameter"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .param p1, "I"    # [B
    .param p2, "q"    # I
    .param p3, "masterSecret"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameter",
            "I",
            "q",
            "masterSecret"
        }
    .end annotation

    .line 59
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    .line 60
    .local v2, "publicContext":Lorg/bouncycastle/crypto/Digest;
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v3

    .line 61
    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v3

    .line 62
    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v3

    .line 63
    const/16 v4, -0x7f80

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u16str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v3

    .line 64
    const/4 v4, 0x0

    const/16 v5, 0x16

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->padUntil(II)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v3

    .line 66
    .local v3, "prehashPrefix":[B
    array-length v6, v3

    invoke-interface {v2, v3, v4, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 68
    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    .line 70
    .local v6, "ctx":Lorg/bouncycastle/crypto/Digest;
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v7

    .line 71
    invoke-virtual {v7, v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v7

    .line 72
    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v7

    .line 73
    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    const/16 v9, 0x17

    add-int/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->padUntil(II)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v7

    .line 74
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v7

    .line 77
    .local v7, "buf":[B
    new-instance v8, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;

    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v10

    move-object/from16 v11, p3

    invoke-direct {v8, v0, v11, v10}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;-><init>([B[BLorg/bouncycastle/crypto/Digest;)V

    .line 78
    .local v8, "derive":Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;
    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->setQ(I)V

    .line 79
    invoke-virtual {v8, v4}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->setJ(I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getP()I

    move-result v10

    .line 82
    .local v10, "p":I
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v12

    .line 83
    .local v12, "n":I
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v13

    const/4 v14, 0x1

    shl-int v13, v14, v13

    sub-int/2addr v13, v14

    .line 86
    .local v13, "twoToWminus1":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v10, :cond_2

    .line 88
    const/16 v16, 0x16

    add-int/lit8 v5, v10, -0x1

    if-ge v15, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v8, v7, v5, v9}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->deriveSeed([BZI)V

    .line 89
    int-to-short v5, v15

    const/16 v14, 0x14

    invoke-static {v5, v7, v14}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    .line 90
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v13, :cond_1

    .line 92
    int-to-byte v14, v5

    aput-byte v14, v7, v16

    .line 93
    array-length v14, v7

    invoke-interface {v6, v7, v4, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 94
    invoke-interface {v6, v7, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 90
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 96
    .end local v5    # "j":I
    :cond_1
    invoke-interface {v2, v7, v9, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 86
    add-int/lit8 v15, v15, 0x1

    const/16 v5, 0x16

    const/4 v14, 0x1

    goto :goto_0

    .line 99
    .end local v15    # "i":I
    :cond_2
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 100
    .local v5, "K":[B
    invoke-interface {v2, v5, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 102
    return-object v5
.end method
