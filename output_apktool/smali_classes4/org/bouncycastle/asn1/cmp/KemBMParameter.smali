.class public Lorg/bouncycastle/asn1/cmp/KemBMParameter;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "KemBMParameter.java"


# instance fields
.field private final kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final len:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


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

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 36
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 37
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence size should 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;JLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1
    .param p1, "kdf"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "len"    # J
    .param p4, "mac"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "kdf",
            "len",
            "mac"
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, p1, v0, p4}, Lorg/bouncycastle/asn1/cmp/KemBMParameter;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "kdf"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "len"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p3, "mac"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "kdf",
            "len",
            "mac"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 45
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 46
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 47
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/KemBMParameter;
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

    .line 59
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;

    return-object v0

    .line 64
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/KemBMParameter;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getKdf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getLen()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 102
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemBMParameter;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
