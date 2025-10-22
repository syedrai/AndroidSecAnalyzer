.class public Lorg/bouncycastle/asn1/crmf/EncKeyWithID;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EncKeyWithID.java"


# instance fields
.field private final identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;


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

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 38
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 40
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 53
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .param p1, "privKeyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privKeyInfo"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 0
    .param p1, "privKeyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p2, "str"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privKeyInfo",
            "str"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 64
    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "privKeyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p2, "generalName"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privKeyInfo",
            "generalName"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 70
    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 71
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncKeyWithID;
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

    .line 22
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;

    return-object v0

    .line 26
    :cond_0
    if-eqz p0, :cond_1

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getIdentifier()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getPrivateKey()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    return-object v0
.end method

.method public hasIdentifier()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdentifierUTF8String()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 109
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 111
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
