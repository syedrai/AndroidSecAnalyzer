.class public Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "McElieceCCA2PrivateKey.java"


# instance fields
.field private digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encField:[B

.field private encGp:[B

.field private encP:[B

.field private k:I

.field private n:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "k"    # I
    .param p3, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p4, "goppaPoly"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .param p5, "p"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .param p6, "digest"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
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
            "n",
            "k",
            "field",
            "goppaPoly",
            "p",
            "digest"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    .line 46
    iput p2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    .line 47
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    .line 48
    invoke-virtual {p4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    .line 49
    invoke-virtual {p5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    .line 50
    iput-object p6, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    .line 61
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    .line 63
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    .line 65
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 66
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 125
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    return-object v0

    .line 129
    :cond_0
    if-eqz p0, :cond_1

    .line 131
    new-instance v0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .locals 2

    .line 80
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>([B)V

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3

    .line 85
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V

    return-object v0
.end method

.method public getK()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    return v0
.end method

.method public getP()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .locals 2

    .line 90
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>([B)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 101
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
