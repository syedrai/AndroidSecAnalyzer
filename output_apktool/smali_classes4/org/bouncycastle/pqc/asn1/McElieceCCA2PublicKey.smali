.class public Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "McElieceCCA2PublicKey.java"


# instance fields
.field private final digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

.field private final n:I

.field private final t:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "t"    # I
    .param p3, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .param p4, "digest"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "t",
            "g",
            "digest"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput p1, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->n:I

    .line 25
    iput p2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->t:I

    .line 26
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 27
    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->n:I

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->t:I

    .line 36
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 38
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 39
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;
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

    .line 81
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    return-object v0

    .line 85
    :cond_0
    if-eqz p0, :cond_1

    .line 87
    new-instance v0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getG()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getN()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->t:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 63
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->n:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 69
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->t:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
