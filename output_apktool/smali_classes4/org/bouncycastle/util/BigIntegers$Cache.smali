.class public Lorg/bouncycastle/util/BigIntegers$Cache;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/BigIntegers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# instance fields
.field private final preserve:[Ljava/math/BigInteger;

.field private preserveCounter:I

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/math/BigInteger;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    .line 420
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    aput-object p1, v0, v1

    .line 428
    iget v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 425
    .end local p0    # "this":Lorg/bouncycastle/util/BigIntegers$Cache;
    .end local p1    # "value":Ljava/math/BigInteger;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 446
    iget-object v1, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "i":I
    .end local p0    # "this":Lorg/bouncycastle/util/BigIntegers$Cache;
    :cond_0
    monitor-exit p0

    return-void

    .line 442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 433
    .end local p0    # "this":Lorg/bouncycastle/util/BigIntegers$Cache;
    .end local p1    # "value":Ljava/math/BigInteger;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 438
    .end local p0    # "this":Lorg/bouncycastle/util/BigIntegers$Cache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
