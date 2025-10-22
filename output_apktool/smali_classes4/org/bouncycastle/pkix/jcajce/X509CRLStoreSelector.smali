.class Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 27
    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 31
    iput-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 33
    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CRLSelector;)Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;
    .locals 4
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .line 202
    if-eqz p0, :cond_0

    .line 207
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    .line 208
    .local v0, "cs":Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 209
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 212
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    nop

    .line 219
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    .line 220
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 221
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 222
    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    .end local v0    # "cs":Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create from null selector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 227
    invoke-static {p0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    move-result-object v0

    .line 228
    .local v0, "sel":Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;
    iget-boolean v1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v1, v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 229
    iget-boolean v1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-boolean v1, v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 230
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 232
    iget-boolean v1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iput-boolean v1, v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 233
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 234
    return-object v0
.end method

.method public getIssuingDistributionPoint()[B
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 92
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    return v1

    .line 96
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 97
    .local v0, "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    .line 100
    .local v2, "dci":Lorg/bouncycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 101
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 102
    .local v3, "bytes":[B
    if-eqz v3, :cond_1

    .line 104
    invoke-static {v3}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->parseExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 110
    .end local v3    # "bytes":[B
    :cond_1
    nop

    .line 111
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    if-nez v2, :cond_2

    .line 115
    return v1

    .line 118
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    if-eqz v2, :cond_3

    .line 122
    return v1

    .line 125
    :cond_3
    if-eqz v2, :cond_4

    .line 128
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v3, :cond_4

    .line 130
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 132
    return v1

    .line 136
    :cond_4
    iget-boolean v3, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v3, :cond_6

    .line 138
    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 141
    .local v3, "idp":[B
    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v4, :cond_5

    .line 143
    if-eqz v3, :cond_6

    .line 145
    return v1

    .line 150
    :cond_5
    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_6

    .line 152
    return v1

    .line 157
    .end local v3    # "idp":[B
    :cond_6
    move-object v1, p1

    check-cast v1, Ljava/security/cert/X509CRL;

    invoke-super {p0, v1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v1

    return v1

    .line 107
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/Exception;
    return v1
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 1
    .param p1, "crl"    # Ljava/security/cert/CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crl"
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCompleteCRLEnabled(Z)V
    .locals 0
    .param p1, "completeCRLEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completeCRLEnabled"
        }
    .end annotation

    .line 259
    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 260
    return-void
.end method

.method public setDeltaCRLIndicatorEnabled(Z)V
    .locals 0
    .param p1, "deltaCRLIndicator"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaCRLIndicator"
        }
    .end annotation

    .line 189
    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 190
    return-void
.end method

.method public setIssuingDistributionPoint([B)V
    .locals 1
    .param p1, "issuingDistributionPoint"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuingDistributionPoint"
        }
    .end annotation

    .line 325
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 326
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .locals 0
    .param p1, "issuingDistributionPointEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuingDistributionPointEnabled"
        }
    .end annotation

    .line 60
    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 61
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBaseCRLNumber"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 286
    return-void
.end method
