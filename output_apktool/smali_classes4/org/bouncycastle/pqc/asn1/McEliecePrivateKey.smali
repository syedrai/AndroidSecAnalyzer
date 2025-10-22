.class public Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "McEliecePrivateKey.java"


# instance fields
.field private encField:[B

.field private encGp:[B

.field private encP1:[B

.field private encP2:[B

.field private encSInv:[B

.field private k:I

.field private n:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "k"    # I
    .param p3, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p4, "goppaPoly"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .param p5, "p1"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .param p6, "p2"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .param p7, "sInv"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "p1",
            "p2",
            "sInv"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->n:I

    .line 30
    iput p2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->k:I

    .line 31
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encField:[B

    .line 32
    invoke-virtual {p4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encGp:[B

    .line 33
    invoke-virtual {p7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encSInv:[B

    .line 34
    invoke-virtual {p5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encP1:[B

    .line 35
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encP2:[B

    .line 36
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

    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->n:I

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->k:I

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encField:[B

    .line 60
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encGp:[B

    .line 62
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encP1:[B

    .line 64
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encP2:[B

    .line 66
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encSInv:[B

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;
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

    .line 40
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;

    return-object v0

    .line 44
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .locals 2

    .line 81
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encField:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>([B)V

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3

    .line 86
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encGp:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V

    return-object v0
.end method

.method public getK()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->n:I

    return v0
.end method

.method public getP1()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .locals 2

    .line 96
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encP1:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>([B)V

    return-object v0
.end method

.method public getP2()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .locals 2

    .line 101
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encP2:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>([B)V

    return-object v0
.end method

.method public getSInv()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 2

    .line 91
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encSInv:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>([B)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 108
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 111
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->n:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->k:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 117
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encField:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encGp:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 123
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encP1:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encP2:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;->encSInv:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
