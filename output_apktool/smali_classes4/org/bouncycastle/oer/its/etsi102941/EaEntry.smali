.class public Lorg/bouncycastle/oer/its/etsi102941/EaEntry;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EaEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;
    }
.end annotation


# instance fields
.field private final aaAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

.field private final eaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private final itsAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;


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

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->eaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/Url;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/Url;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->aaAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 41
    const-class v0, Lorg/bouncycastle/oer/its/etsi102941/Url;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/Url;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->itsAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 42
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;Lorg/bouncycastle/oer/its/etsi102941/Url;Lorg/bouncycastle/oer/its/etsi102941/Url;)V
    .locals 0
    .param p1, "eaCertificate"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .param p2, "aaAccessPoint"    # Lorg/bouncycastle/oer/its/etsi102941/Url;
    .param p3, "itsAccessPoint"    # Lorg/bouncycastle/oer/its/etsi102941/Url;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eaCertificate",
            "aaAccessPoint",
            "itsAccessPoint"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->eaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->aaAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 29
    iput-object p3, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->itsAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 30
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;
    .locals 1

    .line 81
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EaEntry;
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
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;

    return-object v0

    .line 50
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 54
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAaAccessPoint()Lorg/bouncycastle/oer/its/etsi102941/Url;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->aaAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    return-object v0
.end method

.method public getEaCertificate()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->eaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    return-object v0
.end method

.method public getItsAccessPoint()Lorg/bouncycastle/oer/its/etsi102941/Url;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->itsAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->eaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->aaAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->itsAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 75
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    return-object v0
.end method
