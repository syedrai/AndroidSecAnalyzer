.class public Lorg/bouncycastle/asn1/smime/SMIMECapabilities;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SMIMECapabilities.java"


# static fields
.field public static final aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cast5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final idea_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sMIMECapabilitesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private capabilities:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->sMIMECapabilitesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->idea_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113533.7.66.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->cast5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 73
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapabilities;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 50
    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 60
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Attribute;

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/cms/Attribute;

    .line 63
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 62
    return-object v0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object in factory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    return-object v0
.end method


# virtual methods
.method public getCapabilities(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;
    .locals 4
    .param p1, "capability"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capability"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 84
    .local v0, "e":Ljava/util/Enumeration;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 86
    .local v1, "list":Ljava/util/Vector;
    if-nez p1, :cond_0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/smime/SMIMECapability;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapability;

    move-result-object v2

    .line 92
    .local v2, "cap":Lorg/bouncycastle/asn1/smime/SMIMECapability;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    .end local v2    # "cap":Lorg/bouncycastle/asn1/smime/SMIMECapability;
    goto :goto_0

    .line 97
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/smime/SMIMECapability;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapability;

    move-result-object v2

    .line 101
    .restart local v2    # "cap":Lorg/bouncycastle/asn1/smime/SMIMECapability;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/smime/SMIMECapability;->getCapabilityID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    .end local v2    # "cap":Lorg/bouncycastle/asn1/smime/SMIMECapability;
    :cond_1
    goto :goto_1

    .line 108
    :cond_2
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
