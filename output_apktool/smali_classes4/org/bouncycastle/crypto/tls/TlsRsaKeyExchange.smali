.class public abstract Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;
.super Ljava/lang/Object;
.source "TlsRsaKeyExchange.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final PRE_MASTER_SECRET_LENGTH:I = 0x30


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static caddTo(II[B[B)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "cond"    # I
    .param p2, "x"    # [B
    .param p3, "z"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "cond",
            "x",
            "z"
        }
    .end annotation

    .line 105
    and-int/lit16 v0, p1, 0xff

    .line 107
    .local v0, "mask":I
    const/4 v1, 0x0

    .line 108
    .local v1, "c":I
    add-int/lit8 v2, p0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 110
    aget-byte v3, p3, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p2, v2

    and-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 111
    int-to-byte v3, v1

    aput-byte v3, p3, v2

    .line 112
    ushr-int/lit8 v1, v1, 0x8

    .line 108
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private static checkPkcs1Encoding2([BII)I
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "pkcs1Length"    # I
    .param p2, "plaintextLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "pkcs1Length",
            "plaintextLength"
        }
    .end annotation

    .line 124
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, -0xa

    .line 126
    .local v0, "errorSign":I
    array-length v1, p0

    sub-int/2addr v1, p1

    .line 127
    .local v1, "firstPadPos":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    .line 130
    .local v2, "lastPadPos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 132
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    neg-int v4, v4

    or-int/2addr v0, v4

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "i":I
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    xor-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    or-int/2addr v0, v3

    .line 139
    add-int/lit8 v3, v1, 0x1

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 141
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x1

    or-int/2addr v0, v4

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "i":I
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    neg-int v3, v3

    or-int/2addr v0, v3

    .line 147
    shr-int/lit8 v3, v0, 0x1f

    return v3
.end method

.method private static convertInput(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;
    .locals 3
    .param p0, "modulus"    # Ljava/math/BigInteger;
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modulus",
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .line 152
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 153
    .local v0, "result":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    .line 155
    return-object v0

    .line 158
    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input too large for RSA cipher."

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decryptPreMasterSecret([BIILorg/bouncycastle/crypto/params/RSAKeyParameters;ILjava/security/SecureRandom;)[B
    .locals 20
    .param p0, "in"    # [B
    .param p1, "inOff"    # I
    .param p2, "inLen"    # I
    .param p3, "privateKey"    # Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .param p4, "protocolVersion"    # I
    .param p5, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen",
            "privateKey",
            "protocolVersion",
            "secureRandom"
        }
    .end annotation

    .line 30
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    if-lt v3, v0, :cond_4

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->getInputLimit(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)I

    move-result v0

    if-gt v3, v0, :cond_4

    if-ltz v2, :cond_4

    array-length v0, v1

    sub-int/2addr v0, v3

    if-gt v2, v0, :cond_4

    .line 35
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    .line 41
    .local v6, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    .line 42
    .local v7, "bitLength":I
    const/16 v0, 0x200

    if-lt v7, v0, :cond_2

    .line 47
    invoke-static {v6}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v8

    .line 48
    .local v8, "bitsOfSecurity":I
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const-string v9, "RSA"

    sget-object v10, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v9, v8, v4, v10}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 51
    const v0, 0xffff

    and-int v9, v5, v0

    if-ne v9, v5, :cond_1

    .line 56
    invoke-static/range {p5 .. p5}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v9

    .line 61
    .end local p5    # "secureRandom":Ljava/security/SecureRandom;
    .local v9, "secureRandom":Ljava/security/SecureRandom;
    const/16 v10, 0x30

    new-array v11, v10, [B

    .line 62
    .local v11, "result":[B
    invoke-virtual {v9, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 66
    :try_start_0
    invoke-static {v6, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->convertInput(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object v12

    .line 67
    .local v12, "input":Ljava/math/BigInteger;
    invoke-static {v4, v12, v9}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsaBlinded(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;Ljava/security/SecureRandom;)[B

    move-result-object v13

    .line 69
    .local v13, "encoding":[B
    add-int/lit8 v14, v7, -0x1

    div-int/lit8 v14, v14, 0x8

    .line 70
    .local v14, "pkcs1Length":I
    array-length v15, v13

    sub-int/2addr v15, v10

    .line 72
    .local v15, "plainTextOffset":I
    invoke-static {v13, v14, v10}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->checkPkcs1Encoding2([BII)I

    move-result v16

    .line 73
    .local v16, "badEncodingMask":I
    invoke-static {v13, v15}, Lorg/bouncycastle/util/Pack;->bigEndianToShort([BI)S

    move-result v17

    xor-int v17, v17, v5

    and-int v0, v17, v0

    neg-int v0, v0

    shr-int/lit8 v0, v0, 0x1f

    .line 74
    .local v0, "badVersionMask":I
    or-int v10, v16, v0

    .line 76
    .local v10, "fallbackMask":I
    const/16 v17, 0x0

    move/from16 v18, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v18, "badVersionMask":I
    :goto_0
    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    .line 78
    aget-byte v17, v11, v0

    and-int v17, v17, v10

    add-int v19, v15, v0

    aget-byte v19, v13, v19

    not-int v1, v10

    and-int v1, v19, v1

    or-int v1, v17, v1

    int-to-byte v1, v1

    aput-byte v1, v11, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    invoke-static {v13, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v10    # "fallbackMask":I
    .end local v12    # "input":Ljava/math/BigInteger;
    .end local v13    # "encoding":[B
    .end local v14    # "pkcs1Length":I
    .end local v15    # "plainTextOffset":I
    .end local v16    # "badEncodingMask":I
    .end local v18    # "badVersionMask":I
    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 94
    :goto_1
    return-object v11

    .line 53
    .end local v9    # "secureRandom":Ljava/security/SecureRandom;
    .end local v11    # "result":[B
    .restart local p5    # "secureRandom":Ljava/security/SecureRandom;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'protocolVersion\' must be a 16 bit value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    .end local v8    # "bitsOfSecurity":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'privateKey\' must be at least 512 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    .end local v6    # "modulus":Ljava/math/BigInteger;
    .end local v7    # "bitLength":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'privateKey\' must be an RSA private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input not a valid EncryptedPreMasterSecret"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInputLimit(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)I
    .locals 1
    .param p0, "privateKey"    # Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static rsa(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "privateKey"    # Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .param p1, "input"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "input"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static rsaBlinded(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;Ljava/security/SecureRandom;)[B
    .locals 16
    .param p0, "privateKey"    # Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .param p1, "input"    # Ljava/math/BigInteger;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "input",
            "secureRandom"
        }
    .end annotation

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 169
    .local v1, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    .line 171
    .local v2, "resultSize":I
    instance-of v3, v0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v3, :cond_1

    .line 173
    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 175
    .local v3, "crtKey":Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 176
    .local v4, "e":Ljava/math/BigInteger;
    if-eqz v4, :cond_0

    .line 178
    sget-object v5, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    .line 179
    .local v5, "r":Ljava/math/BigInteger;
    invoke-virtual {v5, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 180
    .local v6, "blind":Ljava/math/BigInteger;
    invoke-static {v1, v5}, Lorg/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 182
    .local v8, "unblind":Ljava/math/BigInteger;
    move-object/from16 v9, p1

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 183
    .local v10, "blindedInput":Ljava/math/BigInteger;
    invoke-static {v3, v10}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsaCrt(Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 184
    .local v11, "blindedResult":Ljava/math/BigInteger;
    sget-object v12, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 189
    .local v12, "offsetResult":Ljava/math/BigInteger;
    invoke-static {v11, v2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object v13

    .line 190
    .local v13, "blindedResultBytes":[B
    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object v14

    .line 191
    .local v14, "modulusBytes":[B
    invoke-static {v12, v2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object v15

    .line 196
    .local v15, "resultBytes":[B
    invoke-static {v2, v13, v15}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->subFrom(I[B[B)I

    move-result v0

    .line 197
    .local v0, "carry":I
    invoke-static {v2, v0, v14, v15}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->caddTo(II[B[B)I

    .line 199
    return-object v15

    .line 176
    .end local v0    # "carry":I
    .end local v5    # "r":Ljava/math/BigInteger;
    .end local v6    # "blind":Ljava/math/BigInteger;
    .end local v8    # "unblind":Ljava/math/BigInteger;
    .end local v10    # "blindedInput":Ljava/math/BigInteger;
    .end local v11    # "blindedResult":Ljava/math/BigInteger;
    .end local v12    # "offsetResult":Ljava/math/BigInteger;
    .end local v13    # "blindedResultBytes":[B
    .end local v14    # "modulusBytes":[B
    .end local v15    # "resultBytes":[B
    :cond_0
    move-object/from16 v9, p1

    move-object/from16 v7, p2

    goto :goto_0

    .line 171
    .end local v3    # "crtKey":Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v4    # "e":Ljava/math/BigInteger;
    :cond_1
    move-object/from16 v9, p1

    move-object/from16 v7, p2

    .line 203
    :goto_0
    invoke-static/range {p0 .. p1}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsa(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static rsaCrt(Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 13
    .param p0, "crtKey"    # Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .param p1, "input"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "crtKey",
            "input"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 216
    .local v0, "e":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 217
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    .line 218
    .local v2, "q":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v3

    .line 219
    .local v3, "dP":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 220
    .local v4, "dQ":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v5

    .line 225
    .local v5, "qInv":Ljava/math/BigInteger;
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 228
    .local v6, "mP":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 231
    .local v7, "mQ":Ljava/math/BigInteger;
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 232
    .local v8, "h":Ljava/math/BigInteger;
    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 233
    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 236
    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 239
    .local v9, "m":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 240
    .local v10, "check":Ljava/math/BigInteger;
    invoke-virtual {v10, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 245
    return-object v9

    .line 242
    :cond_0
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "RSA engine faulty decryption/signing detected"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private static subFrom(I[B[B)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [B
    .param p2, "z"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 253
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 254
    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 255
    shr-int/lit8 v0, v0, 0x8

    .line 251
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private static toBytes(Ljava/math/BigInteger;I)[B
    .locals 5
    .param p0, "output"    # Ljava/math/BigInteger;
    .param p1, "fixedSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "fixedSize"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 264
    .local v0, "bytes":[B
    new-array v1, p1, [B

    .line 265
    .local v1, "result":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    return-object v1
.end method
