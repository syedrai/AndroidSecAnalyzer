.class public Lorg/bouncycastle/asn1/bc/SignatureCheck;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignatureCheck.java"


# instance fields
.field private final certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;


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

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    const/4 v0, 0x1

    .line 53
    .local v0, "index":I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 55
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    move v0, v2

    goto :goto_0

    .line 59
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 61
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 2
    .param p1, "signatureAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signatureAlgorithm",
            "signature"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/x509/Certificate;[B)V
    .locals 2
    .param p1, "signatureAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "certificates"    # [Lorg/bouncycastle/asn1/x509/Certificate;
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signatureAlgorithm",
            "certificates",
            "signature"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 47
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/SignatureCheck;
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

    .line 66
    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/bc/SignatureCheck;

    return-object v0

    .line 70
    :cond_0
    if-eqz p0, :cond_1

    .line 72
    new-instance v0, Lorg/bouncycastle/asn1/bc/SignatureCheck;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bc/SignatureCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertificates()[Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Certificate;

    .line 97
    .local v0, "certs":[Lorg/bouncycastle/asn1/x509/Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 99
    iget-object v2, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 3

    .line 80
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 109
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->certificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/SignatureCheck;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
