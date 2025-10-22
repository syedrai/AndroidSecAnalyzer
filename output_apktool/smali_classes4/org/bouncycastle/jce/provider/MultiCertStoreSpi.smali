.class public Lorg/bouncycastle/jce/provider/MultiCertStoreSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "MultiCertStoreSpi.java"


# instance fields
.field private params:Lorg/bouncycastle/jce/MultiCertStoreParameters;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 4
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 28
    instance-of v0, p1, Lorg/bouncycastle/jce/MultiCertStoreParameters;

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jce/MultiCertStoreParameters;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/bouncycastle/jce/MultiCertStoreParameters;

    .line 34
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.bouncycastle.jce.provider.MultiCertStoreSpi: parameter must be a MultiCertStoreParameters object\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 6
    .param p1, "crlSelector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/bouncycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/MultiCertStoreParameters;->getSearchAllStores()Z

    move-result v0

    .line 65
    .local v0, "searchAllStores":Z
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/bouncycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/MultiCertStoreParameters;->getCertStores()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, "iter":Ljava/util/Iterator;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 68
    .local v2, "allCRLs":Ljava/util/List;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    .line 71
    .local v3, "store":Ljava/security/cert/CertStore;
    invoke-virtual {v3, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v4

    .line 73
    .local v4, "crls":Ljava/util/Collection;
    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 77
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    return-object v4

    .line 81
    .end local v3    # "store":Ljava/security/cert/CertStore;
    .end local v4    # "crls":Ljava/util/Collection;
    :cond_2
    :goto_1
    goto :goto_0

    .line 83
    :cond_3
    return-object v2
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 6
    .param p1, "certSelector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/bouncycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/MultiCertStoreParameters;->getSearchAllStores()Z

    move-result v0

    .line 40
    .local v0, "searchAllStores":Z
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/bouncycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/MultiCertStoreParameters;->getCertStores()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    .local v1, "iter":Ljava/util/Iterator;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 43
    .local v2, "allCerts":Ljava/util/List;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    .line 46
    .local v3, "store":Ljava/security/cert/CertStore;
    invoke-virtual {v3, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v4

    .line 48
    .local v4, "certs":Ljava/util/Collection;
    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    return-object v4

    .line 56
    .end local v3    # "store":Ljava/security/cert/CertStore;
    .end local v4    # "certs":Ljava/util/Collection;
    :cond_2
    :goto_1
    goto :goto_0

    .line 58
    :cond_3
    return-object v2
.end method
