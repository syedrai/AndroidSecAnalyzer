.class public Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIStatusInfo.java"


# instance fields
.field failInfo:Lorg/bouncycastle/asn1/ASN1BitString;

.field status:Lorg/bouncycastle/asn1/ASN1Integer;

.field statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
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

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 35
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 39
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 40
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/ASN1BitString;

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 44
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 45
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_1

    .line 47
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/ASN1BitString;

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 54
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;)V
    .locals 1
    .param p1, "status"    # Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V
    .locals 1
    .param p1, "status"    # Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .param p2, "statusString"    # Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "statusString"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 73
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;Lorg/bouncycastle/asn1/cmp/PKIFreeText;Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;)V
    .locals 1
    .param p1, "status"    # Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .param p2, "statusString"    # Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .param p3, "failInfo"    # Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "statusString",
            "failInfo"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 82
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 83
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 84
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
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

    .line 96
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    return-object v0

    .line 100
    :cond_0
    if-eqz p0, :cond_1

    .line 102
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 105
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
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

    .line 90
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFailInfo()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getStatus()Ljava/math/BigInteger;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getStatusString()Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 125
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 127
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 139
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
