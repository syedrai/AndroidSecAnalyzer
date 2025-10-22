.class public Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AesCcmCiphertext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;
    }
.end annotation


# instance fields
.field private final ccmCiphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

.field private final nonce:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)V
    .locals 0
    .param p1, "nonce"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p2, "opaque"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nonce",
            "opaque"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->ccmCiphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    .line 32
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

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 41
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/asn1/ASN1Encodable;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->ccmCiphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    .line 43
    return-void

    .line 38
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/asn1/ASN1Encodable;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;
    .locals 1

    .line 76
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;
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

    .line 47
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;

    return-object v0

    .line 52
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCcmCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->ccmCiphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    return-object v0
.end method

.method public getNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->ccmCiphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
