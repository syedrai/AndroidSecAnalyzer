.class public Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RootCaEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;
    }
.end annotation


# instance fields
.field private final selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private final successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;


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

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 38
    const-class v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 39
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)V
    .locals 0
    .param p1, "selfsignedRootCa"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .param p2, "successorTo"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selfsignedRootCa",
            "successorTo"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 29
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;
    .locals 1

    .line 74
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;
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

    .line 43
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;

    return-object v0

    .line 48
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getSelfsignedRootCa()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    return-object v0
.end method

.method public getSuccessorTo()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
