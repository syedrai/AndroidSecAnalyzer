.class public interface abstract Lorg/bouncycastle/jcajce/PKIXCRLStore;
.super Ljava/lang/Object;
.source "PKIXCRLStore.java"

# interfaces
.implements Lorg/bouncycastle/util/Store;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Store<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
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
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation
.end method
