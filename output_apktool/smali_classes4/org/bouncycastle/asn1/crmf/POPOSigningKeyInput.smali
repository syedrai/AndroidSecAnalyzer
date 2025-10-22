.class public Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "POPOSigningKeyInput.java"


# instance fields
.field private publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

.field private sender:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 26
    .local v1, "authInfo":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 28
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 30
    .local v2, "tagObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 31
    .end local v2    # "tagObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/PKMACValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    .line 37
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/PKMACValue;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "pkmac"    # Lorg/bouncycastle/asn1/crmf/PKMACValue;
    .param p2, "spki"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkmac",
            "spki"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    .line 74
    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "sender"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .param p2, "spki"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sender",
            "spki"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 63
    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 64
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;
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

    .line 42
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    return-object v0

    .line 47
    :cond_0
    if-eqz p0, :cond_1

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    return-object v0
.end method

.method public getSender()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 116
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 118
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 127
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
