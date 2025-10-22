.class public Lorg/bouncycastle/pkcs/PKCS12SafeBag;
.super Ljava/lang/Object;
.source "PKCS12SafeBag.java"


# static fields
.field public static final friendlyNameAttribute:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final localKeyIdAttribute:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->friendlyNameAttribute:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->localKeyIdAttribute:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/SafeBag;)V
    .locals 0
    .param p1, "safeBag"    # Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "safeBag"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    .line 28
    return-void
.end method


# virtual methods
.method public getAttributes()[Lorg/bouncycastle/asn1/pkcs/Attribute;
    .locals 4

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 54
    .local v0, "attrs":Lorg/bouncycastle/asn1/ASN1Set;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    return-object v1

    .line 59
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    .line 60
    .local v1, "attributes":[Lorg/bouncycastle/asn1/pkcs/Attribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 62
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getBagValue()Ljava/lang/Object;
    .locals 3

    .line 70
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;)V

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertBag;

    move-result-object v0

    .line 78
    .local v0, "certBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v1, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v1

    .line 80
    .end local v0    # "certBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->keyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    return-object v0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->crlBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/CRLBag;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CRLBag;

    move-result-object v0

    .line 88
    .local v0, "crlBag":Lorg/bouncycastle/asn1/pkcs/CRLBag;
    new-instance v1, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CRLBag;->getCrlValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    return-object v1

    .line 91
    .end local v0    # "crlBag":Lorg/bouncycastle/asn1/pkcs/CRLBag;
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;

    return-object v0
.end method
