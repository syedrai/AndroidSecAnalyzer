.class Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;
.super Ljava/lang/Object;
.source "X509RevocationChecker.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/PKIXCRLStore;
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalCRLStore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/jcajce/PKIXCRLStore<",
        "Ljava/security/cert/CRL;",
        ">;",
        "Lorg/bouncycastle/util/Iterable<",
        "Ljava/security/cert/CRL;",
        ">;"
    }
.end annotation


# instance fields
.field private _local:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/Store;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    .line 869
    .local p1, "collection":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Ljava/security/cert/CRL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->_local:Ljava/util/Collection;

    .line 871
    return-void
.end method


# virtual methods
.method public getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Selector<",
            "Ljava/security/cert/CRL;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .line 881
    .local p1, "selector":Lorg/bouncycastle/util/Selector;, "Lorg/bouncycastle/util/Selector<Ljava/security/cert/CRL;>;"
    if-nez p1, :cond_0

    .line 883
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->_local:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 886
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v0, "col":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CRL;>;"
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->_local:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 889
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/CRL;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CRL;

    .line 893
    .local v2, "obj":Ljava/security/cert/CRL;
    invoke-interface {p1, v2}, Lorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v2    # "obj":Ljava/security/cert/CRL;
    :cond_1
    goto :goto_0

    .line 899
    :cond_2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
