.class Lorg/bouncycastle/operator/bc/AESUtil;
.super Ljava/lang/Object;
.source "AESUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static determineKeyEncAlg(Lorg/bouncycastle/crypto/params/KeyParameter;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .param p0, "key"    # Lorg/bouncycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    .line 15
    .local v0, "length":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 17
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .local v1, "wrapOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_0

    .line 19
    .end local v1    # "wrapOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    .line 21
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .restart local v1    # "wrapOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_0

    .line 23
    .end local v1    # "wrapOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 25
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    .restart local v1    # "wrapOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v2

    .line 29
    .end local v1    # "wrapOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "illegal keysize in AES"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
