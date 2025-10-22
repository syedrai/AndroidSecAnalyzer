.class public Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SubjectAltPublicKeyInfo.java"


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private subjectAltPublicKey:Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "s"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->subjectAltPublicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extension should contain only 2 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "subjectAltPublicKey"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "subjectAltPublicKey"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 80
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->subjectAltPublicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1
    .param p1, "subjectPublicKeyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subjectPublicKeyInfo"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->subjectAltPublicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 87
    return-void
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;
    .locals 1
    .param p0, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectAltPublicKeyInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;
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

    .line 50
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;
    .locals 1
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

    .line 44
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSubjectAltPublicKey()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->subjectAltPublicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 101
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 103
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/SubjectAltPublicKeyInfo;->subjectAltPublicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
