.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignedDataPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;
    }
.end annotation


# instance fields
.field private final data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

.field private final extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;


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

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 39
    const-class v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    .line 40
    const-class v0, Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    .line 41
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)V
    .locals 0
    .param p1, "data"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;
    .param p2, "extDataHash"    # Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extDataHash"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    .line 30
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    .line 31
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;
    .locals 1

    .line 61
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;
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
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;

    return-object v0

    .line 50
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getData()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    return-object v0
.end method

.method public getExtDataHash()Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    .line 68
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    .line 69
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 66
    return-object v0
.end method
