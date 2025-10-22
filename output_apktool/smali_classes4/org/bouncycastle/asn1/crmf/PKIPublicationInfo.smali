.class public Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIPublicationInfo.java"


# static fields
.field public static final dontPublish:Lorg/bouncycastle/asn1/ASN1Integer;

.field public static final pleasePublish:Lorg/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private action:Lorg/bouncycastle/asn1/ASN1Integer;

.field private pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->dontPublish:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pleasePublish:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "action"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "action"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->action:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 65
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

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->action:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 38
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/SinglePubInfo;)V
    .locals 2
    .param p1, "pubInfo"    # Lorg/bouncycastle/asn1/crmf/SinglePubInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubInfo"
        }
    .end annotation

    .line 74
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/crmf/SinglePubInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Lorg/bouncycastle/asn1/crmf/SinglePubInfo;

    :goto_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;-><init>([Lorg/bouncycastle/asn1/crmf/SinglePubInfo;)V

    .line 75
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/crmf/SinglePubInfo;)V
    .locals 1
    .param p1, "pubInfos"    # [Lorg/bouncycastle/asn1/crmf/SinglePubInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubInfos"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 84
    sget-object v0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pleasePublish:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->action:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 86
    if-eqz p1, :cond_0

    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 94
    :goto_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;
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

    .line 44
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    return-object v0

    .line 49
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 54
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAction()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->action:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getPubInfos()[Lorg/bouncycastle/asn1/crmf/SinglePubInfo;
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/crmf/SinglePubInfo;

    .line 110
    .local v0, "results":[Lorg/bouncycastle/asn1/crmf/SinglePubInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 112
    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/SinglePubInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 125
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 127
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->action:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
