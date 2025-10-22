.class public Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ToBeSignedCrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    }
.end annotation


# instance fields
.field private final entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

.field private final nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private final thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

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

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 47
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    .line 49
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;)V
    .locals 0
    .param p1, "version"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .param p2, "thisUpdate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .param p3, "nextUpdate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .param p4, "entries"    # Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "thisUpdate",
            "nextUpdate",
            "entries"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    .line 32
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 33
    iput-object p3, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 34
    iput-object p4, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    .line 35
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 1

    .line 91
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;
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

    .line 53
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;

    return-object v0

    .line 57
    :cond_0
    if-eqz p0, :cond_1

    .line 59
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getEntries()Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    return-object v0
.end method

.method public getNextUpdate()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object v0
.end method

.method public getThisUpdate()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;->entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
