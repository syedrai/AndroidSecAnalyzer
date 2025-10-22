.class public abstract Lorg/bouncycastle/tsp/ers/ERSCachingData;
.super Ljava/lang/Object;
.source "ERSCachingData.java"

# interfaces
.implements Lorg/bouncycastle/tsp/ers/ERSData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;
    }
.end annotation


# instance fields
.field private preCalcs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract calculateHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestCalculator",
            "previousChainHash"
        }
    .end annotation
.end method

.method public getHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .locals 3
    .param p1, "digestCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "previousChainHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestCalculator",
            "previousChainHash"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/tsp/ers/ERSCachingData-IA;)V

    .line 27
    .local v0, "digAlgID":Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSCachingData;->calculateHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v1

    .line 34
    .local v1, "hash":[B
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v1
.end method
