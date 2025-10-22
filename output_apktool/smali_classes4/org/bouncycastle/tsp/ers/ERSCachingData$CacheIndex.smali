.class Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;
.super Ljava/lang/Object;
.source "ERSCachingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/ers/ERSCachingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheIndex"
.end annotation


# instance fields
.field final algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final chainHash:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0
    .param p1, "algId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "chainHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algId",
            "chainHash"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;->chainHash:[B

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/tsp/ers/ERSCachingData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 54
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 56
    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 60
    return v2

    .line 62
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;

    .line 63
    .local v1, "that":Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;
    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v4, v1, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;->chainHash:[B

    iget-object v4, v1, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;->chainHash:[B

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->hashCode()I

    move-result v0

    .line 69
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;->chainHash:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method
