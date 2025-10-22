.class Lorg/bouncycastle/pqc/crypto/lms/LMS;
.super Ljava/lang/Object;
.source "LMS.java"


# static fields
.field static final D_INTR:S = -0x7c7ds

.field static final D_LEAF:S = -0x7d7es


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateKeys(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    .locals 9
    .param p0, "parameterSet"    # Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .param p1, "lmOtsParameters"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .param p2, "q"    # I
    .param p3, "I"    # [B
    .param p4, "rootSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameterSet",
            "lmOtsParameters",
            "q",
            "I",
            "rootSeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v1

    shl-int v7, v0, v1

    .line 33
    .local v7, "twoToH":I
    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p4

    .end local p0    # "parameterSet":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .end local p1    # "lmOtsParameters":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .end local p2    # "q":I
    .end local p3    # "I":[B
    .end local p4    # "rootSeed":[B
    .local v3, "parameterSet":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .local v4, "lmOtsParameters":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .local v5, "q":I
    .local v6, "I":[B
    .local v8, "rootSeed":[B
    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V

    return-object v2

    .line 26
    .end local v3    # "parameterSet":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .end local v4    # "lmOtsParameters":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .end local v5    # "q":I
    .end local v6    # "I":[B
    .end local v7    # "twoToH":I
    .end local v8    # "rootSeed":[B
    .restart local p0    # "parameterSet":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .restart local p1    # "lmOtsParameters":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .restart local p2    # "q":I
    .restart local p3    # "I":[B
    .restart local p4    # "rootSeed":[B
    :cond_0
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p4

    .line 28
    .end local p0    # "parameterSet":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .end local p1    # "lmOtsParameters":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .end local p2    # "q":I
    .end local p3    # "I":[B
    .end local p4    # "rootSeed":[B
    .restart local v3    # "parameterSet":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .restart local v4    # "lmOtsParameters":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .restart local v5    # "q":I
    .restart local v6    # "I":[B
    .restart local v8    # "rootSeed":[B
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "root seed is less than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .locals 5
    .param p0, "context"    # Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getPrivateKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getQ()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getC()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v0

    .line 63
    .local v0, "ots_signature":Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getPrivateKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getQ()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getSigParams()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getPath()[[B

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;-><init>(ILorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;[[B)V

    return-object v1
.end method

.method public static generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;[B)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .locals 3
    .param p0, "privateKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "message"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->generateLMSContext()Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    .line 47
    .local v0, "context":Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->update([BII)V

    .line 49
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    move-result-object v1

    return-object v1
.end method

.method public static verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Z
    .locals 14
    .param p0, "publicKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    .param p1, "context"    # Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "context"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getSignature()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    .line 94
    .local v0, "S":Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v1

    .line 95
    .local v1, "lmsParameter":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v2

    .line 96
    .local v2, "h":I
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getY()[[B

    move-result-object v3

    .line 97
    .local v3, "path":[[B
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)[B

    move-result-object v4

    .line 100
    .local v4, "Kc":[B
    const/4 v5, 0x1

    shl-int v6, v5, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getQ()I

    move-result v7

    add-int/2addr v6, v7

    .line 103
    .local v6, "node_num":I
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->getI()[B

    move-result-object v7

    .line 104
    .local v7, "I":[B
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v8

    .line 105
    .local v8, "H":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v8}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v9, v9, [B

    .line 107
    .local v9, "tmp":[B
    array-length v10, v7

    const/4 v11, 0x0

    invoke-interface {v8, v7, v11, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 108
    invoke-static {v6, v8}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    .line 109
    const/16 v10, -0x7d7e

    invoke-static {v10, v8}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    .line 110
    array-length v10, v4

    invoke-interface {v8, v4, v11, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 111
    invoke-interface {v8, v9, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 113
    const/4 v10, 0x0

    .line 115
    .local v10, "i":I
    :cond_0
    if-le v6, v5, :cond_2

    .line 117
    and-int/lit8 v12, v6, 0x1

    const/16 v13, -0x7c7d

    if-ne v12, v5, :cond_1

    .line 120
    array-length v12, v7

    invoke-interface {v8, v7, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 121
    div-int/lit8 v12, v6, 0x2

    invoke-static {v12, v8}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    .line 122
    invoke-static {v13, v8}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    .line 123
    aget-object v12, v3, v10

    aget-object v13, v3, v10

    array-length v13, v13

    invoke-interface {v8, v12, v11, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 124
    array-length v12, v9

    invoke-interface {v8, v9, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 125
    invoke-interface {v8, v9, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0

    .line 129
    :cond_1
    array-length v12, v7

    invoke-interface {v8, v7, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 130
    div-int/lit8 v12, v6, 0x2

    invoke-static {v12, v8}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    .line 131
    invoke-static {v13, v8}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    .line 132
    array-length v12, v9

    invoke-interface {v8, v9, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 133
    aget-object v12, v3, v10

    aget-object v13, v3, v10

    array-length v13, v13

    invoke-interface {v8, v12, v11, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 134
    invoke-interface {v8, v9, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    :goto_0
    div-int/lit8 v6, v6, 0x2

    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 140
    array-length v12, v3

    if-ne v10, v12, :cond_0

    if-le v6, v5, :cond_0

    .line 142
    return v11

    .line 145
    :cond_2
    move-object v5, v9

    .line 146
    .local v5, "Tc":[B
    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->matchesT1([B)Z

    move-result v11

    return v11
.end method

.method public static verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;[B)Z
    .locals 2
    .param p0, "publicKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    .param p1, "S"    # Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "S",
            "message"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->generateOtsContext(Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    .line 77
    .local v0, "context":Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BLorg/bouncycastle/crypto/Digest;)V

    .line 79
    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Z

    move-result v1

    return v1
.end method

.method public static verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;[B[B)Z
    .locals 2
    .param p0, "publicKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    .param p1, "S"    # [B
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "S",
            "message"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->generateLMSContext([B)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    .line 86
    .local v0, "context":Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BLorg/bouncycastle/crypto/Digest;)V

    .line 88
    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Z

    move-result v1

    return v1
.end method
