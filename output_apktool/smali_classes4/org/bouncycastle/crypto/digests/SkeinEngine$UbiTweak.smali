.class Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;
.super Ljava/lang/Object;
.source "SkeinEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SkeinEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UbiTweak"
.end annotation


# static fields
.field private static final LOW_RANGE:J = 0x7fffffff80000000L

.field private static final T1_FINAL:J = -0x8000000000000000L

.field private static final T1_FIRST:J = 0x4000000000000000L


# instance fields
.field private extendedPosition:Z

.field private tweak:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    .line 256
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->reset()V

    .line 257
    return-void
.end method


# virtual methods
.method public advancePosition(I)V
    .locals 14
    .param p1, "advance"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advance"
        }
    .end annotation

    .line 324
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 327
    .local v0, "parts":[J
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v4, v3, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v0, v2

    .line 328
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v4, v3, v2

    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    and-long/2addr v4, v6

    aput-wide v4, v0, v1

    .line 329
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v8, v4, v1

    and-long v4, v8, v6

    const/4 v8, 0x2

    aput-wide v4, v0, v8

    .line 331
    int-to-long v4, p1

    .line 332
    .local v4, "carry":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v0

    if-ge v9, v10, :cond_0

    .line 334
    aget-wide v10, v0, v9

    add-long/2addr v4, v10

    .line 335
    aput-wide v4, v0, v9

    .line 336
    ushr-long/2addr v4, v3

    .line 332
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 338
    .end local v9    # "i":I
    :cond_0
    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v10, v0, v1

    and-long/2addr v10, v6

    shl-long/2addr v10, v3

    aget-wide v12, v0, v2

    and-long/2addr v12, v6

    or-long/2addr v10, v12

    aput-wide v10, v9, v2

    .line 339
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v9, v3, v1

    const-wide v11, -0x100000000L

    and-long/2addr v9, v11

    aget-wide v11, v0, v8

    and-long/2addr v6, v11

    or-long/2addr v6, v9

    aput-wide v6, v2, v1

    .line 340
    .end local v0    # "parts":[J
    .end local v4    # "carry":J
    goto :goto_1

    .line 343
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v3, v0, v2

    .line 344
    .local v3, "position":J
    int-to-long v5, p1

    add-long/2addr v3, v5

    .line 345
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aput-wide v3, v0, v2

    .line 346
    const-wide v5, 0x7fffffff80000000L

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 348
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    .line 351
    .end local v3    # "position":J
    :cond_2
    :goto_1
    return-void
.end method

.method public getType()I
    .locals 4

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const/16 v0, 0x38

    ushr-long v0, v1, v0

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getWords()[J
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    return-object v0
.end method

.method public isFinal()Z
    .locals 6

    .line 315
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFirst()Z
    .locals 6

    .line 298
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 5

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 268
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    .line 269
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    .line 270
    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->setFirst(Z)V

    .line 271
    return-void
.end method

.method public reset(Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;)V
    .locals 2
    .param p1, "tweak"    # Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tweak"
        }
    .end annotation

    .line 261
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->clone([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    .line 262
    iget-boolean v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    .line 263
    return-void
.end method

.method public setFinal(Z)V
    .locals 6
    .param p1, "last"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last"
        }
    .end annotation

    .line 303
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 305
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_0

    .line 309
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v1, v0

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 311
    :goto_0
    return-void
.end method

.method public setFirst(Z)V
    .locals 6
    .param p1, "first"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first"
        }
    .end annotation

    .line 286
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 288
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_0

    .line 292
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v1, v0

    const-wide v4, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 294
    :goto_0
    return-void
.end method

.method public setType(I)V
    .locals 9
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    const-wide v5, -0x4000000000L

    and-long/2addr v3, v5

    int-to-long v5, p1

    const-wide/16 v7, 0x3f

    and-long/2addr v5, v7

    const/16 v1, 0x38

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 360
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->isFirst()Z

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->isFinal()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " first: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", final: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
