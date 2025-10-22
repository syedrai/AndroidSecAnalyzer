.class public Lorg/bouncycastle/asn1/crmf/SinglePubInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SinglePubInfo.java"


# static fields
.field public static final dontCare:Lorg/bouncycastle/asn1/ASN1Integer;

.field public static final ldap:Lorg/bouncycastle/asn1/ASN1Integer;

.field public static final web:Lorg/bouncycastle/asn1/ASN1Integer;

.field public static final x500:Lorg/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private pubLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private pubMethod:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->dontCare:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 26
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->x500:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->web:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->ldap:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "pubMethod"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "pubLocation"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pubMethod",
            "pubLocation"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubMethod:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 61
    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 62
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

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubMethod:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 41
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/SinglePubInfo;
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

    .line 45
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;

    return-object v0

    .line 50
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPubLocation()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getPubMethod()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubMethod:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 83
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubMethod:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
