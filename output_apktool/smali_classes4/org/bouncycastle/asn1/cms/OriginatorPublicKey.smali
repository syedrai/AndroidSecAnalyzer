.class public Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OriginatorPublicKey.java"


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private publicKey:Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
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

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->publicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "publicKey"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->publicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "publicKey"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->publicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
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

    .line 85
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    if-eqz v0, :cond_0

    .line 87
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    return-object v0

    .line 90
    :cond_0
    if-eqz p0, :cond_1

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .locals 2
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->publicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERBitString;->convert(Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->publicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 121
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 123
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->publicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
