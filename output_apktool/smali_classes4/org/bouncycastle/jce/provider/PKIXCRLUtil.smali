.class abstract Lorg/bouncycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findCRLs(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .param p0, "crlselect"    # Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p1, "validityDate"    # Ljava/util/Date;
    .param p2, "certStores"    # Ljava/util/List;
    .param p3, "pkixCrlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "crlselect",
            "validityDate",
            "certStores",
            "pkixCrlStores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 27
    .local v0, "initialSet":Ljava/util/Set;
    :try_start_0
    invoke-static {v0, p0, p3}, Lorg/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V

    .line 28
    invoke-static {v0, p0, p2}, Lorg/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    nop

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 38
    .local v1, "finalSet":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 42
    .local v3, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v4

    .line 43
    .local v4, "nextUpdate":Ljava/util/Date;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 47
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    .end local v4    # "nextUpdate":Ljava/util/Date;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    goto :goto_0

    .line 54
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_3
    return-object v1

    .line 30
    .end local v1    # "finalSet":Ljava/util/Set;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Exception obtaining complete CRLs."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static findCRLs(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V
    .locals 8
    .param p0, "crls"    # Ljava/util/Set;
    .param p1, "crlSelect"    # Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p2, "crlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "crls",
            "crlSelect",
            "crlStores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    const/4 v1, 0x0

    .line 74
    .local v1, "foundValidStore":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 75
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/bouncycastle/util/Store;

    const-string v5, "Exception searching in X.509 CRL store."

    if-eqz v4, :cond_0

    .line 80
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/util/Store;

    .line 84
    .local v4, "store":Lorg/bouncycastle/util/Store;
    :try_start_0
    invoke-interface {v4, p1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const/4 v1, 0x1

    .line 90
    goto :goto_1

    .line 87
    :catch_0
    move-exception v6

    .line 89
    .local v6, "e":Lorg/bouncycastle/util/StoreException;
    new-instance v7, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v7, v5, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 91
    .end local v4    # "store":Lorg/bouncycastle/util/Store;
    .end local v6    # "e":Lorg/bouncycastle/util/StoreException;
    :goto_1
    goto :goto_2

    .line 94
    :cond_0
    move-object v4, v3

    check-cast v4, Ljava/security/cert/CertStore;

    .line 98
    .local v4, "store":Ljava/security/cert/CertStore;
    :try_start_1
    invoke-static {p1, v4}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCRLs(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    const/4 v1, 0x1

    .line 104
    goto :goto_2

    .line 101
    :catch_1
    move-exception v6

    .line 103
    .local v6, "e":Ljava/security/cert/CertStoreException;
    new-instance v7, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v7, v5, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 106
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "store":Ljava/security/cert/CertStore;
    .end local v6    # "e":Ljava/security/cert/CertStoreException;
    :goto_2
    goto :goto_0

    .line 108
    :cond_1
    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_3

    .line 110
    :cond_2
    throw v0

    .line 112
    :cond_3
    :goto_3
    return-void
.end method
