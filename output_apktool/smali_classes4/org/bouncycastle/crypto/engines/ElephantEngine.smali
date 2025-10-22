.class public Lorg/bouncycastle/crypto/engines/ElephantEngine;
.super Ljava/lang/Object;
.source "ElephantEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ElephantEngine$State;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;
    }
.end annotation


# instance fields
.field private final BLOCK_SIZE:I

.field private final CRYPTO_ABYTES:B

.field private final CRYPTO_KEYBYTES:B

.field private final CRYPTO_NPUBBYTES:B

.field private final KeccakRhoOffsets:[I

.field private final KeccakRoundConstants:[B

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private ad:[B

.field private adOff:I

.field private adlen:I

.field private final algorithmName:Ljava/lang/String;

.field private final buffer:[B

.field private current_mask:[B

.field private expanded_key:[B

.field private forEncryption:Z

.field private initialised:Z

.field private inputMessage:[B

.field private inputOff:I

.field private lfsrIV:B

.field private m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field private nBits:I

.field private final nRounds:I

.field private nSBox:I

.field private nb_its:I

.field private next_mask:[B

.field private npub:[B

.field private final outputMessage:[B

.field private final parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

.field private previous_mask:[B

.field private final previous_outputMessage:[B

.field private final sBoxLayer:[B

.field private tag:[B

.field private final tag_buffer:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;)V
    .locals 5
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_KEYBYTES:B

    .line 56
    const/16 v1, 0xc

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_NPUBBYTES:B

    .line 68
    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 69
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    .line 75
    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    .line 94
    const/16 v1, 0x12

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    .line 99
    const/16 v2, 0x19

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    .line 103
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    packed-switch v3, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter settings for Elephant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_0
    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 125
    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    .line 126
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 127
    const-string v0, "Elephant 200 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 128
    goto :goto_0

    .line 115
    :pswitch_1
    const/16 v0, 0x16

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 116
    const/16 v1, 0xb0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    .line 117
    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    .line 118
    const/16 v0, 0x5a

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    .line 119
    const/16 v0, 0x45

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    .line 120
    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 121
    const-string v0, "Elephant 176 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 122
    goto :goto_0

    .line 106
    :pswitch_2
    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 107
    const/16 v1, 0xa0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    .line 108
    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    .line 109
    const/16 v0, 0x50

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    .line 110
    const/16 v0, 0x75

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    .line 111
    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 112
    const-string v0, "Elephant 160 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 113
    nop

    .line 132
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    .line 133
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    .line 134
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    .line 135
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    .line 136
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    .line 137
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    .line 138
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    .line 139
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    .line 141
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    .line 142
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        -0x12t
        -0x13t
        -0x15t
        -0x20t
        -0x1et
        -0x1ft
        -0x1ct
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0x1bt
        -0x17t
        -0x14t
        -0x1dt
        -0x1at
        -0x22t
        -0x23t
        -0x25t
        -0x30t
        -0x2et
        -0x2ft
        -0x2ct
        -0x21t
        -0x29t
        -0x26t
        -0x28t
        -0x2bt
        -0x27t
        -0x24t
        -0x2dt
        -0x2at
        -0x42t
        -0x43t
        -0x45t
        -0x50t
        -0x4et
        -0x4ft
        -0x4ct
        -0x41t
        -0x49t
        -0x46t
        -0x48t
        -0x4bt
        -0x47t
        -0x44t
        -0x4dt
        -0x4at
        0xet
        0xdt
        0xbt
        0x0t
        0x2t
        0x1t
        0x4t
        0xft
        0x7t
        0xat
        0x8t
        0x5t
        0x9t
        0xct
        0x3t
        0x6t
        0x2et
        0x2dt
        0x2bt
        0x20t
        0x22t
        0x21t
        0x24t
        0x2ft
        0x27t
        0x2at
        0x28t
        0x25t
        0x29t
        0x2ct
        0x23t
        0x26t
        0x1et
        0x1dt
        0x1bt
        0x10t
        0x12t
        0x11t
        0x14t
        0x1ft
        0x17t
        0x1at
        0x18t
        0x15t
        0x19t
        0x1ct
        0x13t
        0x16t
        0x4et
        0x4dt
        0x4bt
        0x40t
        0x42t
        0x41t
        0x44t
        0x4ft
        0x47t
        0x4at
        0x48t
        0x45t
        0x49t
        0x4ct
        0x43t
        0x46t
        -0x2t
        -0x3t
        -0x5t
        -0x10t
        -0xet
        -0xft
        -0xct
        -0x1t
        -0x9t
        -0x6t
        -0x8t
        -0xbt
        -0x7t
        -0x4t
        -0xdt
        -0xat
        0x7et
        0x7dt
        0x7bt
        0x70t
        0x72t
        0x71t
        0x74t
        0x7ft
        0x77t
        0x7at
        0x78t
        0x75t
        0x79t
        0x7ct
        0x73t
        0x76t
        -0x52t
        -0x53t
        -0x55t
        -0x60t
        -0x5et
        -0x5ft
        -0x5ct
        -0x51t
        -0x59t
        -0x56t
        -0x58t
        -0x5bt
        -0x57t
        -0x54t
        -0x5dt
        -0x5at
        -0x72t
        -0x73t
        -0x75t
        -0x80t
        -0x7et
        -0x7ft
        -0x7ct
        -0x71t
        -0x79t
        -0x76t
        -0x78t
        -0x7bt
        -0x77t
        -0x74t
        -0x7dt
        -0x7at
        0x5et
        0x5dt
        0x5bt
        0x50t
        0x52t
        0x51t
        0x54t
        0x5ft
        0x57t
        0x5at
        0x58t
        0x55t
        0x59t
        0x5ct
        0x53t
        0x56t
        -0x62t
        -0x63t
        -0x65t
        -0x70t
        -0x6et
        -0x6ft
        -0x6ct
        -0x61t
        -0x69t
        -0x66t
        -0x68t
        -0x6bt
        -0x67t
        -0x64t
        -0x6dt
        -0x6at
        -0x32t
        -0x33t
        -0x35t
        -0x40t
        -0x3et
        -0x3ft
        -0x3ct
        -0x31t
        -0x39t
        -0x36t
        -0x38t
        -0x3bt
        -0x37t
        -0x34t
        -0x3dt
        -0x3at
        0x3et
        0x3dt
        0x3bt
        0x30t
        0x32t
        0x31t
        0x34t
        0x3ft
        0x37t
        0x3at
        0x38t
        0x35t
        0x39t
        0x3ct
        0x33t
        0x36t
        0x6et
        0x6dt
        0x6bt
        0x60t
        0x62t
        0x61t
        0x64t
        0x6ft
        0x67t
        0x6at
        0x68t
        0x65t
        0x69t
        0x6ct
        0x63t
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        -0x7et
        -0x76t
        0x0t
        -0x75t
        0x1t
        -0x7ft
        0x9t
        -0x76t
        -0x78t
        0x9t
        0xat
        -0x75t
        -0x75t
        -0x77t
        0x3t
        0x2t
        -0x80t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x1
        0x6
        0x4
        0x3
        0x4
        0x4
        0x6
        0x7
        0x4
        0x3
        0x2
        0x3
        0x1
        0x7
        0x1
        0x5
        0x7
        0x5
        0x0
        0x2
        0x2
        0x5
        0x0
        0x6
    .end array-data
.end method

.method private KeccakP200Round([BI)V
    .locals 8
    .param p1, "state"    # [B
    .param p2, "indexRound"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "indexRound"
        }
    .end annotation

    .line 209
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 211
    .local v0, "tempA":[B
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 213
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 215
    aget-byte v4, v0, v1

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "y":I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 220
    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v4, v1, 0x1

    rem-int/2addr v4, v2

    aget-byte v4, v0, v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v4

    add-int/lit8 v5, v1, 0x4

    rem-int/2addr v5, v2

    aget-byte v5, v0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 222
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_4

    .line 224
    const/4 v3, 0x0

    .restart local v3    # "y":I
    :goto_4
    if-ge v3, v2, :cond_3

    .line 226
    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    aget-byte v5, p1, v4

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 222
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 230
    .end local v3    # "y":I
    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_6

    .line 232
    const/4 v3, 0x0

    .restart local v3    # "y":I
    :goto_6
    if-ge v3, v2, :cond_5

    .line 234
    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v5

    aput-byte v5, v0, v4

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 230
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 238
    .end local v3    # "y":I
    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_8

    .line 240
    const/4 v3, 0x0

    .restart local v3    # "y":I
    :goto_8
    if-ge v3, v2, :cond_7

    .line 242
    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v3, 0x3

    add-int/2addr v4, v5

    rem-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, v0, v5

    aput-byte v5, p1, v4

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 238
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 246
    .end local v3    # "y":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "y":I
    :goto_9
    if-ge v3, v2, :cond_b

    .line 248
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_9

    .line 250
    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    aget-byte v4, p1, v4

    add-int/lit8 v5, v1, 0x1

    rem-int/2addr v5, v2

    invoke-direct {p0, v5, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    not-int v5, v5

    add-int/lit8 v6, v1, 0x2

    rem-int/2addr v6, v2

    invoke-direct {p0, v6, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 252
    :cond_9
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_a

    .line 254
    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    aget-byte v5, v0, v1

    aput-byte v5, p1, v4

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 246
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 258
    :cond_b
    const/4 v2, 0x0

    aget-byte v4, p1, v2

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    aget-byte v5, v5, p2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 259
    return-void
.end method

.method private ROL8(BI)B
    .locals 3
    .param p1, "a"    # B
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

    .line 198
    if-eqz p2, :cond_0

    and-int/lit16 v0, p1, 0xff

    shl-int/2addr v0, p2

    and-int/lit16 v1, p1, 0xff

    rsub-int/lit8 v2, p2, 0x8

    ushr-int/2addr v1, v2

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    int-to-byte v0, v0

    return v0
.end method

.method private checkAad()V
    .locals 3

    .line 560
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 571
    :pswitch_0
    return-void

    .line 563
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private get_c_block([B[BIII)V
    .locals 5
    .param p1, "output"    # [B
    .param p2, "c"    # [B
    .param p3, "cOff"    # I
    .param p4, "clen"    # I
    .param p5, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "c",
            "cOff",
            "clen",
            "i"
        }
    .end annotation

    .line 294
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v0, v0, p5

    .line 296
    .local v0, "block_offset":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p4, :cond_0

    .line 298
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, v2, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 299
    aput-byte v1, p1, v2

    .line 300
    return-void

    .line 302
    :cond_0
    sub-int v3, p4, v0

    .line 304
    .local v3, "r_clen":I
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-gt v4, v3, :cond_1

    .line 306
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p2, p3, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 310
    :cond_1
    if-lez v3, :cond_2

    .line 312
    invoke-static {p2, p3, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    :cond_2
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, v3, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 315
    aput-byte v1, p1, v3

    .line 317
    :goto_0
    return-void
.end method

.method private index(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 203
    mul-int/lit8 v0, p2, 0x5

    add-int/2addr v0, p1

    return v0
.end method

.method private lfsr_step([B[B)V
    .locals 7
    .param p1, "output"    # [B
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "input"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v2, p2, v3

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v2

    const/4 v5, 0x2

    aget-byte v5, p2, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v5

    xor-int/2addr v2, v5

    aget-byte v1, p2, v1

    shl-int/2addr v1, v4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 273
    :pswitch_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v1, p2, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    const/16 v2, 0x13

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 274
    goto :goto_0

    .line 269
    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v5, p2, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v2

    aget-byte v6, p2, v3

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v5

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 271
    nop

    .line 279
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    invoke-static {p2, v4, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private permutation([B)V
    .locals 11
    .param p1, "state"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 183
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v0, v1, :cond_5

    .line 185
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakP200Round([BI)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    :pswitch_1
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    .line 151
    .local v0, "IV":B
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    new-array v1, v1, [B

    .line 152
    .local v1, "tmp":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v2, v3, :cond_4

    .line 155
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    xor-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 156
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v5, p1, v4

    and-int/lit8 v6, v0, 0x1

    shl-int/lit8 v6, v6, 0x7

    and-int/lit8 v7, v0, 0x2

    shl-int/lit8 v7, v7, 0x5

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x4

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x8

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x10

    ushr-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x20

    ushr-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x40

    ushr-int/lit8 v7, v7, 0x5

    or-int/2addr v6, v7

    and-int/lit16 v7, v0, 0x80

    ushr-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 158
    shl-int/lit8 v4, v0, 0x1

    and-int/lit8 v5, v0, 0x40

    ushr-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v0, 0x20

    ushr-int/lit8 v6, v6, 0x5

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v0, v4

    .line 160
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v4, v5, :cond_0

    .line 162
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, p1, v4

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 166
    .end local v4    # "j":I
    :cond_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 167
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v4, v5, :cond_3

    .line 169
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    const/16 v6, 0x8

    if-ge v5, v6, :cond_2

    .line 171
    shl-int/lit8 v6, v4, 0x3

    add-int/2addr v6, v5

    .line 172
    .local v6, "PermutedBitNo":I
    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_1

    .line 174
    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    mul-int v7, v7, v6

    shr-int/lit8 v7, v7, 0x2

    iget v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    add-int/lit8 v8, v8, -0x1

    rem-int v6, v7, v8

    .line 176
    :cond_1
    ushr-int/lit8 v7, v6, 0x3

    aget-byte v8, v1, v7

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    and-int/lit8 v9, v9, 0x1

    and-int/lit8 v10, v6, 0x7

    shl-int/2addr v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 167
    .end local v5    # "k":I
    .end local v6    # "PermutedBitNo":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 179
    .end local v4    # "j":I
    :cond_3
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    invoke-static {v1, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 181
    .end local v2    # "i":I
    :cond_4
    nop

    .line 189
    .end local v0    # "IV":B
    .end local v1    # "tmp":[B
    :cond_5
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processAADBytes([B)V
    .locals 7
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->checkAad()V

    .line 577
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    .line 580
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    .line 581
    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 583
    :cond_0
    const/4 v0, 0x0

    .line 584
    .local v0, "len":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0xc

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 609
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :pswitch_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    add-int/lit8 v0, v0, 0xc

    .line 590
    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 591
    goto :goto_0

    .line 613
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be reused for encryption"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :pswitch_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 601
    :pswitch_4
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    if-ne v1, v4, :cond_1

    .line 603
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 604
    aput-byte v3, p1, v2

    .line 605
    return-void

    .line 593
    :pswitch_5
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    add-int/lit8 v0, v0, 0xc

    .line 596
    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 597
    nop

    .line 615
    :cond_1
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v1, v0

    .line 616
    .local v1, "r_outlen":I
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    sub-int/2addr v4, v5

    .line 618
    .local v4, "r_adlen":I
    if-gt v1, v4, :cond_2

    .line 620
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    invoke-static {v2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    goto :goto_1

    .line 625
    :cond_2
    if-lez v4, :cond_3

    .line 627
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    invoke-static {v5, v6, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 630
    :cond_3
    add-int v5, v0, v4

    add-int v6, v0, v1

    invoke-static {p1, v5, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 631
    add-int v2, v0, v4

    aput-byte v3, p1, v2

    .line 632
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 635
    :sswitch_0
    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 636
    goto :goto_1

    .line 638
    :sswitch_1
    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 642
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private processBytes([B[BIIIIII)I
    .locals 15
    .param p1, "m"    # [B
    .param p2, "output"    # [B
    .param p3, "outOff"    # I
    .param p4, "nb_it"    # I
    .param p5, "nblocks_m"    # I
    .param p6, "nblocks_c"    # I
    .param p7, "mlen"    # I
    .param p8, "nblocks_ad"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "output",
            "outOff",
            "nb_it",
            "nblocks_m",
            "nblocks_c",
            "mlen",
            "nblocks_ad"
        }
    .end annotation

    .line 647
    move-object/from16 v6, p1

    move/from16 v7, p5

    const/4 v1, 0x0

    .line 648
    .local v1, "rv":I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    move v8, v2

    .local v8, "i":I
    :goto_0
    move/from16 v9, p4

    if-ge v8, v9, :cond_6

    .line 651
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsr_step([B[B)V

    .line 652
    const/4 v10, 0x0

    if-ge v8, v7, :cond_2

    .line 655
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/16 v4, 0xc

    invoke-static {v2, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v2, v4, v3, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 657
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v2, v3, v10, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 658
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v2, v3, v10, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 659
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    .line 660
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v2, v3, v10, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 661
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v2, v3, v10, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 662
    add-int/lit8 v2, v7, -0x1

    if-ne v8, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v2, v2, v8

    sub-int v2, p7, v2

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 663
    .local v2, "r_size":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v3, v6, v10, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 664
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-static {v3, v10, v11, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v3, :cond_1

    .line 667
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    invoke-static {v3, v10, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 671
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    invoke-static {v6, v10, v3, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    :goto_2
    add-int/2addr v1, v2

    move v13, v1

    goto :goto_3

    .line 652
    .end local v2    # "r_size":I
    :cond_2
    move-object/from16 v11, p2

    move/from16 v12, p3

    move v13, v1

    .line 675
    .end local v1    # "rv":I
    .local v13, "rv":I
    :goto_3
    if-lez v8, :cond_3

    move/from16 v14, p6

    if-gt v8, v14, :cond_4

    .line 678
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    const/4 v3, 0x0

    add-int/lit8 v5, v8, -0x1

    move-object v0, p0

    move/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->get_c_block([B[BIII)V

    .line 679
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v10, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 680
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v10, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 681
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    .line 682
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v10, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 683
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v10, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 684
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v10, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    goto :goto_4

    .line 675
    :cond_3
    move/from16 v14, p6

    .line 687
    :cond_4
    :goto_4
    add-int/lit8 v1, v8, 0x1

    move/from16 v2, p8

    if-ge v1, v2, :cond_5

    .line 689
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    .line 690
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v3, v10, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 691
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    .line 692
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v3, v10, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 693
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v3, v10, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 697
    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    .line 698
    .local v1, "temp":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    .line 699
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    .line 700
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    .line 701
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v3, v10, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    .end local v1    # "temp":[B
    add-int/lit8 v8, v8, 0x1

    move v1, v13

    goto/16 :goto_0

    .end local v13    # "rv":I
    .local v1, "rv":I
    :cond_6
    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v14, p6

    move/from16 v2, p8

    .line 703
    .end local v8    # "i":I
    return v1
.end method

.method private reset(Z)V
    .locals 2
    .param p1, "clearMac"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearMac"
        }
    .end annotation

    .line 532
    if-eqz p1, :cond_0

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 537
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 538
    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 539
    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 541
    return-void
.end method

.method private rotl(B)B
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 193
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x1

    and-int/lit16 v1, p1, 0xff

    ushr-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private xor_block([B[BII)V
    .locals 3
    .param p1, "state"    # [B
    .param p2, "block"    # [B
    .param p3, "bOff"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "block",
            "bOff",
            "size"
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 286
    aget-byte v1, p1, v0

    add-int v2, v0, p3

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 16
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-boolean v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    if-eqz v1, :cond_8

    .line 436
    iget v9, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 437
    .local v9, "len":I
    iget-boolean v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int v1, v9, p2

    iget-byte v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v1, v3

    array-length v3, v2

    if-gt v1, v3, :cond_1

    :cond_0
    iget-boolean v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-nez v1, :cond_2

    add-int v1, v9, p2

    iget-byte v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v1, v3

    array-length v3, v2

    if-gt v1, v3, :cond_1

    goto :goto_0

    .line 440
    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer is too short"

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 443
    .local v10, "ad":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 447
    :sswitch_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    .line 450
    :goto_1
    iget v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    iget v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v1, v1, v3

    add-int/2addr v1, v9

    iget-boolean v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    iget-byte v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_2
    sub-int v7, v1, v3

    .line 451
    .local v7, "mlen":I
    array-length v12, v10

    .line 452
    .local v12, "adlen":I
    iget v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int v1, v7, v1

    add-int/lit8 v6, v1, 0x1

    .line 453
    .local v6, "nblocks_c":I
    iget v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    rem-int v1, v7, v1

    if-eqz v1, :cond_4

    move v5, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v6, -0x1

    move v5, v1

    .line 454
    .local v5, "nblocks_m":I
    :goto_3
    add-int/lit8 v1, v12, 0xc

    iget v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int/2addr v1, v3

    add-int/lit8 v8, v1, 0x1

    .line 455
    .local v8, "nblocks_ad":I
    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v3, v8, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 456
    .local v4, "nb_it":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    move/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)I

    move-result v1

    add-int v1, p2, v1

    .line 457
    .end local p2    # "outOff":I
    .local v1, "outOff":I
    iget-byte v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    new-array v3, v3, [B

    iput-object v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    .line 458
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v3, v13, v11, v14}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 459
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    .line 460
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v3, v13, v11, v14}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 461
    iget-boolean v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v3, :cond_5

    .line 463
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-byte v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    invoke-static {v3, v11, v13, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    array-length v13, v13

    invoke-static {v3, v11, v2, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iget-byte v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v7, v3

    goto :goto_5

    .line 469
    :cond_5
    iget v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iget-byte v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v3, v13

    iput v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 470
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-byte v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    if-ge v3, v13, :cond_7

    .line 472
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    aget-byte v13, v13, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v15, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v15, v3

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_6

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 474
    :cond_6
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v13, "Mac does not match"

    invoke-direct {v11, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 478
    .end local v3    # "i":I
    :cond_7
    :goto_5
    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    .line 479
    return v7

    .line 434
    .end local v1    # "outOff":I
    .end local v4    # "nb_it":I
    .end local v5    # "nblocks_m":I
    .end local v6    # "nblocks_c":I
    .end local v7    # "mlen":I
    .end local v8    # "nblocks_ad":I
    .end local v9    # "len":I
    .end local v10    # "ad":[B
    .end local v12    # "adlen":I
    .restart local p2    # "outOff":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " needs call init function before doFinal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 555
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    .line 550
    const/16 v0, 0xc

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    .line 545
    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

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

    .line 509
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 521
    :pswitch_0
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 515
    :pswitch_1
    return v1

    .line 519
    :pswitch_2
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v0, p1

    return v0

    .line 512
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    .line 491
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 503
    :pswitch_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v0, p1

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 497
    :pswitch_1
    return v1

    .line 501
    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v0, p1

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v0, v1

    return v0

    .line 494
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
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

    .line 323
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    .line 324
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_5

    .line 328
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 329
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    .line 330
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    array-length v1, v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 334
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_3

    .line 338
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 339
    .local v1, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    .line 340
    .local v2, "k":[B
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 345
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    .line 346
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    .line 348
    new-instance v3, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 349
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v7

    invoke-direct {v3, v4, v6, p2, v7}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 348
    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 350
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    .line 351
    if-eqz p1, :cond_0

    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    :goto_0
    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 352
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_1
    add-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    .line 353
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    .line 354
    return-void

    .line 342
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key must be 128 bits long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    .end local v1    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v2    # "k":[B
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " init parameters must include a key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires exactly 12 bytes of IV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init parameters must include an IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .locals 1
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 366
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len"
        }
    .end annotation

    .line 371
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 376
    return-void

    .line 373
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processByte(B[BI)I
    .locals 7
    .param p1, "input"    # B
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 382
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .end local p2    # "output":[B
    .end local p3    # "outOff":I
    .local v5, "output":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([BII[BI)I

    move-result p2

    return p2
.end method

.method public processBytes([BII[BI)I
    .locals 16
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
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
            "input",
            "inOff",
            "len",
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    add-int v1, v10, v11

    array-length v2, v9

    if-gt v1, v2, :cond_4

    .line 393
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 396
    .local v12, "ad":[B
    iget v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v1, v11

    iget-boolean v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-byte v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_0
    sub-int/2addr v1, v2

    iget v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-lt v1, v2, :cond_3

    .line 398
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 402
    :sswitch_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    .line 405
    :goto_1
    iget v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v1, v11

    iget-boolean v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    iget-byte v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_2
    sub-int v7, v1, v2

    .line 406
    .local v7, "mlen":I
    array-length v14, v12

    .line 407
    .local v14, "adlen":I
    iget v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int v4, v7, v1

    .line 408
    .local v4, "nblocks_c":I
    iget v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    rem-int v1, v7, v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v4, -0x1

    :goto_3
    const/4 v2, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 409
    .local v5, "nblocks_m":I
    add-int/lit8 v1, v14, 0xc

    iget v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int/2addr v1, v3

    add-int/lit8 v8, v1, 0x1

    .line 410
    .local v8, "nblocks_ad":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v1, v1, v2

    new-array v1, v1, [B

    .line 411
    .local v1, "tempInput":[B
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {v2, v13, v1, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    array-length v2, v1

    iget v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    sub-int v15, v2, v3

    .line 413
    .local v15, "templen":I
    iget v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    array-length v3, v1

    iget v6, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    sub-int/2addr v3, v6

    invoke-static {v9, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    move v6, v4

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)I

    .line 415
    sub-int v2, v11, v15

    iput v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 416
    add-int v2, v10, v15

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v6, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {v9, v2, v3, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iget v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    .line 418
    iget v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v2, v2, v4

    return v2

    .line 422
    .end local v1    # "tempInput":[B
    .end local v4    # "nblocks_c":I
    .end local v5    # "nblocks_m":I
    .end local v7    # "mlen":I
    .end local v8    # "nblocks_ad":I
    .end local v14    # "adlen":I
    .end local v15    # "templen":I
    :cond_3
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v2, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {v9, v10, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v1, v11

    iput v1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 424
    return v13

    .line 391
    .end local v12    # "ad":[B
    :cond_4
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    .line 527
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    .line 528
    return-void
.end method
