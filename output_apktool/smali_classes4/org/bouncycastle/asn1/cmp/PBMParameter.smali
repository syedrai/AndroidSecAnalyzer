.class public Lorg/bouncycastle/asn1/cmp/PBMParameter;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PBMParameter.java"


# instance fields
.field private final iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final salt:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "salt"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p2, "owf"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "iterationCount"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p4, "mac"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "owf",
            "iterationCount",
            "mac"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->salt:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 63
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 65
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 66
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

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->salt:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 43
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 4
    .param p1, "salt"    # [B
    .param p2, "owf"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "iterationCount"    # I
    .param p4, "mac"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "owf",
            "iterationCount",
            "mac"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v2, p3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0, p2, v1, p4}, Lorg/bouncycastle/asn1/cmp/PBMParameter;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PBMParameter;
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

    .line 70
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PBMParameter;

    return-object v0

    .line 75
    :cond_0
    if-eqz p0, :cond_1

    .line 77
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PBMParameter;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getIterationCount()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOwf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSalt()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->salt:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 126
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 128
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->salt:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PBMParameter;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 133
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
