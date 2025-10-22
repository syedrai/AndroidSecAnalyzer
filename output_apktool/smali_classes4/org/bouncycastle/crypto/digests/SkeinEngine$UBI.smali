.class Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;
.super Ljava/lang/Object;
.source "SkeinEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SkeinEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UBI"
.end annotation


# instance fields
.field private currentBlock:[B

.field private currentOffset:I

.field private message:[J

.field final synthetic this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

.field private final tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SkeinEngine;I)V
    .locals 0
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "blockSize"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    .line 389
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    .line 390
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    array-length p1, p1

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    .line 391
    return-void
.end method

.method private processBlock([J)V
    .locals 6
    .param p1, "output"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;->threefish:Lorg/bouncycastle/crypto/engines/ThreefishEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/digests/SkeinEngine;->chain:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->getWords()[J

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->init(Z[J[J)V

    .line 435
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 437
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;->threefish:Lorg/bouncycastle/crypto/engines/ThreefishEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->processBlock([J[J)I

    .line 439
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 441
    aget-wide v1, p1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    aget-wide v4, v3, v0

    xor-long/2addr v1, v4

    aput-wide v1, p1, v0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([J)V
    .locals 3
    .param p1, "output"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 448
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 450
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->setFinal(Z)V

    .line 454
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->processBlock([J)V

    .line 455
    return-void
.end method

.method public reset(I)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->reset()V

    .line 404
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->setType(I)V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    .line 406
    return-void
.end method

.method public reset(Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;)V
    .locals 2
    .param p1, "ubi"    # Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ubi"
        }
    .end annotation

    .line 395
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->clone([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    .line 396
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    .line 397
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->clone([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    .line 398
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->reset(Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;)V

    .line 399
    return-void
.end method

.method public update([BII[J)V
    .locals 5
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "len",
            "output"
        }
    .end annotation

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "copied":I
    :goto_0
    if-le p3, v0, :cond_1

    .line 417
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 419
    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->processBlock([J)V

    .line 420
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->setFirst(Z)V

    .line 421
    iput v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    .line 424
    :cond_0
    sub-int v1, p3, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 425
    .local v1, "toCopy":I
    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    add-int/2addr v0, v1

    .line 427
    iget v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    .line 428
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->advancePosition(I)V

    .line 429
    .end local v1    # "toCopy":I
    goto :goto_0

    .line 430
    :cond_1
    return-void
.end method
