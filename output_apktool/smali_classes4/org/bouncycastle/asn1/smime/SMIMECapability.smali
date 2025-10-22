.class public Lorg/bouncycastle/asn1/smime/SMIMECapability;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SMIMECapability.java"


# static fields
.field public static final aES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final aES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final aES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sMIMECapabilitiesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private capabilityID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private parameters:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->sMIMECapabilitiesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->dES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->dES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->rC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->aES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->aES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->aES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "capabilityID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "parameters"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capabilityID",
            "parameters"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->capabilityID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    iput-object p2, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->parameters:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
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

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->capabilityID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 43
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Primitive;

    iput-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->parameters:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 45
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapability;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 58
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/smime/SMIMECapability;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SMIMECapability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/smime/SMIMECapability;

    return-object v0
.end method


# virtual methods
.method public getCapabilityID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->capabilityID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->parameters:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 94
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->capabilityID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->parameters:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/bouncycastle/asn1/smime/SMIMECapability;->parameters:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
