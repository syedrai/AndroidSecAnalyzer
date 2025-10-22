.class public abstract Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;
.super Ljava/lang/Object;
.source "ISAPEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ISAPAEAD_A"
.end annotation


# instance fields
.field protected ISAP_IV1_64:J

.field protected ISAP_IV2_64:J

.field protected ISAP_IV3_64:J

.field protected k64:[J

.field protected npub64:[J

.field protected t0:J

.field protected t1:J

.field protected t2:J

.field protected t3:J

.field protected t4:J

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

.field protected x0:J

.field protected x1:J

.field protected x2:J

.field protected x3:J

.field protected x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .locals 1
    .param p1, "this$0"    # Lorg/bouncycastle/crypto/engines/ISAPEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fputISAP_rH(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)V

    .line 100
    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fputISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)V

    .line 101
    return-void
.end method

.method private ROTR(JJ)J
    .locals 4
    .param p1, "x"    # J
    .param p3, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "n"
        }
    .end annotation

    .line 223
    long-to-int v0, p3

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int v3, v2

    shl-long v2, p1, v3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private getLongSize(I)I
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 218
    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected ABSORB_MAC([BI)V
    .locals 9
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "len"
        }
    .end annotation

    .line 122
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    .line 123
    .local v0, "src64":[J
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 127
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    aget-wide v5, v0, v1

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v5

    xor-long/2addr v2, v5

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    .line 128
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v1

    sub-int/2addr p2, v1

    move v1, v4

    goto :goto_0

    .line 132
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 134
    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    shl-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v2

    aget-byte v5, p1, v5

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    rsub-int/lit8 v7, v2, 0x7

    shl-int/lit8 v7, v7, 0x3

    shl-long/2addr v5, v7

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    .end local v2    # "i":I
    :cond_1
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    rsub-int/lit8 v4, p2, 0x7

    shl-int/lit8 v4, v4, 0x3

    const-wide/16 v5, 0x80

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    .line 137
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    .line 138
    return-void
.end method

.method public P12()V
    .locals 2

    .line 248
    const-wide/16 v0, 0xf0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 249
    const-wide/16 v0, 0xe1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 250
    const-wide/16 v0, 0xd2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 251
    const-wide/16 v0, 0xc3

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 252
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 253
    const-wide/16 v0, 0xa5

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 254
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P6()V

    .line 255
    return-void
.end method

.method protected P6()V
    .locals 2

    .line 259
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 260
    const-wide/16 v0, 0x87

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 261
    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 262
    const-wide/16 v0, 0x69

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 263
    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 264
    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    .line 265
    return-void
.end method

.method protected abstract PX1()V
.end method

.method protected abstract PX2()V
.end method

.method protected ROUND(J)V
    .locals 8
    .param p1, "C"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "C"
        }
    .end annotation

    .line 234
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t0:J

    .line 235
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    xor-long/2addr v2, v4

    xor-long/2addr v2, p1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    .line 236
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    .line 237
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    not-long v2, v2

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    .line 238
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    .line 239
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t0:J

    const-wide/16 v4, 0x13

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t0:J

    const-wide/16 v4, 0x1c

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    .line 240
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    const-wide/16 v4, 0x27

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    const-wide/16 v4, 0x3d

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    .line 241
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    const-wide/16 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    const-wide/16 v4, 0x6

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    not-long v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    .line 242
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    const-wide/16 v4, 0xa

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    const-wide/16 v4, 0x11

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    .line 243
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    const-wide/16 v4, 0x7

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    const-wide/16 v4, 0x29

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    .line 244
    return-void
.end method

.method protected U64BIG(J)J
    .locals 6
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 228
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v0

    const-wide v2, -0xffffff01000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 229
    const-wide/16 v2, 0x28

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x38

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 228
    return-wide v0
.end method

.method public init()V
    .locals 6

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetnpub(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->getLongSize(I)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetnpub(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    aget-wide v4, v1, v3

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v2, 0x1

    aget-wide v4, v1, v2

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetk(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->getLongSize(I)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetk(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    array-length v4, v4

    invoke-static {v0, v3, v1, v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    aget-wide v4, v1, v3

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    aget-wide v3, v1, v2

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 113
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->reset()V

    .line 114
    return-void
.end method

.method public isap_enc([BII[BII)V
    .locals 8
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

    .line 187
    shr-int/lit8 v0, p3, 0x3

    new-array v0, v0, [J

    .line 188
    .local v0, "m64":[J
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    .line 189
    array-length v1, v0

    new-array v1, v1, [J

    .line 190
    .local v1, "c64":[J
    const/4 v3, 0x0

    .line 191
    .local v3, "idx":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v4

    if-lt p3, v4, :cond_0

    .line 193
    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aget-wide v6, v0, v3

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    .line 194
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX1()V

    .line 195
    add-int/lit8 v3, v3, 0x1

    .line 196
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v4

    sub-int/2addr p3, v4

    goto :goto_0

    .line 198
    :cond_0
    array-length v4, v1

    invoke-static {v1, v2, v4, p4, p5}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    .line 200
    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object v2

    .line 201
    .local v2, "xo":[B
    :goto_1
    if-lez p3, :cond_1

    .line 203
    shl-int/lit8 v4, v3, 0x3

    add-int/2addr v4, p5

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v5

    sub-int/2addr v5, p3

    aget-byte v5, v2, v5

    shl-int/lit8 v6, v3, 0x3

    add-int/2addr v6, p2

    add-int/lit8 p3, p3, -0x1

    add-int/2addr v6, p3

    aget-byte v6, p1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    goto :goto_1

    .line 205
    :cond_1
    return-void
.end method

.method public isap_mac([BI[BI[BI)V
    .locals 9
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

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    .line 145
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV1_64:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    .line 146
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    .line 147
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    .line 148
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ABSORB_MAC([BI)V

    .line 150
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    .line 151
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ABSORB_MAC([BI)V

    .line 153
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v2

    invoke-static {v2, v3, p5, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 154
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-static {v0, v1, p5, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 155
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    .local v0, "tmp_x2":J
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    .local v2, "tmp_x3":J
    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    .line 156
    .local v4, "tmp_x4":J
    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV2_64:J

    const/16 v8, 0x10

    invoke-virtual {p0, v6, v7, p5, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->isap_rk(J[BI)V

    .line 157
    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    .line 158
    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    .line 159
    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    .line 161
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    .line 162
    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v6

    invoke-static {v6, v7, p5, p6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 163
    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    invoke-virtual {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v6

    add-int/lit8 v8, p6, 0x8

    invoke-static {v6, v7, p5, v8}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 164
    return-void
.end method

.method public isap_rk(J[BI)V
    .locals 11
    .param p1, "iv64"    # J
    .param p3, "y"    # [B
    .param p4, "ylen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iv64",
            "y",
            "ylen"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    .line 171
    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    .line 172
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    .line 173
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    shl-int/lit8 v2, p4, 0x3

    sub-int/2addr v2, v1

    const/16 v3, 0x38

    const/4 v4, 0x7

    if-ge v0, v2, :cond_0

    .line 177
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    ushr-int/lit8 v2, v0, 0x3

    aget-byte v2, p3, v2

    and-int/lit8 v7, v0, 0x7

    rsub-int/lit8 v7, v7, 0x7

    ushr-int/2addr v2, v7

    and-int/2addr v2, v1

    shl-int/2addr v2, v4

    int-to-long v7, v2

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    shl-long v2, v7, v3

    xor-long/2addr v2, v5

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    .line 178
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX2()V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    add-int/lit8 v2, p4, -0x1

    aget-byte v2, p3, v2

    int-to-long v5, v2

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    shl-long v4, v5, v4

    shl-long v2, v4, v3

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    .line 181
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    .line 182
    return-void
.end method

.method public reset()V
    .locals 4

    .line 210
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV3_64:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->-$$Nest$fgetnpub(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->isap_rk(J[BI)V

    .line 211
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    .line 212
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    .line 213
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX1()V

    .line 214
    return-void
.end method
