.class public Lorg/bouncycastle/jce/provider/X509StoreCRLCollection;
.super Lorg/bouncycastle/x509/X509StoreSpi;
.source "X509StoreCRLCollection.java"


# instance fields
.field private _store:Lorg/bouncycastle/util/CollectionStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/x509/X509StoreSpi;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public engineGetMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 1
    .param p1, "selector"    # Lorg/bouncycastle/util/Selector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509StoreCRLCollection;->_store:Lorg/bouncycastle/util/CollectionStore;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/util/CollectionStore;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public engineInit(Lorg/bouncycastle/x509/X509StoreParameters;)V
    .locals 2
    .param p1, "params"    # Lorg/bouncycastle/x509/X509StoreParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 22
    instance-of v0, p1, Lorg/bouncycastle/x509/X509CollectionStoreParameters;

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lorg/bouncycastle/util/CollectionStore;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/x509/X509CollectionStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CollectionStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509StoreCRLCollection;->_store:Lorg/bouncycastle/util/CollectionStore;

    .line 28
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
