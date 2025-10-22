.class public Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Extension.java"


# static fields
.field public static final etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

.field public static final etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    .line 38
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    sget-object v1, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    sget-object v2, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id not 1 (EtsiTs102941CrlRequest) or 2 (EtsiTs102941DeltaCtlRequest)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "id"    # Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;
    .param p2, "content"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "content"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    .line 69
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;->getExtId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;->getExtId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id not 1 (EtsiTs102941CrlRequest) or 2 (EtsiTs102941DeltaCtlRequest)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 74
    return-void
.end method

.method public static etsiTs102941CrlRequest(Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;)Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;
    .locals 2
    .param p0, "request"    # Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    sget-object v1, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;-><init>(Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static etsiTs102941DeltaCtlRequest(Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;)Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;
    .locals 2
    .param p0, "request"    # Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    sget-object v1, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;-><init>(Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;
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

    .line 88
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    return-object v0

    .line 93
    :cond_0
    if-eqz p0, :cond_1

    .line 95
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 98
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getId()Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
