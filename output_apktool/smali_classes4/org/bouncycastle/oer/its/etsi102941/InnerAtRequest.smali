.class public Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "InnerAtRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest$Builder;
    }
.end annotation


# instance fields
.field private final ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

.field private final hmacKey:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

.field private final sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;


# direct methods
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

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->hmacKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 53
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    .line 54
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    .line 56
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;)V
    .locals 0
    .param p1, "publicKeys"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;
    .param p2, "hmacKey"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p3, "sharedAtRequest"    # Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;
    .param p4, "ecSignature"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKeys",
            "hmacKey",
            "sharedAtRequest",
            "ecSignature"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    .line 39
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->hmacKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 40
    iput-object p3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    .line 41
    iput-object p4, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    .line 42
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest$Builder;
    .locals 1

    .line 100
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;
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

    .line 60
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;

    return-object v0

    .line 65
    :cond_0
    if-eqz p0, :cond_1

    .line 67
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getEcSignature()Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    return-object v0
.end method

.method public getHmacKey()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->hmacKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getPublicKeys()Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    return-object v0
.end method

.method public getSharedAtRequest()Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 95
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->hmacKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
