.class public Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;
.super Ljava/lang/Object;
.source "TLSKDF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$Mappings;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA512;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA384;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA256;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS11;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS10;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smPRF_legacy(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;)[B
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->PRF_legacy(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smhmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static PRF_legacy(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;)[B
    .locals 14
    .param p0, "parameters"    # Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createMD5()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 79
    .local v0, "md5Hmac":Lorg/bouncycastle/crypto/Mac;
    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 81
    .local v1, "sha1HMac":Lorg/bouncycastle/crypto/Mac;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 82
    .local v2, "label":[B
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    .line 83
    .local v3, "labelSeed":[B
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getSecret()[B

    move-result-object v4

    .line 85
    .local v4, "secret":[B
    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    .line 86
    .local v5, "s_half":I
    new-array v6, v5, [B

    .line 87
    .local v6, "s1":[B
    new-array v7, v5, [B

    .line 88
    .local v7, "s2":[B
    const/4 v8, 0x0

    invoke-static {v4, v8, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    array-length v9, v4

    sub-int/2addr v9, v5

    invoke-static {v4, v9, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getLength()I

    move-result v8

    .line 92
    .local v8, "size":I
    new-array v9, v8, [B

    .line 93
    .local v9, "b1":[B
    new-array v10, v8, [B

    .line 95
    .local v10, "b2":[B
    invoke-static {v0, v6, v3, v9}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    .line 96
    invoke-static {v1, v7, v3, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    .line 98
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_0

    .line 100
    aget-byte v12, v9, v11

    aget-byte v13, v10, v11

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v9, v11

    .line 98
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 102
    .end local v11    # "i":I
    :cond_0
    return-object v9
.end method

.method private static hmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V
    .locals 10
    .param p0, "mac"    # Lorg/bouncycastle/crypto/Mac;
    .param p1, "secret"    # [B
    .param p2, "seed"    # [B
    .param p3, "out"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mac",
            "secret",
            "seed",
            "out"
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 172
    move-object v0, p2

    .line 173
    .local v0, "a":[B
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    .line 174
    .local v1, "size":I
    array-length v2, p3

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v1

    .line 175
    .local v2, "iterations":I
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    new-array v3, v3, [B

    .line 176
    .local v3, "buf":[B
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    new-array v4, v4, [B

    .line 177
    .local v4, "buf2":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 179
    array-length v6, v0

    const/4 v7, 0x0

    invoke-interface {p0, v0, v7, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 180
    invoke-interface {p0, v3, v7}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 181
    move-object v0, v3

    .line 182
    array-length v6, v0

    invoke-interface {p0, v0, v7, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 183
    array-length v6, p2

    invoke-interface {p0, p2, v7, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 184
    invoke-interface {p0, v4, v7}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 185
    mul-int v6, v1, v5

    array-length v8, p3

    mul-int v9, v1, v5

    sub-int/2addr v8, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v7, p3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    .end local v5    # "i":I
    :cond_0
    return-void
.end method
