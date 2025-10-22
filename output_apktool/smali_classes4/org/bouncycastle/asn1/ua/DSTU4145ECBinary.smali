.class public Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DSTU4145ECBinary.java"


# instance fields
.field a:Lorg/bouncycastle/asn1/ASN1Integer;

.field b:Lorg/bouncycastle/asn1/ASN1OctetString;

.field bp:Lorg/bouncycastle/asn1/ASN1OctetString;

.field f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

.field n:Lorg/bouncycastle/asn1/ASN1Integer;

.field version:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 70
    .local v1, "taggedVersion":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "object parse error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v1    # "taggedVersion":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 8
    .param p1, "params"    # Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 35
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    .line 43
    .local v1, "field":Lorg/bouncycastle/math/field/PolynomialExtensionField;
    invoke-interface {v1}, Lorg/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/bouncycastle/math/field/Polynomial;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v2

    .line 44
    .local v2, "exponents":[I
    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    .line 46
    new-instance v3, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    aget v5, v2, v5

    aget v4, v2, v4

    invoke-direct {v3, v5, v4}, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;-><init>(II)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    goto :goto_0

    .line 48
    :cond_0
    array-length v3, v2

    const/4 v7, 0x5

    if-ne v3, v7, :cond_1

    .line 50
    new-instance v3, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    const/4 v7, 0x4

    aget v7, v2, v7

    aget v4, v2, v4

    aget v5, v2, v5

    aget v6, v2, v6

    invoke-direct {v3, v7, v4, v5, v6}, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;-><init>(IIII)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    .line 57
    :goto_0
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 58
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 59
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 60
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ua/DSTU4145PointEncoder;->encodePoint(Lorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 61
    return-void

    .line 54
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "curve must have a trinomial or pentanomial basis"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    .end local v1    # "field":Lorg/bouncycastle/math/field/PolynomialExtensionField;
    .end local v2    # "exponents":[I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "only binary domain is possible"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 93
    instance-of v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    return-object v0

    .line 98
    :cond_0
    if-eqz p0, :cond_1

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getB()[B
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    return-object v0
.end method

.method public getG()[B
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 142
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 144
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
