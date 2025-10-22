.class public Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PbkdMacIntegrityCheck.java"


# instance fields
.field private final mac:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final pbkdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;


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

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->pbkdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->mac:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;[B)V
    .locals 2
    .param p1, "macAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "pbkdAlgorithm"    # Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .param p3, "mac"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "macAlgorithm",
            "pbkdAlgorithm",
            "mac"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    iput-object p2, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->pbkdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 34
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->mac:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 35
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;
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

    .line 46
    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    return-object v0

    .line 50
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getMac()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->mac:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPbkdAlgorithm()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->pbkdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 77
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->pbkdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 79
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->mac:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
