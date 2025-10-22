.class abstract Lorg/bouncycastle/x509/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;
    .locals 4
    .param p0, "crlselect"    # Lorg/bouncycastle/x509/X509CRLStoreSelector;
    .param p1, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "crlselect",
            "paramsPKIX"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 24
    .local v0, "completeSet":Ljava/util/HashSet;
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/x509/PKIXCRLUtil;->findCRLs(Ljava/util/HashSet;Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    nop

    .line 31
    return-object v0

    .line 26
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Exception obtaining complete CRLs."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static findCRLs(Ljava/util/HashSet;Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)V
    .locals 8
    .param p0, "crls"    # Ljava/util/HashSet;
    .param p1, "crlSelect"    # Lorg/bouncycastle/x509/X509CRLStoreSelector;
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

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    const/4 v1, 0x0

    .line 51
    .local v1, "foundValidStore":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 52
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/bouncycastle/x509/X509Store;

    const-string v5, "Exception searching in X.509 CRL store."

    if-eqz v4, :cond_0

    .line 57
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/x509/X509Store;

    .line 60
    .local v4, "store":Lorg/bouncycastle/x509/X509Store;
    :try_start_0
    invoke-virtual {v4, p1}, Lorg/bouncycastle/x509/X509Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v1, 0x1

    .line 66
    goto :goto_1

    .line 63
    :catch_0
    move-exception v6

    .line 65
    .local v6, "e":Lorg/bouncycastle/util/StoreException;
    new-instance v7, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v7, v5, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 67
    .end local v4    # "store":Lorg/bouncycastle/x509/X509Store;
    .end local v6    # "e":Lorg/bouncycastle/util/StoreException;
    :goto_1
    goto :goto_2

    .line 70
    :cond_0
    move-object v4, v3

    check-cast v4, Ljava/security/cert/CertStore;

    .line 73
    .local v4, "store":Ljava/security/cert/CertStore;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    const/4 v1, 0x1

    .line 79
    goto :goto_2

    .line 76
    :catch_1
    move-exception v6

    .line 78
    .local v6, "e":Ljava/security/cert/CertStoreException;
    new-instance v7, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v7, v5, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 81
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "store":Ljava/security/cert/CertStore;
    .end local v6    # "e":Ljava/security/cert/CertStoreException;
    :goto_2
    goto :goto_0

    .line 82
    :cond_1
    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_3

    .line 84
    :cond_2
    throw v0

    .line 86
    :cond_3
    :goto_3
    return-void
.end method
