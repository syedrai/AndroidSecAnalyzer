.class public Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EtsiTs102941Data.java"


# instance fields
.field private final content:Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

.field private final version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;->content:Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    .line 37
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;)V
    .locals 0
    .param p1, "version"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .param p2, "content"    # Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "version",
            "content"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;->content:Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    .line 27
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;
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

    .line 41
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;

    return-object v0

    .line 45
    :cond_0
    if-eqz p0, :cond_2

    .line 47
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getContent()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 51
    :cond_1
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 53
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;->content:Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941Data;->content:Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
