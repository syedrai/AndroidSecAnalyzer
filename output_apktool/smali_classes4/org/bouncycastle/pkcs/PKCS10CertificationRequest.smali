.class public Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
.super Ljava/lang/Object;
.source "PKCS10CertificationRequest.java"


# static fields
.field private static EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;


# instance fields
.field private final altPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private final altSignature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final altSignatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

.field private final certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

.field private final isAltRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    sput-object v0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V
    .locals 8
    .param p1, "certificationRequest"    # Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificationRequest"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-eqz p1, :cond_c

    .line 93
    iput-object p1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    .line 95
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 97
    .local v0, "attributes":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v1, 0x0

    .line 98
    .local v1, "altSig":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v2, 0x0

    .line 99
    .local v2, "altPub":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    const/4 v3, 0x0

    .line 101
    .local v3, "altSigValue":Lorg/bouncycastle/asn1/ASN1BitString;
    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v5

    .line 107
    .local v5, "at":Lorg/bouncycastle/asn1/pkcs/Attribute;
    sget-object v6, Lorg/bouncycastle/asn1/x509/Extension;->altSignatureAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    invoke-static {v5}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lorg/bouncycastle/asn1/pkcs/Attribute;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 111
    :cond_0
    sget-object v6, Lorg/bouncycastle/asn1/x509/Extension;->subjectAltPublicKeyInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    invoke-static {v5}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lorg/bouncycastle/asn1/pkcs/Attribute;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 115
    :cond_1
    sget-object v6, Lorg/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    invoke-static {v5}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lorg/bouncycastle/asn1/pkcs/Attribute;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    .line 119
    .end local v5    # "at":Lorg/bouncycastle/asn1/pkcs/Attribute;
    :cond_2
    goto :goto_0

    .line 122
    .end local v4    # "en":Ljava/util/Enumeration;
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v2, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    or-int/2addr v6, v7

    if-eqz v3, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v6, v7

    iput-boolean v6, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    .line 123
    iget-boolean v6, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    if-eqz v6, :cond_b

    .line 125
    if-eqz v1, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v2, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    and-int/2addr v6, v7

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    and-int/2addr v4, v6

    if-eqz v4, :cond_a

    goto :goto_7

    .line 127
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid alternate public key details found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_b
    :goto_7
    iput-object v1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 132
    iput-object v2, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->altPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 133
    iput-object v3, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 134
    return-void

    .line 91
    .end local v0    # "attributes":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v1    # "altSig":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v2    # "altPub":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v3    # "altSigValue":Lorg/bouncycastle/asn1/ASN1BitString;
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificationRequest cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->parseBytes([B)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V

    .line 146
    return-void
.end method

.method private static getSingleValue(Lorg/bouncycastle/asn1/pkcs/Attribute;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p0, "at"    # Lorg/bouncycastle/asn1/pkcs/Attribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "at"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 74
    .local v0, "attrValues":[Lorg/bouncycastle/asn1/ASN1Encodable;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 79
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "single value attribute value not size of 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
    .locals 5
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v1

    .line 54
    .local v1, "rv":Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
    if-eqz v1, :cond_0

    .line 59
    return-object v1

    .line 56
    :cond_0
    new-instance v2, Lorg/bouncycastle/pkcs/PKCSIOException;

    const-string v3, "empty data passed to constructor"

    invoke-direct {v2, v3}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "encoding":[B
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "rv":Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
    .restart local p0    # "encoding":[B
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/bouncycastle/pkcs/PKCSIOException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/bouncycastle/pkcs/PKCSIOException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 416
    if-ne p1, p0, :cond_0

    .line 418
    const/4 v0, 0x1

    return v0

    .line 421
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    if-nez v0, :cond_1

    .line 423
    const/4 v0, 0x0

    return v0

    .line 426
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    .line 428
    .local v0, "other":Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAttributes()[Lorg/bouncycastle/asn1/pkcs/Attribute;
    .locals 4

    .line 205
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 207
    .local v0, "attrSet":Lorg/bouncycastle/asn1/ASN1Set;
    if-nez v0, :cond_0

    .line 209
    sget-object v1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object v1

    .line 212
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    .line 214
    .local v1, "attrs":[Lorg/bouncycastle/asn1/pkcs/Attribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 216
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    aput-object v3, v1, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getAttributes(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/pkcs/Attribute;
    .locals 5
    .param p1, "type"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 232
    .local v0, "attrSet":Lorg/bouncycastle/asn1/ASN1Set;
    if-nez v0, :cond_0

    .line 234
    sget-object v1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object v1

    .line 237
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 241
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    .line 242
    .local v3, "attr":Lorg/bouncycastle/asn1/pkcs/Attribute;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v3    # "attr":Lorg/bouncycastle/asn1/pkcs/Attribute;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 250
    sget-object v2, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object v2

    .line 253
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object v2
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getRequestedExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 14

    .line 365
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getAttributes()[Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    .line 366
    .local v0, "attributes":[Lorg/bouncycastle/asn1/pkcs/Attribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_6

    .line 368
    aget-object v2, v0, v1

    .line 369
    .local v2, "encodable":Lorg/bouncycastle/asn1/pkcs/Attribute;
    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_extensionRequest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 371
    new-instance v3, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 373
    .local v3, "extensionsGenerator":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 374
    .local v4, "attrValues":Lorg/bouncycastle/asn1/ASN1Set;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eqz v5, :cond_4

    .line 379
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 383
    .local v6, "extensionSequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .local v7, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 385
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    .line 387
    .local v8, "itemSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v8, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    .line 388
    .local v9, "critical":Z
    :goto_2
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 390
    invoke-virtual {v8, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v8, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-virtual {v3, v10, v5, v11}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    goto :goto_3

    .line 392
    :cond_1
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    if-ne v11, v10, :cond_2

    .line 394
    invoke-virtual {v8, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v8, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-virtual {v3, v10, v9, v11}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 400
    .end local v8    # "itemSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "critical":Z
    :goto_3
    goto :goto_1

    .line 398
    .restart local v8    # "itemSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v9    # "critical":Z
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "incorrect sequence size of Extension get "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " expected 2 or three"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "attributes":[Lorg/bouncycastle/asn1/pkcs/Attribute;
    .end local v1    # "i":I
    .end local v2    # "encodable":Lorg/bouncycastle/asn1/pkcs/Attribute;
    .end local v3    # "extensionsGenerator":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    .end local v4    # "attrValues":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v6    # "extensionSequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v7    # "en":Ljava/util/Enumeration;
    .end local v8    # "itemSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "critical":Z
    .restart local v0    # "attributes":[Lorg/bouncycastle/asn1/pkcs/Attribute;
    .restart local v1    # "i":I
    .restart local v2    # "encodable":Lorg/bouncycastle/asn1/pkcs/Attribute;
    .restart local v3    # "extensionsGenerator":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    .restart local v4    # "attrValues":Lorg/bouncycastle/asn1/ASN1Set;
    .restart local v6    # "extensionSequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_3
    nop

    .line 407
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    return-object v5

    .line 402
    :catch_0
    move-exception v5

    .line 404
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "asn1 processing issue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v7

    throw v7

    .line 376
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "extensionSequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "pkcs_9_at_extensionRequest present but has no value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    .end local v2    # "encodable":Lorg/bouncycastle/asn1/pkcs/Attribute;
    .end local v3    # "extensionsGenerator":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    .end local v4    # "attrValues":Lorg/bouncycastle/asn1/ASN1Set;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 410
    .end local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSignature()[B
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAltPublicKey()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 433
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAltSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 8
    .param p1, "verifierProvider"    # Lorg/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 314
    iget-boolean v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    .line 320
    .local v0, "requestInfo":Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 321
    .local v1, "attributes":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 323
    .local v2, "atV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v4

    .line 327
    .local v4, "at":Lorg/bouncycastle/asn1/pkcs/Attribute;
    sget-object v5, Lorg/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 333
    .end local v4    # "at":Lorg/bouncycastle/asn1/pkcs/Attribute;
    goto :goto_0

    .line 335
    .end local v3    # "en":Ljava/util/Enumeration;
    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 340
    .end local v0    # "requestInfo":Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .local v3, "requestInfo":Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    .line 342
    .local v0, "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 344
    .local v4, "sOut":Ljava/io/OutputStream;
    const-string v5, "DER"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 346
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v4    # "sOut":Ljava/io/OutputStream;
    nop

    .line 353
    iget-object v4, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v4

    return v4

    .line 348
    .end local v0    # "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/pkcs/PKCSException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to process signature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "attributes":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v2    # "atV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "requestInfo":Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no alternate public key present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 6
    .param p1, "verifierProvider"    # Lorg/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    .line 278
    .local v0, "requestInfo":Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v1

    .line 280
    .local v1, "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    invoke-interface {v1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 282
    .local v2, "sOut":Ljava/io/OutputStream;
    const-string v3, "DER"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 284
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v2    # "sOut":Ljava/io/OutputStream;
    nop

    .line 291
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getSignature()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v2

    return v2

    .line 286
    .end local v1    # "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/pkcs/PKCSException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to process signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    return-object v0
.end method
