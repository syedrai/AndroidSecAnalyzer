.class public Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ExtendedFailInfo.java"


# instance fields
.field private final failInfoOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final failInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "failInfoOID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "failInfoValue"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failInfoOID",
            "failInfoValue"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->failInfoOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->failInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 27
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "s"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->failInfoOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->failInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 38
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence must be 2 elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 42
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    return-object v0

    .line 47
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 50
    .local v0, "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1

    .line 56
    .end local v0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    goto :goto_0

    .line 57
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 59
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    move-result-object v0

    return-object v0

    .line 62
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFailInfoOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->failInfoOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getFailInfoValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->failInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 67
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->failInfoOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->failInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
