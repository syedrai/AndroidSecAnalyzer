.class abstract Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;
.super Ljava/lang/Object;
.source "ISAPEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ISAPAEAD_K"
.end annotation


# instance fields
.field protected C:[S

.field protected E:[S

.field protected ISAP_IV1_16:[S

.field protected ISAP_IV2_16:[S

.field protected ISAP_IV3_16:[S

.field final ISAP_STATE_SZ_CRYPTO_NPUBBYTES:I

.field private final KeccakF400RoundConstants:[I

.field protected SX:[S

.field protected iv16:[S

.field protected k16:[S

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/16 v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_STATE_SZ_CRYPTO_NPUBBYTES:I

    .line 319
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    .line 321
    const/16 v0, 0x19

    new-array v1, v0, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    .line 322
    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    .line 323
    const/4 v0, 0x5

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    .line 327
    const/16 v0, 0x90

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fputISAP_rH(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)V

    .line 328
    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fputISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)V

    .line 329
    return-void

    :array_0
    .array-data 4
        0x1
        0x8082
        0x808a
        0x8000
        0x808b
        0x1
        0x8081
        0x8009
        0x8a
        0x88
        0x8009
        0xa
        0x808b
        0x8b
        0x8089
        0x8003
        0x8002
        0x80
        0x800a
        0xa
    .end array-data
.end method

.method private ROL16(SI)S
    .locals 3
    .param p1, "a"    # S
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "offset"
        }
    .end annotation

    .line 530
    const v0, 0xffff

    and-int v1, p1, v0

    shl-int/2addr v1, p2

    and-int/2addr v0, p1

    rsub-int/lit8 v2, p2, 0x10

    ushr-int/2addr v0, v2

    xor-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private byteToShort([B[SI)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "output"    # [S
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outLen"
        }
    .end annotation

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 471
    shl-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v1

    aput-short v1, p2, v0

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private byteToShortXor([B[SI)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "output"    # [S
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outLen"
        }
    .end annotation

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 463
    aget-short v1, p2, v0

    shl-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private shortToByte([S[BI)V
    .locals 3
    .param p1, "input"    # [S
    .param p2, "output"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outOff"
        }
    .end annotation

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 479
    aget-short v1, p1, v0

    shl-int/lit8 v2, v0, 0x1

    add-int/2addr v2, p3

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected ABSORB_MAC([S[BI[S[S)V
    .locals 8
    .param p1, "SX"    # [S
    .param p2, "src"    # [B
    .param p3, "len"    # I
    .param p4, "E"    # [S
    .param p5, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "src",
            "len",
            "E",
            "C"
        }
    .end annotation

    .line 359
    move v0, p3

    .line 360
    .local v0, "rem_bytes":I
    const/4 v1, 0x0

    .line 363
    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    if-le v0, v2, :cond_0

    .line 365
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShortXor([B[SI)V

    .line 366
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    add-int/2addr v1, v2

    .line 367
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 368
    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    const/16 v3, 0x80

    if-ne v0, v2, :cond_1

    .line 372
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShortXor([B[SI)V

    .line 373
    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    .line 374
    const/4 v2, 0x0

    aget-short v4, p1, v2

    xor-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 375
    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    .line 376
    goto :goto_2

    .line 380
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 382
    shr-int/lit8 v4, v2, 0x1

    aget-short v5, p1, v4

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "idx":I
    .local v6, "idx":I
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v7, v2, 0x1

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v1, v7

    xor-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, p1, v4

    .line 380
    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_1

    .line 384
    .end local v2    # "i":I
    .end local v6    # "idx":I
    .restart local v1    # "idx":I
    :cond_2
    shr-int/lit8 v2, v0, 0x1

    aget-short v4, p1, v2

    and-int/lit8 v5, v0, 0x1

    shl-int/lit8 v5, v5, 0x3

    shl-int/2addr v3, v5

    xor-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 385
    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    .line 386
    nop

    .line 389
    :goto_2
    return-void
.end method

.method protected abstract PermuteRoundsBX([S[S[S)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation
.end method

.method protected abstract PermuteRoundsHX([S[S[S)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation
.end method

.method protected abstract PermuteRoundsKX([S[S[S)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation
.end method

.method public init()V
    .locals 3

    .line 333
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetk(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    .line 334
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetk(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShort([B[SI)V

    .line 335
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetnpub(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    .line 336
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetnpub(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShort([B[SI)V

    .line 337
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->reset()V

    .line 338
    return-void
.end method

.method public isap_enc([BII[BII)V
    .locals 4
    .param p1, "m"    # [B
    .param p2, "mOff"    # I
    .param p3, "mlen"    # I
    .param p4, "c"    # [B
    .param p5, "cOff"    # I
    .param p6, "clen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "mOff",
            "mlen",
            "c",
            "cOff",
            "clen"
        }
    .end annotation

    .line 437
    nop

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 442
    add-int/lit8 v1, p5, 0x1

    .end local p5    # "cOff":I
    .local v1, "cOff":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    shr-int/lit8 v3, v0, 0x1

    aget-short v2, v2, v3

    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "mOff":I
    .local v3, "mOff":I
    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    .line 440
    add-int/lit8 v0, v0, 0x1

    move p5, v1

    move p2, v3

    goto :goto_1

    .line 444
    .end local v0    # "i":I
    .end local v1    # "cOff":I
    .end local v3    # "mOff":I
    .restart local p2    # "mOff":I
    .restart local p5    # "cOff":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    sub-int/2addr p3, v0

    .line 445
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    goto :goto_0

    .line 450
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p3, :cond_2

    .line 452
    add-int/lit8 v1, p5, 0x1

    .end local p5    # "cOff":I
    .restart local v1    # "cOff":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    shr-int/lit8 v3, v0, 0x1

    aget-short v2, v2, v3

    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "mOff":I
    .restart local v3    # "mOff":I
    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    .line 450
    add-int/lit8 v0, v0, 0x1

    move p5, v1

    move p2, v3

    goto :goto_2

    .line 454
    .end local v0    # "i":I
    .end local v1    # "cOff":I
    .end local v3    # "mOff":I
    .restart local p2    # "mOff":I
    .restart local p5    # "cOff":I
    :cond_2
    nop

    .line 457
    return-void
.end method

.method public isap_mac([BI[BI[BI)V
    .locals 7
    .param p1, "ad"    # [B
    .param p2, "adlen"    # I
    .param p3, "c"    # [B
    .param p4, "clen"    # I
    .param p5, "tag"    # [B
    .param p6, "tagOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ad",
            "adlen",
            "c",
            "clen",
            "tag",
            "tagOff"
        }
    .end annotation

    .line 413
    const/16 v1, 0x19

    new-array v1, v1, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    .line 415
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV1_16:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/4 v5, 0x4

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    .line 419
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ABSORB_MAC([S[BI[S[S)V

    .line 421
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v2, 0x18

    aget-short v3, v1, v2

    xor-int/lit16 v3, v3, 0x100

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 423
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ABSORB_MAC([S[BI[S[S)V

    .line 425
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    invoke-direct {p0, v1, p5, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->shortToByte([S[BI)V

    .line 426
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV2_16:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v5, 0x10

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    const/16 v3, 0x10

    move-object v2, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->isap_rk([S[BI[SI[S)V

    .line 428
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v1, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    .line 429
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    invoke-direct {p0, v1, p5, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->shortToByte([S[BI)V

    .line 430
    return-void
.end method

.method public isap_rk([S[BI[SI[S)V
    .locals 8
    .param p1, "iv16"    # [S
    .param p2, "y"    # [B
    .param p3, "ylen"    # I
    .param p4, "out16"    # [S
    .param p5, "outlen"    # I
    .param p6, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "iv16",
            "y",
            "ylen",
            "out16",
            "outlen",
            "C"
        }
    .end annotation

    .line 394
    const/16 v0, 0x19

    new-array v1, v0, [S

    .line 395
    .local v1, "SX":[S
    new-array v0, v0, [S

    .line 396
    .local v0, "E":[S
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    const/4 v2, 0x4

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    invoke-virtual {p0, v1, v0, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    .line 400
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    shl-int/lit8 v5, p3, 0x3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 402
    aget-short v5, v1, v3

    shr-int/lit8 v6, v2, 0x3

    aget-byte v6, p2, v6

    and-int/lit8 v7, v2, 0x7

    rsub-int/lit8 v7, v7, 0x7

    ushr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x7

    xor-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v1, v3

    .line 403
    invoke-virtual {p0, v1, v0, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsBX([S[S[S)V

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v2    # "i":I
    :cond_0
    aget-short v2, v1, v3

    add-int/lit8 v5, p3, -0x1

    aget-byte v5, p2, v5

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v2, v5

    int-to-short v2, v2

    aput-short v2, v1, v3

    .line 406
    invoke-virtual {p0, v1, v0, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    .line 408
    const/16 v2, 0x18

    if-ne p5, v2, :cond_1

    const/16 v4, 0x11

    :cond_1
    invoke-static {v1, v3, p4, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    return-void
.end method

.method protected prepareThetaX([S[S)V
    .locals 3
    .param p1, "SX"    # [S
    .param p2, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "SX",
            "C"
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    aget-short v1, p1, v0

    const/4 v2, 0x5

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xa

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xf

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x14

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 522
    const/4 v0, 0x1

    aget-short v1, p1, v0

    const/4 v2, 0x6

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xb

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x15

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 523
    const/4 v0, 0x2

    aget-short v1, p1, v0

    const/4 v2, 0x7

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xc

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x11

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x16

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 524
    const/4 v0, 0x3

    aget-short v1, p1, v0

    const/16 v2, 0x8

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xd

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x12

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x17

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 525
    const/4 v0, 0x4

    aget-short v1, p1, v0

    const/16 v2, 0x9

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xe

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x13

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x18

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 526
    return-void
.end method

.method public reset()V
    .locals 8

    .line 343
    const/16 v0, 0x19

    new-array v1, v0, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    .line 344
    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    .line 345
    const/4 v0, 0x5

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    .line 346
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV3_16:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetnpub(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v6, 0x18

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    const/16 v4, 0x10

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->isap_rk([S[BI[SI[S)V

    .line 347
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v3, 0x11

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    .line 349
    return-void
.end method

.method protected rounds12X([S[S[S)V
    .locals 0
    .param p1, "SX"    # [S
    .param p2, "E"    # [S
    .param p3, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->prepareThetaX([S[S)V

    .line 486
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_8_18([S[S[S)V

    .line 487
    return-void
.end method

.method protected rounds_12_18([S[S[S)V
    .locals 1
    .param p1, "SX"    # [S
    .param p2, "E"    # [S
    .param p3, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation

    .line 509
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 510
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 511
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 512
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 513
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 514
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 515
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 516
    invoke-virtual {p0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIota([S[S[S)V

    .line 517
    return-void
.end method

.method protected rounds_4_18([S[S[S)V
    .locals 1
    .param p1, "SX"    # [S
    .param p2, "E"    # [S
    .param p3, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation

    .line 491
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 492
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 493
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 494
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 495
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_8_18([S[S[S)V

    .line 496
    return-void
.end method

.method protected rounds_8_18([S[S[S)V
    .locals 1
    .param p1, "SX"    # [S
    .param p2, "E"    # [S
    .param p3, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation

    .line 500
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 501
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 502
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 503
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 504
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_12_18([S[S[S)V

    .line 505
    return-void
.end method

.method protected thetaRhoPiChiIota([S[S[S)V
    .locals 31
    .param p1, "A"    # [S
    .param p2, "E"    # [S
    .param p3, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "E",
            "C"
        }
    .end annotation

    .line 643
    move-object/from16 v0, p0

    const/4 v1, 0x4

    aget-short v2, p3, v1

    const/4 v3, 0x1

    aget-short v4, p3, v3

    invoke-direct {v0, v4, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    xor-int/2addr v2, v4

    int-to-short v2, v2

    .line 644
    .local v2, "Da":S
    const/4 v4, 0x0

    aget-short v5, p3, v4

    const/4 v6, 0x2

    aget-short v7, p3, v6

    invoke-direct {v0, v7, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    xor-int/2addr v5, v7

    int-to-short v5, v5

    .line 645
    .local v5, "De":S
    aget-short v7, p3, v3

    const/4 v8, 0x3

    aget-short v9, p3, v8

    invoke-direct {v0, v9, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    xor-int/2addr v7, v9

    int-to-short v7, v7

    .line 646
    .local v7, "Di":S
    aget-short v9, p3, v6

    aget-short v10, p3, v1

    invoke-direct {v0, v10, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    .line 647
    .local v9, "Do":S
    aget-short v10, p3, v8

    aget-short v11, p3, v4

    invoke-direct {v0, v11, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    .line 649
    .local v10, "Du":S
    aget-short v11, p1, v4

    xor-int/2addr v11, v2

    int-to-short v11, v11

    aput-short v11, p1, v4

    .line 650
    .local v11, "Ba":S
    const/4 v12, 0x6

    aget-short v13, p1, v12

    xor-int/2addr v13, v5

    int-to-short v13, v13

    aput-short v13, p1, v12

    .line 651
    aget-short v13, p1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v13

    .line 652
    .local v13, "Be":S
    aget-short v15, p1, v14

    xor-int/2addr v15, v7

    int-to-short v15, v15

    aput-short v15, p1, v14

    .line 653
    aget-short v15, p1, v14

    const/16 v16, 0x0

    const/16 v4, 0xb

    invoke-direct {v0, v15, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v15

    .line 654
    .local v15, "Bi":S
    const/16 v17, 0x12

    aget-short v18, p1, v17

    const/16 v19, 0xb

    xor-int v4, v18, v9

    int-to-short v4, v4

    aput-short v4, p1, v17

    .line 655
    aget-short v4, p1, v17

    const/16 v18, 0x2

    const/4 v6, 0x5

    invoke-direct {v0, v4, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 656
    .local v4, "Bo":S
    const/16 v20, 0x18

    aget-short v21, p1, v20

    const/16 v22, 0x5

    xor-int v6, v21, v10

    int-to-short v6, v6

    aput-short v6, p1, v20

    .line 657
    aget-short v6, p1, v20

    const/16 v21, 0x6

    const/16 v12, 0xe

    invoke-direct {v0, v6, v12}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 658
    .local v6, "Bu":S
    const/16 v23, 0xe

    not-int v12, v13

    and-int/2addr v12, v15

    xor-int/2addr v12, v11

    const/16 v24, 0x1

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    const/16 v25, 0x13

    aget v3, v3, v25

    xor-int/2addr v3, v12

    int-to-short v3, v3

    aput-short v3, p2, v16

    .line 659
    not-int v3, v15

    and-int/2addr v3, v4

    xor-int/2addr v3, v13

    int-to-short v3, v3

    aput-short v3, p2, v24

    .line 660
    not-int v3, v4

    and-int/2addr v3, v6

    xor-int/2addr v3, v15

    int-to-short v3, v3

    aput-short v3, p2, v18

    .line 661
    not-int v3, v6

    and-int/2addr v3, v11

    xor-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p2, v8

    .line 662
    not-int v3, v11

    and-int/2addr v3, v13

    xor-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, p2, v1

    .line 664
    aget-short v3, p1, v8

    xor-int/2addr v3, v9

    int-to-short v3, v3

    aput-short v3, p1, v8

    .line 665
    aget-short v3, p1, v8

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    .line 666
    .end local v11    # "Ba":S
    .local v3, "Ba":S
    const/16 v11, 0x9

    aget-short v12, p1, v11

    xor-int/2addr v12, v10

    int-to-short v12, v12

    aput-short v12, p1, v11

    .line 667
    aget-short v12, p1, v11

    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    .line 668
    .end local v13    # "Be":S
    .local v12, "Be":S
    const/16 v13, 0xa

    aget-short v16, p1, v13

    const/16 v26, 0xc

    xor-int v14, v16, v2

    int-to-short v14, v14

    aput-short v14, p1, v13

    .line 669
    aget-short v14, p1, v13

    invoke-direct {v0, v14, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    .line 670
    .end local v15    # "Bi":S
    .local v8, "Bi":S
    const/16 v14, 0x10

    aget-short v15, p1, v14

    xor-int/2addr v15, v5

    int-to-short v15, v15

    aput-short v15, p1, v14

    .line 671
    aget-short v15, p1, v14

    const/16 v16, 0x10

    const/16 v14, 0xd

    invoke-direct {v0, v15, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 672
    const/16 v15, 0x16

    aget-short v27, p1, v15

    const/16 v28, 0x16

    xor-int v15, v27, v7

    int-to-short v15, v15

    aput-short v15, p1, v28

    .line 673
    aget-short v15, p1, v28

    invoke-direct {v0, v15, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 674
    not-int v15, v12

    and-int/2addr v15, v8

    xor-int/2addr v15, v3

    int-to-short v15, v15

    aput-short v15, p2, v22

    .line 675
    not-int v15, v8

    and-int/2addr v15, v4

    xor-int/2addr v15, v12

    int-to-short v15, v15

    aput-short v15, p2, v21

    .line 676
    not-int v15, v4

    and-int/2addr v15, v6

    xor-int/2addr v15, v8

    int-to-short v15, v15

    const/16 v27, 0xd

    const/4 v14, 0x7

    aput-short v15, p2, v14

    .line 677
    not-int v15, v6

    and-int/2addr v15, v3

    xor-int/2addr v15, v4

    int-to-short v15, v15

    const/16 v29, 0x7

    const/16 v14, 0x8

    aput-short v15, p2, v14

    .line 678
    not-int v15, v3

    and-int/2addr v15, v12

    xor-int/2addr v15, v6

    int-to-short v15, v15

    aput-short v15, p2, v11

    .line 680
    aget-short v15, p1, v24

    xor-int/2addr v15, v5

    int-to-short v15, v15

    aput-short v15, p1, v24

    .line 681
    aget-short v15, p1, v24

    const/4 v13, 0x1

    const/16 v30, 0xa

    invoke-direct {v0, v15, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    .line 682
    aget-short v13, p1, v29

    xor-int/2addr v13, v7

    int-to-short v13, v13

    aput-short v13, p1, v29

    .line 683
    aget-short v13, p1, v29

    const/4 v15, 0x6

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    .line 684
    aget-short v13, p1, v27

    xor-int/2addr v13, v9

    int-to-short v13, v13

    aput-short v13, p1, v27

    .line 685
    aget-short v13, p1, v27

    invoke-direct {v0, v13, v11}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    .line 686
    aget-short v13, p1, v25

    xor-int/2addr v13, v10

    int-to-short v13, v13

    aput-short v13, p1, v25

    .line 687
    aget-short v13, p1, v25

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 688
    const/16 v13, 0x14

    aget-short v15, p1, v13

    xor-int/2addr v15, v2

    int-to-short v15, v15

    aput-short v15, p1, v13

    .line 689
    aget-short v15, p1, v13

    const/4 v13, 0x2

    const/16 v21, 0x14

    invoke-direct {v0, v15, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 690
    not-int v13, v12

    and-int/2addr v13, v8

    xor-int/2addr v13, v3

    int-to-short v13, v13

    aput-short v13, p2, v30

    .line 691
    not-int v13, v8

    and-int/2addr v13, v4

    xor-int/2addr v13, v12

    int-to-short v13, v13

    aput-short v13, p2, v19

    .line 692
    not-int v13, v4

    and-int/2addr v13, v6

    xor-int/2addr v13, v8

    int-to-short v13, v13

    aput-short v13, p2, v26

    .line 693
    not-int v13, v6

    and-int/2addr v13, v3

    xor-int/2addr v13, v4

    int-to-short v13, v13

    aput-short v13, p2, v27

    .line 694
    not-int v13, v3

    and-int/2addr v13, v12

    xor-int/2addr v13, v6

    int-to-short v13, v13

    aput-short v13, p2, v23

    .line 696
    aget-short v13, p1, v1

    xor-int/2addr v13, v10

    int-to-short v13, v13

    aput-short v13, p1, v1

    .line 697
    aget-short v13, p1, v1

    const/16 v15, 0xb

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    .line 698
    aget-short v13, p1, v22

    xor-int/2addr v13, v2

    int-to-short v13, v13

    aput-short v13, p1, v22

    .line 699
    aget-short v13, p1, v22

    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    .line 700
    .end local v12    # "Be":S
    .local v1, "Be":S
    aget-short v12, p1, v15

    xor-int/2addr v12, v5

    int-to-short v12, v12

    aput-short v12, p1, v15

    .line 701
    aget-short v12, p1, v15

    const/16 v13, 0xa

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    .line 702
    const/16 v12, 0x11

    aget-short v13, p1, v12

    xor-int/2addr v13, v7

    int-to-short v13, v13

    aput-short v13, p1, v12

    .line 703
    aget-short v12, p1, v12

    const/16 v13, 0xf

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 704
    const/16 v12, 0x17

    aget-short v15, p1, v12

    xor-int/2addr v15, v9

    int-to-short v15, v15

    aput-short v15, p1, v12

    .line 705
    aget-short v12, p1, v12

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 706
    not-int v12, v1

    and-int/2addr v12, v8

    xor-int/2addr v12, v3

    int-to-short v12, v12

    aput-short v12, p2, v13

    .line 707
    not-int v12, v8

    and-int/2addr v12, v4

    xor-int/2addr v12, v1

    int-to-short v12, v12

    aput-short v12, p2, v16

    .line 708
    not-int v12, v4

    and-int/2addr v12, v6

    xor-int/2addr v12, v8

    int-to-short v12, v12

    const/16 v15, 0x11

    aput-short v12, p2, v15

    .line 709
    not-int v12, v6

    and-int/2addr v12, v3

    xor-int/2addr v12, v4

    int-to-short v12, v12

    aput-short v12, p2, v17

    .line 710
    not-int v12, v3

    and-int/2addr v12, v1

    xor-int/2addr v12, v6

    int-to-short v12, v12

    aput-short v12, p2, v25

    .line 712
    const/16 v18, 0x2

    aget-short v12, p1, v18

    xor-int/2addr v12, v7

    int-to-short v12, v12

    aput-short v12, p1, v18

    .line 713
    aget-short v12, p1, v18

    const/16 v15, 0xe

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    .line 714
    aget-short v12, p1, v14

    xor-int/2addr v12, v9

    int-to-short v12, v12

    aput-short v12, p1, v14

    .line 715
    aget-short v12, p1, v14

    const/4 v14, 0x7

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    .line 716
    aget-short v12, p1, v15

    xor-int/2addr v12, v10

    int-to-short v12, v12

    aput-short v12, p1, v15

    .line 717
    aget-short v12, p1, v15

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    .line 718
    aget-short v12, p1, v13

    xor-int/2addr v12, v2

    int-to-short v12, v12

    aput-short v12, p1, v13

    .line 719
    aget-short v12, p1, v13

    invoke-direct {v0, v12, v11}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 720
    const/16 v11, 0x15

    aget-short v12, p1, v11

    xor-int/2addr v12, v5

    int-to-short v12, v12

    aput-short v12, p1, v11

    .line 721
    aget-short v11, p1, v11

    const/4 v13, 0x2

    invoke-direct {v0, v11, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 722
    not-int v11, v1

    and-int/2addr v11, v8

    xor-int/2addr v11, v3

    int-to-short v11, v11

    aput-short v11, p2, v21

    .line 723
    not-int v11, v8

    and-int/2addr v11, v4

    xor-int/2addr v11, v1

    int-to-short v11, v11

    const/16 v12, 0x15

    aput-short v11, p2, v12

    .line 724
    not-int v11, v4

    and-int/2addr v11, v6

    xor-int/2addr v11, v8

    int-to-short v11, v11

    aput-short v11, p2, v28

    .line 725
    not-int v11, v6

    and-int/2addr v11, v3

    xor-int/2addr v11, v4

    int-to-short v11, v11

    const/16 v12, 0x17

    aput-short v11, p2, v12

    .line 726
    not-int v11, v3

    and-int/2addr v11, v1

    xor-int/2addr v11, v6

    int-to-short v11, v11

    aput-short v11, p2, v20

    .line 727
    return-void
.end method

.method protected thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V
    .locals 33
    .param p1, "i"    # I
    .param p2, "A"    # [S
    .param p3, "E"    # [S
    .param p4, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "A",
            "E",
            "C"
        }
    .end annotation

    .line 535
    move-object/from16 v0, p0

    const/4 v1, 0x4

    aget-short v2, p4, v1

    const/4 v3, 0x1

    aget-short v4, p4, v3

    invoke-direct {v0, v4, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    xor-int/2addr v2, v4

    int-to-short v2, v2

    .line 536
    .local v2, "Da":S
    const/4 v4, 0x0

    aget-short v5, p4, v4

    const/4 v6, 0x2

    aget-short v7, p4, v6

    invoke-direct {v0, v7, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    xor-int/2addr v5, v7

    int-to-short v5, v5

    .line 537
    .local v5, "De":S
    aget-short v7, p4, v3

    const/4 v8, 0x3

    aget-short v9, p4, v8

    invoke-direct {v0, v9, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    xor-int/2addr v7, v9

    int-to-short v7, v7

    .line 538
    .local v7, "Di":S
    aget-short v9, p4, v6

    aget-short v10, p4, v1

    invoke-direct {v0, v10, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    .line 539
    .local v9, "Do":S
    aget-short v10, p4, v8

    aget-short v11, p4, v4

    invoke-direct {v0, v11, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    .line 541
    .local v10, "Du":S
    aget-short v11, p2, v4

    xor-int/2addr v11, v2

    int-to-short v11, v11

    aput-short v11, p2, v4

    .line 542
    .local v11, "Ba":S
    const/4 v12, 0x6

    aget-short v13, p2, v12

    xor-int/2addr v13, v5

    int-to-short v13, v13

    aput-short v13, p2, v12

    .line 543
    aget-short v13, p2, v12

    const/16 v14, 0xc

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v13

    .line 544
    .local v13, "Be":S
    aget-short v15, p2, v14

    xor-int/2addr v15, v7

    int-to-short v15, v15

    aput-short v15, p2, v14

    .line 545
    aget-short v15, p2, v14

    const/16 v16, 0x0

    const/16 v4, 0xb

    invoke-direct {v0, v15, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v15

    .line 546
    .local v15, "Bi":S
    const/16 v17, 0x12

    aget-short v18, p2, v17

    const/16 v19, 0xb

    xor-int v4, v18, v9

    int-to-short v4, v4

    aput-short v4, p2, v17

    .line 547
    aget-short v4, p2, v17

    const/16 v18, 0x2

    const/4 v6, 0x5

    invoke-direct {v0, v4, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 548
    .local v4, "Bo":S
    const/16 v20, 0x18

    aget-short v21, p2, v20

    const/16 v22, 0x5

    xor-int v6, v21, v10

    int-to-short v6, v6

    aput-short v6, p2, v20

    .line 549
    aget-short v6, p2, v20

    const/16 v21, 0x6

    const/16 v12, 0xe

    invoke-direct {v0, v6, v12}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 550
    .local v6, "Bu":S
    const/16 v23, 0xe

    not-int v12, v13

    and-int/2addr v12, v15

    xor-int/2addr v12, v11

    const/16 v24, 0x1

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    aget v3, v3, p1

    xor-int/2addr v3, v12

    int-to-short v3, v3

    aput-short v3, p3, v16

    aput-short v3, p4, v16

    .line 551
    not-int v3, v15

    and-int/2addr v3, v4

    xor-int/2addr v3, v13

    int-to-short v3, v3

    aput-short v3, p3, v24

    aput-short v3, p4, v24

    .line 552
    not-int v3, v4

    and-int/2addr v3, v6

    xor-int/2addr v3, v15

    int-to-short v3, v3

    aput-short v3, p3, v18

    aput-short v3, p4, v18

    .line 553
    not-int v3, v6

    and-int/2addr v3, v11

    xor-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p3, v8

    aput-short v3, p4, v8

    .line 554
    not-int v3, v11

    and-int/2addr v3, v13

    xor-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, p3, v1

    aput-short v3, p4, v1

    .line 556
    aget-short v3, p2, v8

    xor-int/2addr v3, v9

    int-to-short v3, v3

    aput-short v3, p2, v8

    .line 557
    aget-short v3, p2, v8

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    .line 558
    .end local v11    # "Ba":S
    .local v3, "Ba":S
    const/16 v11, 0x9

    aget-short v12, p2, v11

    xor-int/2addr v12, v10

    int-to-short v12, v12

    aput-short v12, p2, v11

    .line 559
    aget-short v12, p2, v11

    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    .line 560
    .end local v13    # "Be":S
    .local v12, "Be":S
    const/16 v13, 0xa

    aget-short v25, p2, v13

    const/16 v26, 0xc

    xor-int v14, v25, v2

    int-to-short v14, v14

    aput-short v14, p2, v13

    .line 561
    aget-short v14, p2, v13

    invoke-direct {v0, v14, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v14

    .line 562
    .end local v15    # "Bi":S
    .local v14, "Bi":S
    const/16 v15, 0x10

    aget-short v25, p2, v15

    const/16 v27, 0x3

    xor-int v8, v25, v5

    int-to-short v8, v8

    aput-short v8, p2, v15

    .line 563
    aget-short v8, p2, v15

    const/16 v25, 0x10

    const/16 v15, 0xd

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 564
    const/16 v8, 0x16

    aget-short v28, p2, v8

    const/16 v29, 0x16

    xor-int v8, v28, v7

    int-to-short v8, v8

    aput-short v8, p2, v29

    .line 565
    aget-short v8, p2, v29

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 566
    not-int v8, v12

    and-int/2addr v8, v14

    xor-int/2addr v8, v3

    int-to-short v8, v8

    aput-short v8, p3, v22

    .line 567
    aget-short v8, p4, v16

    aget-short v28, p3, v22

    xor-int v8, v8, v28

    int-to-short v8, v8

    aput-short v8, p4, v16

    .line 568
    not-int v8, v14

    and-int/2addr v8, v4

    xor-int/2addr v8, v12

    int-to-short v8, v8

    aput-short v8, p3, v21

    .line 569
    aget-short v8, p4, v24

    aget-short v28, p3, v21

    xor-int v8, v8, v28

    int-to-short v8, v8

    aput-short v8, p4, v24

    .line 570
    not-int v8, v4

    and-int/2addr v8, v6

    xor-int/2addr v8, v14

    int-to-short v8, v8

    const/16 v28, 0xd

    const/4 v15, 0x7

    aput-short v8, p3, v15

    .line 571
    aget-short v8, p4, v18

    aget-short v30, p3, v15

    xor-int v8, v8, v30

    int-to-short v8, v8

    aput-short v8, p4, v18

    .line 572
    not-int v8, v6

    and-int/2addr v8, v3

    xor-int/2addr v8, v4

    int-to-short v8, v8

    const/16 v30, 0x7

    const/16 v15, 0x8

    aput-short v8, p3, v15

    .line 573
    aget-short v8, p4, v27

    aget-short v31, p3, v15

    xor-int v8, v8, v31

    int-to-short v8, v8

    aput-short v8, p4, v27

    .line 574
    not-int v8, v3

    and-int/2addr v8, v12

    xor-int/2addr v8, v6

    int-to-short v8, v8

    aput-short v8, p3, v11

    .line 575
    aget-short v8, p4, v1

    aget-short v31, p3, v11

    xor-int v8, v8, v31

    int-to-short v8, v8

    aput-short v8, p4, v1

    .line 577
    aget-short v8, p2, v24

    xor-int/2addr v8, v5

    int-to-short v8, v8

    aput-short v8, p2, v24

    .line 578
    aget-short v8, p2, v24

    const/4 v13, 0x1

    const/16 v31, 0xa

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    .line 579
    aget-short v8, p2, v30

    xor-int/2addr v8, v7

    int-to-short v8, v8

    aput-short v8, p2, v30

    .line 580
    aget-short v8, p2, v30

    const/4 v13, 0x6

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    .line 581
    .end local v12    # "Be":S
    .local v8, "Be":S
    aget-short v12, p2, v28

    xor-int/2addr v12, v9

    int-to-short v12, v12

    aput-short v12, p2, v28

    .line 582
    aget-short v12, p2, v28

    invoke-direct {v0, v12, v11}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    .line 583
    .end local v14    # "Bi":S
    .local v12, "Bi":S
    const/16 v13, 0x13

    aget-short v14, p2, v13

    xor-int/2addr v14, v10

    int-to-short v14, v14

    aput-short v14, p2, v13

    .line 584
    aget-short v14, p2, v13

    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 585
    const/16 v14, 0x14

    aget-short v21, p2, v14

    const/16 v32, 0x13

    xor-int v13, v21, v2

    int-to-short v13, v13

    aput-short v13, p2, v14

    .line 586
    aget-short v13, p2, v14

    const/4 v14, 0x2

    const/16 v21, 0x14

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 587
    not-int v13, v8

    and-int/2addr v13, v12

    xor-int/2addr v13, v3

    int-to-short v13, v13

    aput-short v13, p3, v31

    .line 588
    aget-short v13, p4, v16

    aget-short v14, p3, v31

    xor-int/2addr v13, v14

    int-to-short v13, v13

    aput-short v13, p4, v16

    .line 589
    not-int v13, v12

    and-int/2addr v13, v4

    xor-int/2addr v13, v8

    int-to-short v13, v13

    aput-short v13, p3, v19

    .line 590
    const/16 v24, 0x1

    aget-short v13, p4, v24

    aget-short v14, p3, v19

    xor-int/2addr v13, v14

    int-to-short v13, v13

    aput-short v13, p4, v24

    .line 591
    not-int v13, v4

    and-int/2addr v13, v6

    xor-int/2addr v13, v12

    int-to-short v13, v13

    aput-short v13, p3, v26

    .line 592
    const/16 v18, 0x2

    aget-short v13, p4, v18

    aget-short v14, p3, v26

    xor-int/2addr v13, v14

    int-to-short v13, v13

    aput-short v13, p4, v18

    .line 593
    not-int v13, v6

    and-int/2addr v13, v3

    xor-int/2addr v13, v4

    int-to-short v13, v13

    aput-short v13, p3, v28

    .line 594
    aget-short v13, p4, v27

    aget-short v14, p3, v28

    xor-int/2addr v13, v14

    int-to-short v13, v13

    aput-short v13, p4, v27

    .line 595
    not-int v13, v3

    and-int/2addr v13, v8

    xor-int/2addr v13, v6

    int-to-short v13, v13

    aput-short v13, p3, v23

    .line 596
    aget-short v13, p4, v1

    aget-short v14, p3, v23

    xor-int/2addr v13, v14

    int-to-short v13, v13

    aput-short v13, p4, v1

    .line 598
    aget-short v13, p2, v1

    xor-int/2addr v13, v10

    int-to-short v13, v13

    aput-short v13, p2, v1

    .line 599
    aget-short v13, p2, v1

    const/16 v14, 0xb

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    .line 600
    aget-short v13, p2, v22

    xor-int/2addr v13, v2

    int-to-short v13, v13

    aput-short v13, p2, v22

    .line 601
    aget-short v13, p2, v22

    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    .line 602
    aget-short v13, p2, v14

    xor-int/2addr v13, v5

    int-to-short v13, v13

    aput-short v13, p2, v14

    .line 603
    aget-short v13, p2, v14

    const/16 v14, 0xa

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    .line 604
    const/16 v13, 0x11

    aget-short v14, p2, v13

    xor-int/2addr v14, v7

    int-to-short v14, v14

    aput-short v14, p2, v13

    .line 605
    aget-short v13, p2, v13

    const/16 v14, 0xf

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 606
    const/16 v13, 0x17

    aget-short v19, p2, v13

    const/16 v22, 0x4

    xor-int v1, v19, v9

    int-to-short v1, v1

    aput-short v1, p2, v13

    .line 607
    const/16 v1, 0x17

    aget-short v1, p2, v1

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    .line 608
    .end local v6    # "Bu":S
    .local v1, "Bu":S
    not-int v6, v8

    and-int/2addr v6, v12

    xor-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, p3, v14

    .line 609
    aget-short v6, p4, v16

    aget-short v13, p3, v14

    xor-int/2addr v6, v13

    int-to-short v6, v6

    aput-short v6, p4, v16

    .line 610
    not-int v6, v12

    and-int/2addr v6, v4

    xor-int/2addr v6, v8

    int-to-short v6, v6

    aput-short v6, p3, v25

    .line 611
    const/16 v24, 0x1

    aget-short v6, p4, v24

    aget-short v13, p3, v25

    xor-int/2addr v6, v13

    int-to-short v6, v6

    aput-short v6, p4, v24

    .line 612
    not-int v6, v4

    and-int/2addr v6, v1

    xor-int/2addr v6, v12

    int-to-short v6, v6

    const/16 v13, 0x11

    aput-short v6, p3, v13

    .line 613
    const/16 v18, 0x2

    aget-short v6, p4, v18

    aget-short v13, p3, v13

    xor-int/2addr v6, v13

    int-to-short v6, v6

    aput-short v6, p4, v18

    .line 614
    not-int v6, v1

    and-int/2addr v6, v3

    xor-int/2addr v6, v4

    int-to-short v6, v6

    aput-short v6, p3, v17

    .line 615
    aget-short v6, p4, v27

    aget-short v13, p3, v17

    xor-int/2addr v6, v13

    int-to-short v6, v6

    aput-short v6, p4, v27

    .line 616
    not-int v6, v3

    and-int/2addr v6, v8

    xor-int/2addr v6, v1

    int-to-short v6, v6

    aput-short v6, p3, v32

    .line 617
    aget-short v6, p4, v22

    aget-short v13, p3, v32

    xor-int/2addr v6, v13

    int-to-short v6, v6

    aput-short v6, p4, v22

    .line 619
    const/16 v18, 0x2

    aget-short v6, p2, v18

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p2, v18

    .line 620
    aget-short v6, p2, v18

    const/16 v13, 0xe

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    .line 621
    aget-short v6, p2, v15

    xor-int/2addr v6, v9

    int-to-short v6, v6

    aput-short v6, p2, v15

    .line 622
    aget-short v6, p2, v15

    const/4 v15, 0x7

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    .line 623
    .end local v8    # "Be":S
    .local v6, "Be":S
    aget-short v8, p2, v13

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p2, v13

    .line 624
    aget-short v8, p2, v13

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    .line 625
    .end local v12    # "Bi":S
    .local v8, "Bi":S
    aget-short v12, p2, v14

    xor-int/2addr v12, v2

    int-to-short v12, v12

    aput-short v12, p2, v14

    .line 626
    aget-short v12, p2, v14

    invoke-direct {v0, v12, v11}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    .line 627
    const/16 v11, 0x15

    aget-short v12, p2, v11

    xor-int/2addr v12, v5

    int-to-short v12, v12

    aput-short v12, p2, v11

    .line 628
    aget-short v11, p2, v11

    const/4 v14, 0x2

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    .line 629
    not-int v11, v6

    and-int/2addr v11, v8

    xor-int/2addr v11, v3

    int-to-short v11, v11

    aput-short v11, p3, v21

    .line 630
    aget-short v11, p4, v16

    aget-short v12, p3, v21

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v16

    .line 631
    not-int v11, v8

    and-int/2addr v11, v4

    xor-int/2addr v11, v6

    int-to-short v11, v11

    const/16 v12, 0x15

    aput-short v11, p3, v12

    .line 632
    const/16 v24, 0x1

    aget-short v11, p4, v24

    aget-short v12, p3, v12

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v24

    .line 633
    not-int v11, v4

    and-int/2addr v11, v1

    xor-int/2addr v11, v8

    int-to-short v11, v11

    aput-short v11, p3, v29

    .line 634
    const/16 v18, 0x2

    aget-short v11, p4, v18

    aget-short v12, p3, v29

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v18

    .line 635
    not-int v11, v1

    and-int/2addr v11, v3

    xor-int/2addr v11, v4

    int-to-short v11, v11

    const/16 v12, 0x17

    aput-short v11, p3, v12

    .line 636
    aget-short v11, p4, v27

    aget-short v12, p3, v12

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v27

    .line 637
    not-int v11, v3

    and-int/2addr v11, v6

    xor-int/2addr v11, v1

    int-to-short v11, v11

    aput-short v11, p3, v20

    .line 638
    aget-short v11, p4, v22

    aget-short v12, p3, v20

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v22

    .line 639
    return-void
.end method
