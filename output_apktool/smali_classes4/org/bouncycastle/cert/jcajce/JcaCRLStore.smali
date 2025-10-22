.class public Lorg/bouncycastle/cert/jcajce/JcaCRLStore;
.super Lorg/bouncycastle/util/CollectionStore;
.source "JcaCRLStore.java"


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lorg/bouncycastle/cert/jcajce/JcaCRLStore;->convertCRLs(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    .line 32
    return-void
.end method

.method private static convertCRLs(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .param p0, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v0, "list":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 43
    .local v2, "crl":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/X509CRL;

    if-eqz v3, :cond_0

    .line 47
    :try_start_0
    new-instance v3, Lorg/bouncycastle/cert/X509CRLHolder;

    move-object v4, v2

    check-cast v4, Ljava/security/cert/X509CRL;

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>([B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_1

    .line 49
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CRLException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot read encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "crl":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 61
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method
