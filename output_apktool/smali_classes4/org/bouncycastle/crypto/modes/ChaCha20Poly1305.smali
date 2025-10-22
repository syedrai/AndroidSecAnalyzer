.class public Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;
.super Ljava/lang/Object;
.source "ChaCha20Poly1305.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305$State;
    }
.end annotation


# static fields
.field private static final AAD_LIMIT:J = -0x1L

.field private static final BUF_SIZE:I = 0x40

.field private static final DATA_LIMIT:J = 0x3fffffffc0L

.field private static final KEY_SIZE:I = 0x20

.field private static final MAC_SIZE:I = 0x10

.field private static final NONCE_SIZE:I = 0xc

.field private static final ZEROES:[B


# instance fields
.field private aadCount:J

.field private final buf:[B

.field private bufPos:I

.field private final chacha20:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

.field private dataCount:J

.field private initialAAD:[B

.field private final key:[B

.field private final mac:[B

.field private final nonce:[B

.field private final poly1305:Lorg/bouncycastle/crypto/Mac;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0xf

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->ZEROES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    new-instance v0, Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/macs/Poly1305;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 2
    .param p1, "poly1305"    # Lorg/bouncycastle/crypto/Mac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly1305"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->key:[B

    .line 45
    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->nonce:[B

    .line 46
    const/16 v0, 0x50

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    .line 47
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->mac:[B

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    .line 63
    if-eqz p1, :cond_1

    .line 67
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 72
    new-instance v0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->chacha20:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    .line 74
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'poly1305\' must be a 128-bit MAC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'poly1305\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkAAD()V
    .locals 2

    .line 464
    iget v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    packed-switch v0, :pswitch_data_0

    .line 478
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 467
    :pswitch_1
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    .line 468
    goto :goto_0

    .line 476
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ChaCha20Poly1305 cannot be reused for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :pswitch_3
    goto :goto_0

    .line 470
    :pswitch_4
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    .line 471
    nop

    .line 480
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private checkData()V
    .locals 2

    .line 484
    iget v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    packed-switch v0, :pswitch_data_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 488
    :pswitch_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->finishAAD(I)V

    .line 489
    goto :goto_0

    .line 498
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ChaCha20Poly1305 cannot be reused for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :pswitch_2
    goto :goto_0

    .line 492
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->finishAAD(I)V

    .line 493
    nop

    .line 502
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private finishAAD(I)V
    .locals 2
    .param p1, "nextState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextState"
        }
    .end annotation

    .line 506
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->aadCount:J

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->padMAC(J)V

    .line 508
    iput p1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    .line 509
    return-void
.end method

.method private finishData(I)V
    .locals 6
    .param p1, "nextState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextState"
        }
    .end annotation

    .line 513
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->dataCount:J

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->padMAC(J)V

    .line 515
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 516
    .local v1, "lengths":[B
    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->aadCount:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 517
    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->dataCount:J

    const/16 v5, 0x8

    invoke-static {v2, v3, v1, v5}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 518
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1, v4, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 520
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->mac:[B

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 522
    iput p1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    .line 523
    return-void
.end method

.method private incrementCount(JIJ)J
    .locals 6
    .param p1, "count"    # J
    .param p3, "increment"    # I
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "increment",
            "limit"
        }
    .end annotation

    .line 527
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p1, v0

    int-to-long v4, p3

    sub-long v4, p4, v4

    add-long/2addr v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 532
    int-to-long v0, p3

    add-long/2addr v0, p1

    return-wide v0

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initMAC()V
    .locals 7

    .line 537
    const/16 v0, 0x40

    new-array v2, v0, [B

    .line 540
    .local v2, "firstBlock":[B
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->chacha20:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    const/16 v4, 0x40

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    .line 541
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 546
    nop

    .line 547
    return-void

    .line 545
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 546
    throw v0
.end method

.method private padMAC(J)V
    .locals 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 551
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0xf

    .line 552
    .local v0, "partial":I
    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    sget-object v2, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->ZEROES:[B

    rsub-int/lit8 v3, v0, 0x10

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 556
    :cond_0
    return-void
.end method

.method private processData([BII[BI)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen",
            "out",
            "outOff"
        }
    .end annotation

    .line 560
    array-length v0, p4

    sub-int/2addr v0, p3

    if-gt p5, v0, :cond_0

    .line 565
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->chacha20:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    .end local p4    # "out":[B
    .end local p5    # "outOff":I
    .local v2, "in":[B
    .local v3, "inOff":I
    .local v4, "inLen":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    .line 567
    move-object p1, v5

    move p2, v6

    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .local p1, "out":[B
    .local p2, "outOff":I
    iget-wide v5, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->dataCount:J

    const-wide v8, 0x3fffffffc0L

    move v7, v4

    move-object v4, p0

    .end local v4    # "inLen":I
    .local v7, "inLen":I
    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->incrementCount(JIJ)J

    move-result-wide p3

    iput-wide p3, v4, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->dataCount:J

    .line 568
    return-void

    .line 562
    .end local v2    # "in":[B
    .end local v3    # "inOff":I
    .end local v7    # "inLen":I
    .local p1, "in":[B
    .local p2, "inOff":I
    .restart local p3    # "inLen":I
    .restart local p4    # "out":[B
    .restart local p5    # "outOff":I
    :cond_0
    move-object v2, p1

    move v7, p3

    move-object p1, p4

    .end local p3    # "inLen":I
    .end local p4    # "out":[B
    .restart local v2    # "in":[B
    .restart local v7    # "inLen":I
    .local p1, "out":[B
    new-instance p3, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p4, "Output buffer too short"

    invoke-direct {p3, p4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private reset(ZZ)V
    .locals 3
    .param p1, "clearMac"    # Z
    .param p2, "resetCipher"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clearMac",
            "resetCipher"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 574
    if-eqz p1, :cond_0

    .line 576
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 579
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->aadCount:J

    .line 580
    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->dataCount:J

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    .line 583
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    packed-switch v1, :pswitch_data_0

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 591
    :pswitch_0
    const/4 v1, 0x5

    iput v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    .line 592
    goto :goto_0

    .line 596
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    .line 597
    return-void

    .line 587
    :pswitch_2
    nop

    .line 602
    :goto_0
    if-eqz p2, :cond_1

    .line 604
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->chacha20:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->reset()V

    .line 607
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->initMAC()V

    .line 609
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->initialAAD:[B

    if-eqz v1, :cond_2

    .line 611
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->initialAAD:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->initialAAD:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processAADBytes([BII)V

    .line 613
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 377
    if-eqz p1, :cond_7

    .line 381
    if-ltz p2, :cond_6

    .line 386
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->checkData()V

    .line 388
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->mac:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 390
    const/4 v1, 0x0

    .line 392
    .local v1, "resultLen":I
    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    const-string v3, "Output buffer too short"

    const/4 v6, 0x0

    const/16 v7, 0x10

    sparse-switch v2, :sswitch_data_0

    .line 444
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 396
    :sswitch_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    if-lt v2, v7, :cond_3

    .line 401
    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    sub-int/2addr v2, v7

    .line 403
    .end local v1    # "resultLen":I
    .local v2, "resultLen":I
    array-length v1, p1

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_2

    .line 408
    if-lez v2, :cond_0

    .line 410
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    invoke-interface {v1, v3, v6, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 411
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    move v3, v2

    .end local v2    # "resultLen":I
    .local v3, "resultLen":I
    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processData([BII[BI)V

    move v2, v3

    .line 414
    .end local v3    # "resultLen":I
    .restart local v2    # "resultLen":I
    :cond_0
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->finishData(I)V

    .line 416
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->mac:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    invoke-static {v7, v1, v6, v3, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[BI[BI)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "mac check in ChaCha20Poly1305 failed"

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    .end local v2    # "resultLen":I
    .restart local v1    # "resultLen":I
    :cond_3
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "data too short"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :sswitch_1
    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/lit8 v8, v2, 0x10

    .line 427
    .end local v1    # "resultLen":I
    .local v8, "resultLen":I
    array-length v1, p1

    sub-int/2addr v1, v8

    if-gt p2, v1, :cond_5

    .line 432
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    if-lez v1, :cond_4

    .line 434
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processData([BII[BI)V

    .line 435
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    invoke-interface {v1, p1, p2, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 438
    :cond_4
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->finishData(I)V

    .line 440
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->mac:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/2addr v2, p2

    invoke-static {v1, v6, p1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    move v2, v8

    .line 447
    .end local v8    # "resultLen":I
    .restart local v2    # "resultLen":I
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v6, v1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->reset(ZZ)V

    .line 449
    return v2

    .line 429
    .end local v2    # "resultLen":I
    .restart local v8    # "resultLen":I
    :cond_5
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    .end local v8    # "resultLen":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'outOff\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "\'out\' cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "ChaCha20Poly1305"

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/2addr v1, v2

    .line 167
    .local v1, "total":I
    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    packed-switch v2, :pswitch_data_0

    .line 178
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 172
    :pswitch_1
    add-int/lit8 v2, v1, -0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 176
    :pswitch_2
    add-int/lit8 v0, v1, 0x10

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/2addr v1, v2

    .line 186
    .local v1, "total":I
    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    packed-switch v2, :pswitch_data_0

    .line 198
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 191
    :pswitch_1
    add-int/lit8 v2, v1, -0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 192
    goto :goto_0

    .line 196
    :pswitch_2
    nop

    .line 201
    :goto_0
    rem-int/lit8 v0, v1, 0x40

    sub-int v0, v1, v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_1

    .line 89
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 91
    .local v0, "aeadParams":Lorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    .line 92
    .local v1, "macSizeBits":I
    const/16 v2, 0x80

    if-ne v2, v1, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 98
    .local v2, "initKeyParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v3

    .line 99
    .local v3, "initNonce":[B
    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 101
    .local v4, "chacha20Params":Lorg/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->initialAAD:[B

    .line 102
    .end local v0    # "aeadParams":Lorg/bouncycastle/crypto/params/AEADParameters;
    .end local v1    # "macSizeBits":I
    goto :goto_0

    .line 94
    .end local v2    # "initKeyParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "initNonce":[B
    .end local v4    # "chacha20Params":Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v0    # "aeadParams":Lorg/bouncycastle/crypto/params/AEADParameters;
    .restart local v1    # "macSizeBits":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for MAC size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v0    # "aeadParams":Lorg/bouncycastle/crypto/params/AEADParameters;
    .end local v1    # "macSizeBits":I
    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_a

    .line 105
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 107
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 108
    .restart local v2    # "initKeyParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 109
    .restart local v3    # "initNonce":[B
    move-object v4, v0

    .line 111
    .restart local v4    # "chacha20Params":Lorg/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->initialAAD:[B

    .line 112
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    nop

    .line 119
    :goto_0
    const/16 v0, 0x20

    if-nez v2, :cond_3

    .line 121
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    if-eqz v1, :cond_2

    goto :goto_1

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be specified in initial init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 135
    :goto_1
    if-eqz v3, :cond_8

    array-length v1, v3

    const/16 v5, 0xc

    if-ne v5, v1, :cond_8

    .line 141
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->nonce:[B

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    if-eqz v2, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->key:[B

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 145
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot reuse nonce for ChaCha20Poly1305 encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_5
    :goto_2
    const/4 v1, 0x0

    if-eqz v2, :cond_6

    .line 151
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->key:[B

    invoke-virtual {v2, v6, v1, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->copyTo([BII)V

    .line 154
    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->nonce:[B

    invoke-static {v3, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->chacha20:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 158
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x5

    :goto_3
    iput v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    .line 160
    invoke-direct {p0, v5, v1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->reset(ZZ)V

    .line 161
    return-void

    .line 137
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nonce must be 96 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be 256 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    .end local v2    # "initKeyParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "initNonce":[B
    .end local v4    # "chacha20Params":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to ChaCha20Poly1305"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .locals 6
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->checkAAD()V

    .line 208
    iget-wide v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->aadCount:J

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->incrementCount(JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->aadCount:J

    .line 209
    iget-object v1, v0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 210
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 214
    if-eqz p1, :cond_4

    .line 218
    if-ltz p2, :cond_3

    .line 222
    if-ltz p3, :cond_2

    .line 226
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    .line 231
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->checkAAD()V

    .line 233
    if-lez p3, :cond_0

    .line 235
    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->aadCount:J

    const-wide/16 v5, -0x1

    move-object v1, p0

    move v4, p3

    .end local p3    # "len":I
    .local v4, "len":I
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->incrementCount(JIJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->aadCount:J

    .line 236
    iget-object p3, v1, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p3, p1, p2, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 233
    .end local v4    # "len":I
    .restart local p3    # "len":I
    :cond_0
    move-object v1, p0

    move v4, p3

    .line 238
    .end local p3    # "len":I
    .restart local v4    # "len":I
    :goto_0
    return-void

    .line 228
    .end local v4    # "len":I
    .restart local p3    # "len":I
    :cond_1
    move v4, p3

    .end local p3    # "len":I
    .restart local v4    # "len":I
    new-instance p3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v0, "Input buffer too short"

    invoke-direct {p3, v0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 224
    .end local v4    # "len":I
    .restart local p3    # "len":I
    :cond_2
    move v4, p3

    .end local p3    # "len":I
    .restart local v4    # "len":I
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'len\' cannot be negative"

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 220
    .end local v4    # "len":I
    .restart local p3    # "len":I
    :cond_3
    move v4, p3

    .end local p3    # "len":I
    .restart local v4    # "len":I
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'inOff\' cannot be negative"

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 216
    .end local v4    # "len":I
    .restart local p3    # "len":I
    :cond_4
    move v4, p3

    .end local p3    # "len":I
    .restart local v4    # "len":I
    new-instance p3, Ljava/lang/NullPointerException;

    const-string v0, "\'in\' cannot be null"

    invoke-direct {p3, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public processByte(B[BI)I
    .locals 8
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->checkData()V

    .line 244
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    const/4 v6, 0x0

    const/16 v7, 0x40

    sparse-switch v1, :sswitch_data_0

    .line 274
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 248
    :sswitch_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    aput-byte p1, v1, v2

    .line 249
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    invoke-interface {v1, v2, v6, v7}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 252
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    const/4 v2, 0x0

    const/16 v3, 0x40

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processData([BII[BI)V

    .line 253
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    const/16 v3, 0x10

    invoke-static {v1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iput v3, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    .line 255
    return v7

    .line 258
    :cond_0
    return v6

    .line 262
    :sswitch_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    aput-byte p1, v1, v2

    .line 263
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    if-ne v1, v7, :cond_1

    .line 265
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    const/4 v2, 0x0

    const/16 v3, 0x40

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processData([BII[BI)V

    .line 266
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, p2, p3, v7}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 267
    iput v6, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    .line 268
    return v7

    .line 271
    :cond_1
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public processBytes([BII[BI)I
    .locals 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 280
    if-eqz p1, :cond_b

    .line 290
    nop

    .line 294
    if-ltz p2, :cond_a

    .line 298
    if-ltz p3, :cond_9

    .line 302
    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_8

    .line 306
    if-ltz p5, :cond_7

    .line 311
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->checkData()V

    .line 313
    const/4 v6, 0x0

    .line 315
    .local v6, "resultLen":I
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->state:I

    const/4 v7, 0x0

    const/16 v8, 0x40

    sparse-switch v1, :sswitch_data_0

    .line 369
    move-object/from16 v4, p4

    move/from16 v11, p5

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 319
    :sswitch_0
    const/4 v1, 0x0

    move v9, v1

    move v10, v6

    .end local v6    # "resultLen":I
    .local v9, "i":I
    .local v10, "resultLen":I
    :goto_0
    if-ge v9, p3, :cond_1

    .line 321
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int v3, p2, v9

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 322
    iget v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 324
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    invoke-interface {v1, v2, v7, v8}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 325
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    const/16 v4, 0x40

    add-int v6, p5, v10

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processData([BII[BI)V

    .line 326
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    const/16 v4, 0x10

    invoke-static {v2, v8, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    iput v4, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    .line 328
    add-int/lit8 v10, v10, 0x40

    .line 319
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 331
    .end local v9    # "i":I
    :cond_1
    move v0, p3

    move-object/from16 v4, p4

    move/from16 v11, p5

    goto/16 :goto_3

    .line 335
    .end local v10    # "resultLen":I
    .restart local v6    # "resultLen":I
    :sswitch_1
    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    if-eqz v2, :cond_4

    move v0, p3

    .line 337
    .end local p3    # "len":I
    .local v0, "len":I
    :goto_1
    if-lez v0, :cond_3

    .line 339
    add-int/lit8 v9, v0, -0x1

    .line 340
    .end local v0    # "len":I
    .local v9, "len":I
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/lit8 v10, p2, 0x1

    .end local p2    # "inOff":I
    .local v10, "inOff":I
    aget-byte p2, p1, p2

    aput-byte p2, v0, v2

    .line 341
    iget p2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    if-ne p2, v8, :cond_2

    .line 343
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    const/4 v2, 0x0

    const/16 v3, 0x40

    move-object v0, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processData([BII[BI)V

    .line 344
    move v11, v5

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2, v4, v11, v8}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 345
    iput v7, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    .line 346
    const/16 v6, 0x40

    .line 347
    move v2, v10

    goto :goto_2

    .line 341
    :cond_2
    move-object/from16 v4, p4

    move/from16 v11, p5

    move v0, v9

    move p2, v10

    goto :goto_1

    .line 337
    .end local v9    # "len":I
    .end local v10    # "inOff":I
    .restart local v0    # "len":I
    .restart local p2    # "inOff":I
    :cond_3
    move-object/from16 v4, p4

    move/from16 v11, p5

    move v2, p2

    move v9, v0

    goto :goto_2

    .line 335
    .end local v0    # "len":I
    .restart local p3    # "len":I
    :cond_4
    move-object/from16 v4, p4

    move/from16 v11, p5

    move v2, p2

    move v9, p3

    .line 352
    .end local p2    # "inOff":I
    .end local p3    # "len":I
    .local v2, "inOff":I
    .restart local v9    # "len":I
    :goto_2
    if-lt v9, v8, :cond_5

    .line 354
    const/16 v3, 0x40

    add-int v5, v11, v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processData([BII[BI)V

    .line 355
    move p2, v2

    .end local v2    # "inOff":I
    .restart local p2    # "inOff":I
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->poly1305:Lorg/bouncycastle/crypto/Mac;

    add-int v3, v11, v6

    invoke-interface {v0, v4, v3, v8}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 356
    add-int/lit8 p2, p2, 0x40

    .line 357
    add-int/lit8 v9, v9, -0x40

    .line 358
    add-int/lit8 v6, v6, 0x40

    move v2, p2

    goto :goto_2

    .line 361
    .end local p2    # "inOff":I
    .restart local v2    # "inOff":I
    :cond_5
    move p2, v2

    .end local v2    # "inOff":I
    .restart local p2    # "inOff":I
    if-lez v9, :cond_6

    .line 363
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->buf:[B

    invoke-static {p1, p2, v0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iput v9, p0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->bufPos:I

    .line 372
    :cond_6
    move v10, v6

    move v0, v9

    .end local v6    # "resultLen":I
    .end local v9    # "len":I
    .restart local v0    # "len":I
    .local v10, "resultLen":I
    :goto_3
    return v10

    .line 308
    .end local v0    # "len":I
    .end local v10    # "resultLen":I
    .restart local p3    # "len":I
    :cond_7
    move-object/from16 v4, p4

    move/from16 v11, p5

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'outOff\' cannot be negative"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_8
    move-object/from16 v4, p4

    move/from16 v11, p5

    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "Input buffer too short"

    invoke-direct {v3, v5}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    :cond_9
    move-object/from16 v4, p4

    move/from16 v11, p5

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'len\' cannot be negative"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 296
    :cond_a
    move-object/from16 v4, p4

    move/from16 v11, p5

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'inOff\' cannot be negative"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    :cond_b
    move-object/from16 v4, p4

    move/from16 v11, p5

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "\'in\' cannot be null"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->reset(ZZ)V

    .line 460
    return-void
.end method
