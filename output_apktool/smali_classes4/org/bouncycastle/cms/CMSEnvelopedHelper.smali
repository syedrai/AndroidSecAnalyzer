.class Lorg/bouncycastle/cms/CMSEnvelopedHelper;
.super Ljava/lang/Object;
.source "CMSEnvelopedHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;,
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;,
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 3
    .param p0, "recipientInfos"    # Lorg/bouncycastle/asn1/ASN1Set;
    .param p1, "messageAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "secureReadable"    # Lorg/bouncycastle/cms/CMSSecureReadable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recipientInfos",
            "messageAlgorithm",
            "secureReadable"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "infos":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 31
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v2

    .line 33
    .local v2, "info":Lorg/bouncycastle/asn1/cms/RecipientInfo;
    invoke-static {v0, v2, p1, p2}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/RecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    .line 29
    .end local v2    # "info":Lorg/bouncycastle/asn1/cms/RecipientInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/RecipientInformationStore;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/RecipientInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private static readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/RecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V
    .locals 4
    .param p0, "infos"    # Ljava/util/List;
    .param p1, "info"    # Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .param p2, "messageAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "secureReadable"    # Lorg/bouncycastle/cms/CMSSecureReadable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "infos",
            "info",
            "messageAlgorithm",
            "secureReadable"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/RecipientInfo;->getInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 42
    .local v0, "recipInfo":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Lorg/bouncycastle/cms/KeyTransRecipientInformation;

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-direct {v1, v2, p2, p3}, Lorg/bouncycastle/cms/KeyTransRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;

    if-eqz v1, :cond_2

    .line 49
    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;

    move-result-object v1

    .line 50
    .local v1, "otherRecipientInfo":Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;
    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ori_kem:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    new-instance v2, Lorg/bouncycastle/cms/KEMRecipientInformation;

    .line 53
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lorg/bouncycastle/cms/KEMRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    .line 52
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v1    # "otherRecipientInfo":Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;
    :cond_1
    goto :goto_0

    .line 56
    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    if-eqz v1, :cond_3

    .line 58
    new-instance v1, Lorg/bouncycastle/cms/KEKRecipientInformation;

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-direct {v1, v2, p2, p3}, Lorg/bouncycastle/cms/KEKRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_3
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    if-eqz v1, :cond_4

    .line 63
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-static {p0, v1, p2, p3}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    goto :goto_0

    .line 66
    :cond_4
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    if-eqz v1, :cond_5

    .line 68
    new-instance v1, Lorg/bouncycastle/cms/PasswordRecipientInformation;

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-direct {v1, v2, p2, p3}, Lorg/bouncycastle/cms/PasswordRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_5
    :goto_0
    return-void
.end method
