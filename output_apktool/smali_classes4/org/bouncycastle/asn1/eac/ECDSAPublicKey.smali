.class public Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;
.super Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
.source "ECDSAPublicKey.java"


# static fields
.field private static final A:I = 0x2

.field private static final B:I = 0x4

.field private static final F:I = 0x40

.field private static final G:I = 0x8

.field private static final P:I = 0x1

.field private static final R:I = 0x10

.field private static final Y:I = 0x20


# instance fields
.field private basePointG:[B

.field private cofactorF:Ljava/math/BigInteger;

.field private firstCoefA:Ljava/math/BigInteger;

.field private options:I

.field private orderOfBasePointR:Ljava/math/BigInteger;

.field private primeModulusP:Ljava/math/BigInteger;

.field private publicPointY:[B

.field private secondCoefB:Ljava/math/BigInteger;

.field private usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;[BI)V
    .locals 2
    .param p1, "usage"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "p"    # Ljava/math/BigInteger;
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;
    .param p5, "basePoint"    # [B
    .param p6, "order"    # Ljava/math/BigInteger;
    .param p7, "publicPoint"    # [B
    .param p8, "cofactor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "usage",
            "p",
            "a",
            "b",
            "basePoint",
            "order",
            "publicPoint",
            "cofactor"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 115
    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPrimeModulusP(Ljava/math/BigInteger;)V

    .line 116
    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setFirstCoefA(Ljava/math/BigInteger;)V

    .line 117
    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setSecondCoefB(Ljava/math/BigInteger;)V

    .line 118
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setBasePointG(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 119
    invoke-direct {p0, p6}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setOrderOfBasePointR(Ljava/math/BigInteger;)V

    .line 120
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPublicPointY(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 121
    int-to-long v0, p8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setCofactorF(Ljava/math/BigInteger;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    .locals 1
    .param p1, "usage"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "ppY"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usage",
            "ppY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPublicPointY(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 110
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 56
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const-string v4, "Unknown Object Identifier!"

    if-eqz v3, :cond_0

    .line 65
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 66
    .local v3, "to":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 90
    iput v1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :pswitch_0
    invoke-static {v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setCofactorF(Ljava/math/BigInteger;)V

    .line 88
    goto :goto_1

    .line 84
    :pswitch_1
    invoke-static {v3, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPublicPointY(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 85
    goto :goto_1

    .line 81
    :pswitch_2
    invoke-static {v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setOrderOfBasePointR(Ljava/math/BigInteger;)V

    .line 82
    goto :goto_1

    .line 78
    :pswitch_3
    invoke-static {v3, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setBasePointG(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 79
    goto :goto_1

    .line 75
    :pswitch_4
    invoke-static {v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setSecondCoefB(Ljava/math/BigInteger;)V

    .line 76
    goto :goto_1

    .line 72
    :pswitch_5
    invoke-static {v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setFirstCoefA(Ljava/math/BigInteger;)V

    .line 73
    goto :goto_1

    .line 69
    :pswitch_6
    invoke-static {v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPrimeModulusP(Ljava/math/BigInteger;)V

    .line 70
    nop

    .line 93
    .end local v3    # "to":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    nop

    .line 98
    .end local v2    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 96
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    iget v1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 101
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "All options must be either present or absent!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBasePointG(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2
    .param p1, "basePointG"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "basePointG"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 144
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 146
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 147
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->basePointG:[B

    .line 153
    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Base Point G already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCofactorF(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "cofactorF"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cofactorF"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 172
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 173
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->cofactorF:Ljava/math/BigInteger;

    .line 179
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cofactor F already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setFirstCoefA(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "firstCoefA"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstCoefA"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 198
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 199
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->firstCoefA:Ljava/math/BigInteger;

    .line 205
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "First Coef A already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setOrderOfBasePointR(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "orderOfBasePointR"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderOfBasePointR"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 222
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 224
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 225
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->orderOfBasePointR:Ljava/math/BigInteger;

    .line 231
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Order of base point R already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPrimeModulusP(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "primeModulusP"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primeModulusP"
        }
    .end annotation

    .line 247
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 249
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 250
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->primeModulusP:Ljava/math/BigInteger;

    .line 256
    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prime Modulus P already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPublicPointY(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2
    .param p1, "publicPointY"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicPointY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 273
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 275
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 276
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->publicPointY:[B

    .line 282
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public Point Y already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSecondCoefB(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "secondCoefB"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondCoefB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 299
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 301
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    .line 302
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->secondCoefB:Ljava/math/BigInteger;

    .line 308
    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Second Coef B already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getASN1EncodableVector(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 5
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "publicPointOnly"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "publicPointOnly"
        }
    .end annotation

    .line 317
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 318
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 320
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 322
    new-instance v2, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getPrimeModulusP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 323
    new-instance v2, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getFirstCoefA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 324
    new-instance v2, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getSecondCoefB()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 325
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getBasePointG()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v4, 0x4

    invoke-direct {v2, v1, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 326
    new-instance v2, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v3, 0x5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getOrderOfBasePointR()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 328
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getPublicPointY()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v4, 0x6

    invoke-direct {v2, v1, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 329
    if-nez p2, :cond_1

    .line 331
    new-instance v1, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getCofactorF()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 334
    :cond_1
    return-object v0
.end method

.method public getBasePointG()[B
    .locals 1

    .line 131
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->basePointG:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCofactorF()Ljava/math/BigInteger;
    .locals 1

    .line 157
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->cofactorF:Ljava/math/BigInteger;

    return-object v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstCoefA()Ljava/math/BigInteger;
    .locals 1

    .line 183
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->firstCoefA:Ljava/math/BigInteger;

    return-object v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrderOfBasePointR()Ljava/math/BigInteger;
    .locals 1

    .line 209
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->orderOfBasePointR:Ljava/math/BigInteger;

    return-object v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimeModulusP()Ljava/math/BigInteger;
    .locals 1

    .line 235
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->primeModulusP:Ljava/math/BigInteger;

    return-object v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicPointY()[B
    .locals 1

    .line 260
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->publicPointY:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondCoefB()Ljava/math/BigInteger;
    .locals 1

    .line 286
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->secondCoefB:Ljava/math/BigInteger;

    return-object v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsage()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public hasParameters()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->primeModulusP:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 339
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->hasParameters()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getASN1EncodableVector(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
