.class public Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "KemCiphertextInfo.java"


# instance fields
.field private final ct:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
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

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 34
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence size should 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "kem"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "ct"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kem",
            "ct"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;
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

    .line 47
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;

    return-object v0

    .line 52
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCt()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 82
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 84
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemCiphertextInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
