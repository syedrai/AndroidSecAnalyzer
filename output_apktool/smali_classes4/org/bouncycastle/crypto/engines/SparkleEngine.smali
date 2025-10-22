.class public Lorg/bouncycastle/crypto/engines/SparkleEngine;
.super Ljava/lang/Object;
.source "SparkleEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/SparkleEngine$State;,
        Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;
    }
.end annotation


# static fields
.field private static final RCON:[I


# instance fields
.field private final CAP_MASK:I

.field private final KEY_BYTES:I

.field private final KEY_WORDS:I

.field private final RATE_BYTES:I

.field private final RATE_WORDS:I

.field private final SCHWAEMM_KEY_LEN:I

.field private final SCHWAEMM_NONCE_LEN:I

.field private final SPARKLE_STEPS_BIG:I

.field private final SPARKLE_STEPS_SLIM:I

.field private final STATE_WORDS:I

.field private final TAG_BYTES:I

.field private final TAG_WORDS:I

.field private final _A0:I

.field private final _A1:I

.field private final _M2:I

.field private final _M3:I

.field private algorithmName:Ljava/lang/String;

.field private encrypted:Z

.field private initialAssociatedText:[B

.field private final k:[I

.field private final m_buf:[B

.field private m_bufPos:I

.field private final m_bufferSizeDecrypt:I

.field private m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field private final npub:[I

.field private final state:[I

.field private tag:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    return-void

    :array_0
    .array-data 4
        -0x481eae9e
        -0x408ea780
        0x38b4da56
        0x324e7738
        -0x44ee7a15
        0x4f7c7b57
        -0x30405e38
        -0x3d4cd6c3
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;)V
    .locals 7
    .param p1, "sparkleParameters"    # Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sparkleParameters"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 85
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;->ordinal()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0x100

    const/4 v3, 0x7

    const/16 v4, 0x80

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid definition of SCHWAEMM instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_0
    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    .line 119
    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    .line 120
    const/16 v0, 0x100

    .line 121
    .local v0, "SCHWAEMM_TAG_LEN":I
    const/16 v1, 0x200

    .line 122
    .local v1, "SPARKLE_STATE":I
    const/16 v2, 0x100

    .line 123
    .local v2, "SPARKLE_CAPACITY":I
    const/16 v3, 0x8

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    .line 124
    const/16 v3, 0xc

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    .line 125
    const-string v3, "SCHWAEMM256-256"

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    .line 126
    goto :goto_0

    .line 108
    .end local v0    # "SCHWAEMM_TAG_LEN":I
    .end local v1    # "SPARKLE_STATE":I
    .end local v2    # "SPARKLE_CAPACITY":I
    :pswitch_1
    const/16 v0, 0xc0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    .line 109
    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    .line 110
    const/16 v0, 0xc0

    .line 111
    .restart local v0    # "SCHWAEMM_TAG_LEN":I
    const/16 v2, 0x180

    .line 112
    .local v2, "SPARKLE_STATE":I
    const/16 v4, 0xc0

    .line 113
    .local v4, "SPARKLE_CAPACITY":I
    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    .line 114
    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    .line 115
    const-string v1, "SCHWAEMM192-192"

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    .line 116
    move v1, v2

    move v2, v4

    goto :goto_0

    .line 98
    .end local v0    # "SCHWAEMM_TAG_LEN":I
    .end local v2    # "SPARKLE_STATE":I
    .end local v4    # "SPARKLE_CAPACITY":I
    :pswitch_2
    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    .line 99
    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    .line 100
    const/16 v0, 0x80

    .line 101
    .restart local v0    # "SCHWAEMM_TAG_LEN":I
    const/16 v2, 0x180

    .line 102
    .restart local v2    # "SPARKLE_STATE":I
    const/16 v4, 0x80

    .line 103
    .restart local v4    # "SPARKLE_CAPACITY":I
    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    .line 104
    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    .line 105
    const-string v1, "SCHWAEMM256-128"

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    .line 106
    move v1, v2

    move v2, v4

    goto :goto_0

    .line 88
    .end local v0    # "SCHWAEMM_TAG_LEN":I
    .end local v2    # "SPARKLE_STATE":I
    .end local v4    # "SPARKLE_CAPACITY":I
    :pswitch_3
    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    .line 89
    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    .line 90
    const/16 v0, 0x80

    .line 91
    .restart local v0    # "SCHWAEMM_TAG_LEN":I
    const/16 v1, 0x100

    .line 92
    .restart local v1    # "SPARKLE_STATE":I
    const/16 v2, 0x80

    .line 93
    .local v2, "SPARKLE_CAPACITY":I
    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    .line 94
    const/16 v3, 0xa

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    .line 95
    const-string v3, "SCHWAEMM128-128"

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    .line 96
    nop

    .line 130
    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    ushr-int/lit8 v3, v3, 0x5

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    .line 131
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    ushr-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_BYTES:I

    .line 132
    ushr-int/lit8 v3, v0, 0x5

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_WORDS:I

    .line 133
    ushr-int/lit8 v3, v0, 0x3

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    .line 134
    ushr-int/lit8 v3, v1, 0x5

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    .line 135
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    ushr-int/lit8 v3, v3, 0x5

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    .line 136
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    ushr-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    .line 137
    ushr-int/lit8 v3, v2, 0x6

    .line 138
    .local v3, "CAP_BRANS":I
    ushr-int/lit8 v4, v2, 0x5

    .line 139
    .local v4, "CAP_WORDS":I
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    if-le v5, v4, :cond_0

    add-int/lit8 v5, v4, -0x1

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    :goto_1
    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    .line 140
    const/4 v5, 0x1

    shl-int v6, v5, v3

    shl-int/lit8 v6, v6, 0x18

    iput v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A0:I

    .line 141
    shl-int v6, v5, v3

    xor-int/2addr v6, v5

    shl-int/lit8 v6, v6, 0x18

    iput v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A1:I

    .line 142
    shl-int v6, v5, v3

    xor-int/lit8 v6, v6, 0x2

    shl-int/lit8 v6, v6, 0x18

    iput v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M2:I

    .line 143
    shl-int/2addr v5, v3

    xor-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x18

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M3:I

    .line 144
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    .line 145
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    .line 146
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    .line 148
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    .line 149
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    .line 153
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ELL(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 761
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, p0

    xor-int/2addr v0, v1

    return v0
.end method

.method private checkAAD()V
    .locals 3

    .line 537
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 551
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 541
    goto :goto_0

    .line 549
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :pswitch_3
    goto :goto_0

    .line 543
    :pswitch_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 544
    nop

    .line 553
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

.method private checkData()Z
    .locals 3

    .line 557
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 574
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :pswitch_0
    return v1

    .line 561
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V

    .line 562
    return v1

    .line 572
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :pswitch_3
    return v2

    .line 565
    :pswitch_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V

    .line 566
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V
    .locals 1
    .param p1, "nextState"    # Lorg/bouncycastle/crypto/engines/SparkleEngine$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextState"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 586
    :sswitch_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processFinalAAD()V

    .line 587
    nop

    .line 593
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 594
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 595
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private processBufferAAD([BI)V
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "bufOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "bufOff"
        }
    .end annotation

    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 601
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 603
    .local v1, "j":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v2, v2, v0

    .line 604
    .local v2, "s_i":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v3, v1

    .line 606
    .local v3, "s_j":I
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 607
    .local v4, "d_i":I
    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 609
    .local v5, "d_j":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v3, v4

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v9, v0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v0

    .line 610
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v2, v3

    xor-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v10, v1

    add-int/2addr v9, v10

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v1

    .line 599
    .end local v1    # "j":I
    .end local v2    # "s_i":I
    .end local v3    # "s_j":I
    .end local v4    # "d_i":I
    .end local v5    # "d_j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    .line 614
    return-void
.end method

.method private processBufferDecrypt([BI[BI)V
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "bufOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "bufOff",
            "output",
            "outOff"
        }
    .end annotation

    .line 620
    array-length v0, p3

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1

    .line 625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 627
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 629
    .local v1, "j":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v2, v2, v0

    .line 630
    .local v2, "s_i":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v3, v1

    .line 632
    .local v3, "s_j":I
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 633
    .local v4, "d_i":I
    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 635
    .local v5, "d_j":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v2, v3

    xor-int/2addr v7, v4

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v9, v0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v0

    .line 636
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v2, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v10, v1

    add-int/2addr v9, v10

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v1

    .line 638
    xor-int v6, v4, v2

    mul-int/lit8 v7, v0, 0x4

    add-int/2addr v7, p4

    invoke-static {v6, p3, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 639
    xor-int v6, v5, v3

    mul-int/lit8 v7, v1, 0x4

    add-int/2addr v7, p4

    invoke-static {v6, p3, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 625
    .end local v1    # "j":I
    .end local v2    # "s_i":I
    .end local v3    # "s_j":I
    .end local v4    # "d_i":I
    .end local v5    # "d_j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    .line 645
    return-void

    .line 622
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processBufferEncrypt([BI[BI)V
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "bufOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "bufOff",
            "output",
            "outOff"
        }
    .end annotation

    .line 651
    array-length v0, p3

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1

    .line 656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 658
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 660
    .local v1, "j":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v2, v2, v0

    .line 661
    .local v2, "s_i":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v3, v1

    .line 663
    .local v3, "s_j":I
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 664
    .local v4, "d_i":I
    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 666
    .local v5, "d_j":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v3, v4

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v9, v0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v0

    .line 667
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v2, v3

    xor-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v10, v1

    add-int/2addr v9, v10

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v1

    .line 669
    xor-int v6, v4, v2

    mul-int/lit8 v7, v0, 0x4

    add-int/2addr v7, p4

    invoke-static {v6, p3, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 670
    xor-int v6, v5, v3

    mul-int/lit8 v7, v1, 0x4

    add-int/2addr v7, p4

    invoke-static {v6, p3, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 656
    .end local v1    # "j":I
    .end local v2    # "s_i":I
    .end local v3    # "s_j":I
    .end local v4    # "d_i":I
    .end local v5    # "d_j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    .line 676
    return-void

    .line 653
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processFinalAAD()V
    .locals 11

    .line 681
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v0, v1, :cond_0

    .line 683
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A0:I

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 686
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 687
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v0, v1, :cond_1

    .line 689
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A1:I

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 697
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 699
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 701
    .local v1, "j":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v2, v2, v0

    .line 702
    .local v2, "s_i":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v3, v1

    .line 704
    .local v3, "s_j":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    mul-int/lit8 v5, v0, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 705
    .local v4, "d_i":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    mul-int/lit8 v6, v1, 0x4

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 707
    .local v5, "d_j":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v3, v4

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v9, v0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v0

    .line 708
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v2, v3

    xor-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v10, v1

    add-int/2addr v9, v10

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v1

    .line 697
    .end local v1    # "j":I
    .end local v2    # "s_i":I
    .end local v3    # "s_j":I
    .end local v4    # "d_i":I
    .end local v5    # "d_j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 711
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    .line 712
    return-void
.end method

.method private reset(Z)V
    .locals 5
    .param p1, "clearMac"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearMac"
        }
    .end annotation

    .line 716
    if-eqz p1, :cond_0

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    .line 721
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 722
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 723
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    .line 725
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 741
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :pswitch_0
    sget-object v1, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 734
    goto :goto_0

    .line 738
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 739
    return-void

    .line 729
    :pswitch_2
    nop

    .line 747
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    .line 753
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processAADBytes([BII)V

    .line 757
    :cond_1
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

.method private static sparkle_opt([II)V
    .locals 1
    .param p0, "state"    # [I
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "steps"
        }
    .end annotation

    .line 766
    array-length v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 770
    :sswitch_0
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16([II)V

    goto :goto_0

    .line 769
    :sswitch_1
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12([II)V

    goto :goto_0

    .line 768
    :sswitch_2
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt8([II)V

    .line 773
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V
    .locals 2
    .param p0, "friend"    # Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;
    .param p1, "state"    # [I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "friend",
            "state",
            "steps"
        }
    .end annotation

    .line 1043
    if-eqz p0, :cond_0

    .line 1048
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12([II)V

    .line 1049
    return-void

    .line 1045
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "This method is only for use by SparkleDigest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sparkle_opt12([II)V
    .locals 34
    .param p0, "state"    # [I
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "steps"
        }
    .end annotation

    .line 888
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 889
    .local v1, "s00":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 890
    .local v3, "s01":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 891
    .local v5, "s02":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 892
    .local v7, "s03":I
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 893
    .local v9, "s04":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 894
    .local v11, "s05":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .line 895
    .local v13, "s06":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .line 896
    .local v15, "s07":I
    const/16 v16, 0x8

    aget v17, p0, v16

    .line 897
    .local v17, "s08":I
    const/16 v18, 0x9

    aget v19, p0, v18

    .line 898
    .local v19, "s09":I
    const/16 v20, 0xa

    aget v21, p0, v20

    .line 899
    .local v21, "s10":I
    const/16 v22, 0xb

    aget v23, p0, v22

    .line 901
    .local v23, "s11":I
    const/16 v24, 0x0

    move/from16 v0, v19

    move/from16 v2, v23

    move/from16 v4, v24

    const/16 v19, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x2

    .end local v19    # "s09":I
    .end local v23    # "s11":I
    .local v0, "s09":I
    .local v2, "s11":I
    .local v4, "step":I
    :goto_0
    move/from16 v6, p1

    const/16 v25, 0x3

    if-ge v4, v6, :cond_0

    .line 905
    sget-object v26, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v27, v4, 0x7

    aget v26, v26, v27

    xor-int v3, v3, v26

    .line 906
    xor-int/2addr v7, v4

    .line 910
    sget-object v26, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v26, v26, v19

    .line 911
    .local v26, "rc":I
    const/16 v27, 0x4

    const/16 v8, 0x1f

    invoke-static {v3, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v28

    add-int v1, v1, v28

    .line 912
    const/16 v28, 0x5

    const/16 v10, 0x18

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    xor-int v3, v3, v29

    .line 913
    xor-int v1, v1, v26

    .line 914
    const/16 v29, 0x6

    const/16 v12, 0x11

    invoke-static {v3, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v30

    add-int v1, v1, v30

    .line 915
    invoke-static {v1, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v30

    xor-int v3, v3, v30

    .line 916
    xor-int v1, v1, v26

    .line 917
    add-int/2addr v1, v3

    .line 918
    invoke-static {v1, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v30

    xor-int v3, v3, v30

    .line 919
    xor-int v1, v1, v26

    .line 920
    invoke-static {v3, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v30

    add-int v1, v1, v30

    .line 921
    const/16 v30, 0x7

    const/16 v14, 0x10

    invoke-static {v1, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v3, v3, v31

    .line 922
    xor-int v1, v1, v26

    .line 925
    .end local v26    # "rc":I
    sget-object v26, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v26, v26, v23

    .line 926
    .restart local v26    # "rc":I
    invoke-static {v7, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v5, v5, v31

    .line 927
    invoke-static {v5, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v7, v7, v31

    .line 928
    xor-int v5, v5, v26

    .line 929
    invoke-static {v7, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v5, v5, v31

    .line 930
    invoke-static {v5, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v7, v7, v31

    .line 931
    xor-int v5, v5, v26

    .line 932
    add-int/2addr v5, v7

    .line 933
    invoke-static {v5, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v7, v7, v31

    .line 934
    xor-int v5, v5, v26

    .line 935
    invoke-static {v7, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v5, v5, v31

    .line 936
    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v7, v7, v31

    .line 937
    xor-int v5, v5, v26

    .line 940
    .end local v26    # "rc":I
    sget-object v26, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v26, v26, v24

    .line 941
    .restart local v26    # "rc":I
    invoke-static {v11, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v9, v9, v31

    .line 942
    invoke-static {v9, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v11, v11, v31

    .line 943
    xor-int v9, v9, v26

    .line 944
    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v9, v9, v31

    .line 945
    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v11, v11, v31

    .line 946
    xor-int v9, v9, v26

    .line 947
    add-int/2addr v9, v11

    .line 948
    invoke-static {v9, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v11, v11, v31

    .line 949
    xor-int v9, v9, v26

    .line 950
    invoke-static {v11, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v9, v9, v31

    .line 951
    invoke-static {v9, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v11, v11, v31

    .line 952
    xor-int v9, v9, v26

    .line 955
    .end local v26    # "rc":I
    sget-object v26, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v26, v26, v25

    .line 956
    .restart local v26    # "rc":I
    invoke-static {v15, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v13, v13, v31

    .line 957
    invoke-static {v13, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v15, v15, v31

    .line 958
    xor-int v13, v13, v26

    .line 959
    invoke-static {v15, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v13, v13, v31

    .line 960
    invoke-static {v13, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v15, v15, v31

    .line 961
    xor-int v13, v13, v26

    .line 962
    add-int/2addr v13, v15

    .line 963
    invoke-static {v13, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v15, v15, v31

    .line 964
    xor-int v13, v13, v26

    .line 965
    invoke-static {v15, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v13, v13, v31

    .line 966
    invoke-static {v13, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v15, v15, v31

    .line 967
    xor-int v13, v13, v26

    .line 970
    .end local v26    # "rc":I
    sget-object v26, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v26, v26, v27

    .line 971
    .restart local v26    # "rc":I
    invoke-static {v0, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v14, v17, v31

    .line 972
    .end local v17    # "s08":I
    .local v14, "s08":I
    invoke-static {v14, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    .line 973
    xor-int v14, v14, v26

    .line 974
    invoke-static {v0, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v14, v14, v17

    .line 975
    invoke-static {v14, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    .line 976
    xor-int v14, v14, v26

    .line 977
    add-int/2addr v14, v0

    .line 978
    invoke-static {v14, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    .line 979
    xor-int v14, v14, v26

    .line 980
    invoke-static {v0, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v14, v14, v17

    .line 981
    const/16 v12, 0x10

    invoke-static {v14, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    .line 982
    xor-int v12, v14, v26

    .line 985
    .end local v14    # "s08":I
    .end local v26    # "rc":I
    .local v12, "s08":I
    sget-object v14, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v14, v14, v28

    .line 986
    .local v14, "rc":I
    invoke-static {v2, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v8, v21, v17

    .line 987
    .end local v21    # "s10":I
    .local v8, "s10":I
    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v2, v2, v17

    .line 988
    xor-int/2addr v8, v14

    .line 989
    const/16 v10, 0x11

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v8, v8, v17

    .line 990
    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v2, v10

    .line 991
    xor-int/2addr v8, v14

    .line 992
    add-int/2addr v8, v2

    .line 993
    const/16 v10, 0x1f

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v2, v10

    .line 994
    xor-int/2addr v8, v14

    .line 995
    const/16 v10, 0x18

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v8, v10

    .line 996
    const/16 v10, 0x10

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v2, v10

    .line 997
    xor-int/2addr v8, v14

    .line 1002
    .end local v14    # "rc":I
    xor-int v10, v1, v5

    xor-int/2addr v10, v9

    invoke-static {v10}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v10

    .line 1003
    .local v10, "t024":I
    xor-int v14, v3, v7

    xor-int/2addr v14, v11

    invoke-static {v14}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v14

    .line 1005
    .local v14, "t135":I
    xor-int v17, v1, v13

    .line 1006
    .local v17, "u00":I
    xor-int v21, v3, v15

    .line 1007
    .local v21, "u01":I
    xor-int v26, v5, v12

    .line 1008
    .local v26, "u02":I
    xor-int v31, v7, v0

    .line 1009
    .local v31, "u03":I
    xor-int v32, v9, v8

    .line 1010
    .local v32, "u04":I
    xor-int v33, v11, v2

    .line 1012
    .local v33, "u05":I
    move v13, v1

    .line 1013
    move v15, v3

    .line 1014
    move v12, v5

    .line 1015
    move v0, v7

    .line 1016
    move v8, v9

    .line 1017
    move v2, v11

    .line 1019
    xor-int v1, v26, v14

    .line 1020
    xor-int v3, v31, v10

    .line 1021
    xor-int v5, v32, v14

    .line 1022
    xor-int v7, v33, v10

    .line 1023
    xor-int v9, v17, v14

    .line 1024
    xor-int v11, v21, v10

    .line 901
    .end local v10    # "t024":I
    .end local v14    # "t135":I
    .end local v17    # "u00":I
    .end local v21    # "u01":I
    .end local v26    # "u02":I
    .end local v31    # "u03":I
    .end local v32    # "u04":I
    .end local v33    # "u05":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v21, v8

    move/from16 v17, v12

    const/4 v6, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x5

    const/4 v12, 0x6

    const/4 v14, 0x7

    goto/16 :goto_0

    .end local v8    # "s10":I
    .end local v12    # "s08":I
    .local v17, "s08":I
    .local v21, "s10":I
    :cond_0
    const/16 v27, 0x4

    const/16 v28, 0x5

    const/16 v29, 0x6

    const/16 v30, 0x7

    .line 1027
    .end local v4    # "step":I
    aput v1, p0, v19

    .line 1028
    aput v3, p0, v23

    .line 1029
    aput v5, p0, v24

    .line 1030
    aput v7, p0, v25

    .line 1031
    aput v9, p0, v27

    .line 1032
    aput v11, p0, v28

    .line 1033
    aput v13, p0, v29

    .line 1034
    aput v15, p0, v30

    .line 1035
    aput v17, p0, v16

    .line 1036
    aput v0, p0, v18

    .line 1037
    aput v21, p0, v20

    .line 1038
    aput v2, p0, v22

    .line 1039
    return-void
.end method

.method public static sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V
    .locals 2
    .param p0, "friend"    # Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;
    .param p1, "state"    # [I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "friend",
            "state",
            "steps"
        }
    .end annotation

    .line 1254
    if-eqz p0, :cond_0

    .line 1259
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16([II)V

    .line 1260
    return-void

    .line 1256
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "This method is only for use by SparkleDigest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sparkle_opt16([II)V
    .locals 44
    .param p0, "state"    # [I
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "steps"
        }
    .end annotation

    .line 1055
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 1056
    .local v1, "s00":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 1057
    .local v3, "s01":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 1058
    .local v5, "s02":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 1059
    .local v7, "s03":I
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 1060
    .local v9, "s04":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 1061
    .local v11, "s05":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .line 1062
    .local v13, "s06":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .line 1063
    .local v15, "s07":I
    const/16 v16, 0x8

    aget v17, p0, v16

    .line 1064
    .local v17, "s08":I
    const/16 v18, 0x9

    aget v19, p0, v18

    .line 1065
    .local v19, "s09":I
    const/16 v20, 0xa

    aget v21, p0, v20

    .line 1066
    .local v21, "s10":I
    const/16 v22, 0xb

    aget v23, p0, v22

    .line 1067
    .local v23, "s11":I
    const/16 v24, 0xc

    aget v25, p0, v24

    .line 1068
    .local v25, "s12":I
    const/16 v26, 0xd

    aget v27, p0, v26

    .line 1069
    .local v27, "s13":I
    const/16 v28, 0xe

    aget v29, p0, v28

    .line 1070
    .local v29, "s14":I
    const/16 v30, 0xf

    aget v31, p0, v30

    .line 1072
    .local v31, "s15":I
    const/16 v32, 0x0

    move/from16 v0, v19

    move/from16 v2, v23

    move/from16 v4, v27

    move/from16 v6, v31

    move/from16 v8, v32

    const/16 v19, 0x0

    const/16 v23, 0x1

    const/16 v27, 0x2

    const/16 v31, 0x3

    const/16 v32, 0x4

    .end local v19    # "s09":I
    .end local v23    # "s11":I
    .end local v27    # "s13":I
    .end local v31    # "s15":I
    .local v0, "s09":I
    .local v2, "s11":I
    .local v4, "s13":I
    .local v6, "s15":I
    .local v8, "step":I
    :goto_0
    move/from16 v10, p1

    const/16 v33, 0x5

    if-ge v8, v10, :cond_0

    .line 1076
    sget-object v34, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v35, v8, 0x7

    aget v34, v34, v35

    xor-int v3, v3, v34

    .line 1077
    xor-int/2addr v7, v8

    .line 1081
    sget-object v34, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v34, v34, v19

    .line 1082
    .local v34, "rc":I
    const/16 v35, 0x6

    const/16 v12, 0x1f

    invoke-static {v3, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v36

    add-int v1, v1, v36

    .line 1083
    const/16 v36, 0x7

    const/16 v14, 0x18

    invoke-static {v1, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v37

    xor-int v3, v3, v37

    .line 1084
    xor-int v1, v1, v34

    .line 1085
    const/16 v14, 0x11

    invoke-static {v3, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v1, v1, v38

    .line 1086
    invoke-static {v1, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    xor-int v3, v3, v38

    .line 1087
    xor-int v1, v1, v34

    .line 1088
    add-int/2addr v1, v3

    .line 1089
    invoke-static {v1, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    xor-int v3, v3, v38

    .line 1090
    xor-int v1, v1, v34

    .line 1091
    const/16 v14, 0x18

    invoke-static {v3, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    add-int v1, v1, v39

    .line 1092
    const/16 v14, 0x10

    invoke-static {v1, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    xor-int v3, v3, v39

    .line 1093
    xor-int v1, v1, v34

    .line 1096
    .end local v34    # "rc":I
    sget-object v34, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v34, v34, v23

    .line 1097
    .restart local v34    # "rc":I
    invoke-static {v7, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    add-int v5, v5, v39

    .line 1098
    const/16 v14, 0x18

    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v7, v7, v40

    .line 1099
    xor-int v5, v5, v34

    .line 1100
    const/16 v14, 0x11

    invoke-static {v7, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v5, v5, v38

    .line 1101
    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v7, v7, v40

    .line 1102
    xor-int v5, v5, v34

    .line 1103
    add-int/2addr v5, v7

    .line 1104
    invoke-static {v5, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v14

    xor-int/2addr v7, v14

    .line 1105
    xor-int v5, v5, v34

    .line 1106
    const/16 v14, 0x18

    invoke-static {v7, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    add-int v5, v5, v40

    .line 1107
    const/16 v14, 0x10

    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v7, v7, v40

    .line 1108
    xor-int v5, v5, v34

    .line 1111
    .end local v34    # "rc":I
    sget-object v14, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v14, v14, v27

    .line 1112
    .local v14, "rc":I
    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v34

    add-int v9, v9, v34

    .line 1113
    const/16 v12, 0x18

    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v11, v11, v40

    .line 1114
    xor-int/2addr v9, v14

    .line 1115
    const/16 v12, 0x11

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v9, v9, v38

    .line 1116
    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v11, v11, v40

    .line 1117
    xor-int/2addr v9, v14

    .line 1118
    add-int/2addr v9, v11

    .line 1119
    const/16 v12, 0x1f

    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v11, v11, v40

    .line 1120
    xor-int/2addr v9, v14

    .line 1121
    const/16 v12, 0x18

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    add-int v9, v9, v40

    .line 1122
    const/16 v12, 0x10

    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v11, v11, v40

    .line 1123
    xor-int/2addr v9, v14

    .line 1126
    .end local v14    # "rc":I
    sget-object v12, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v12, v12, v31

    .line 1127
    .local v12, "rc":I
    const/16 v14, 0x1f

    invoke-static {v15, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    add-int v13, v13, v40

    .line 1128
    const/16 v14, 0x18

    invoke-static {v13, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v14, v15, v40

    .line 1129
    .end local v15    # "s07":I
    .local v14, "s07":I
    xor-int/2addr v13, v12

    .line 1130
    const/16 v15, 0x11

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v13, v13, v38

    .line 1131
    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v14, v14, v40

    .line 1132
    xor-int/2addr v13, v12

    .line 1133
    add-int/2addr v13, v14

    .line 1134
    const/16 v15, 0x1f

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v14, v14, v40

    .line 1135
    xor-int/2addr v13, v12

    .line 1136
    const/16 v15, 0x18

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    add-int v13, v13, v40

    .line 1137
    const/16 v15, 0x10

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v14, v14, v40

    .line 1138
    xor-int/2addr v12, v13

    .line 1141
    .end local v13    # "s06":I
    .local v12, "s06":I
    sget-object v13, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v13, v13, v32

    .line 1142
    .local v13, "rc":I
    const/16 v15, 0x1f

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    add-int v15, v17, v40

    .line 1143
    .end local v17    # "s08":I
    .local v15, "s08":I
    move/from16 v40, v0

    const/16 v0, 0x18

    .end local v0    # "s09":I
    .local v40, "s09":I
    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v40, v17

    .line 1144
    .end local v40    # "s09":I
    .restart local v0    # "s09":I
    xor-int/2addr v15, v13

    .line 1145
    move/from16 v41, v1

    const/16 v1, 0x11

    .end local v1    # "s00":I
    .local v41, "s00":I
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v15, v15, v17

    .line 1146
    invoke-static {v15, v1}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    .line 1147
    xor-int v1, v15, v13

    .line 1148
    .end local v15    # "s08":I
    .local v1, "s08":I
    add-int/2addr v1, v0

    .line 1149
    const/16 v15, 0x1f

    invoke-static {v1, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    .line 1150
    xor-int/2addr v1, v13

    .line 1151
    const/16 v15, 0x18

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v1, v1, v17

    .line 1152
    const/16 v15, 0x10

    invoke-static {v1, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    .line 1153
    xor-int/2addr v1, v13

    .line 1156
    .end local v13    # "rc":I
    sget-object v13, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v13, v13, v33

    .line 1157
    .restart local v13    # "rc":I
    const/16 v15, 0x1f

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v15, v21, v17

    .line 1158
    .end local v21    # "s10":I
    .local v15, "s10":I
    move/from16 v17, v0

    const/16 v0, 0x18

    .end local v0    # "s09":I
    .local v17, "s09":I
    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v0, v2, v21

    .line 1159
    .end local v2    # "s11":I
    .local v0, "s11":I
    xor-int v2, v15, v13

    .line 1160
    .end local v15    # "s10":I
    .local v2, "s10":I
    const/16 v15, 0x11

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v2, v2, v21

    .line 1161
    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v0, v0, v21

    .line 1162
    xor-int/2addr v2, v13

    .line 1163
    add-int/2addr v2, v0

    .line 1164
    const/16 v15, 0x1f

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v0, v0, v21

    .line 1165
    xor-int/2addr v2, v13

    .line 1166
    const/16 v15, 0x18

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v2, v2, v21

    .line 1167
    const/16 v15, 0x10

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v0, v0, v21

    .line 1168
    xor-int/2addr v2, v13

    .line 1171
    .end local v13    # "rc":I
    sget-object v13, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v13, v13, v35

    .line 1172
    .restart local v13    # "rc":I
    const/16 v15, 0x1f

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v15, v25, v21

    .line 1173
    .end local v25    # "s12":I
    .local v15, "s12":I
    move/from16 v21, v0

    const/16 v0, 0x18

    .end local v0    # "s11":I
    .local v21, "s11":I
    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    xor-int v0, v4, v25

    .line 1174
    .end local v4    # "s13":I
    .local v0, "s13":I
    xor-int v4, v15, v13

    .line 1175
    .end local v15    # "s12":I
    .local v4, "s12":I
    const/16 v15, 0x11

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    add-int v4, v4, v25

    .line 1176
    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    xor-int v0, v0, v25

    .line 1177
    xor-int/2addr v4, v13

    .line 1178
    add-int/2addr v4, v0

    .line 1179
    const/16 v15, 0x1f

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    xor-int v0, v0, v25

    .line 1180
    xor-int/2addr v4, v13

    .line 1181
    const/16 v15, 0x18

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    add-int v4, v4, v25

    .line 1182
    const/16 v15, 0x10

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    xor-int v0, v0, v25

    .line 1183
    xor-int/2addr v4, v13

    .line 1186
    .end local v13    # "rc":I
    sget-object v13, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v13, v13, v36

    .line 1187
    .restart local v13    # "rc":I
    const/16 v15, 0x1f

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    add-int v15, v29, v25

    .line 1188
    .end local v29    # "s14":I
    .local v15, "s14":I
    move/from16 v25, v0

    const/16 v0, 0x18

    .end local v0    # "s13":I
    .local v25, "s13":I
    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    xor-int v0, v6, v29

    .line 1189
    .end local v6    # "s15":I
    .local v0, "s15":I
    xor-int v6, v15, v13

    .line 1190
    .end local v15    # "s14":I
    .local v6, "s14":I
    const/16 v15, 0x11

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    add-int v6, v6, v29

    .line 1191
    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v0, v15

    .line 1192
    xor-int/2addr v6, v13

    .line 1193
    add-int/2addr v6, v0

    .line 1194
    const/16 v15, 0x1f

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v0, v15

    .line 1195
    xor-int/2addr v6, v13

    .line 1196
    const/16 v15, 0x18

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v6, v15

    .line 1197
    const/16 v15, 0x10

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v0, v15

    .line 1198
    xor-int/2addr v6, v13

    .line 1203
    .end local v13    # "rc":I
    xor-int v13, v41, v5

    xor-int/2addr v13, v9

    xor-int/2addr v13, v12

    invoke-static {v13}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v13

    .line 1204
    .local v13, "t0246":I
    xor-int v15, v3, v7

    xor-int/2addr v15, v11

    xor-int/2addr v15, v14

    invoke-static {v15}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v15

    .line 1206
    .local v15, "t1357":I
    xor-int v29, v41, v1

    .line 1207
    .local v29, "u00":I
    xor-int v34, v3, v17

    .line 1208
    .local v34, "u01":I
    xor-int v37, v5, v2

    .line 1209
    .local v37, "u02":I
    xor-int v38, v7, v21

    .line 1210
    .local v38, "u03":I
    xor-int v39, v9, v4

    .line 1211
    .local v39, "u04":I
    xor-int v40, v11, v25

    .line 1212
    .local v40, "u05":I
    xor-int v42, v12, v6

    .line 1213
    .local v42, "u06":I
    xor-int v43, v14, v0

    .line 1215
    .local v43, "u07":I
    move/from16 v1, v41

    .line 1216
    move/from16 v17, v3

    .line 1217
    move v2, v5

    .line 1218
    move/from16 v21, v7

    .line 1219
    move v4, v9

    .line 1220
    move/from16 v25, v11

    .line 1221
    move v6, v12

    .line 1222
    move v0, v14

    .line 1224
    xor-int v41, v37, v15

    .line 1225
    xor-int v3, v38, v13

    .line 1226
    xor-int v5, v39, v15

    .line 1227
    xor-int v7, v40, v13

    .line 1228
    xor-int v9, v42, v15

    .line 1229
    xor-int v11, v43, v13

    .line 1230
    xor-int v12, v29, v15

    .line 1231
    xor-int v15, v34, v13

    .line 1072
    .end local v13    # "t0246":I
    .end local v14    # "s07":I
    .end local v29    # "u00":I
    .end local v34    # "u01":I
    .end local v37    # "u02":I
    .end local v38    # "u03":I
    .end local v39    # "u04":I
    .end local v40    # "u05":I
    .end local v42    # "u06":I
    .end local v43    # "u07":I
    .local v15, "s07":I
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v21

    move/from16 v21, v2

    move v2, v10

    move/from16 v10, v25

    move/from16 v25, v4

    move v4, v10

    move/from16 v29, v6

    move v13, v12

    const/4 v10, 0x5

    const/4 v12, 0x6

    const/4 v14, 0x7

    move v6, v0

    move/from16 v0, v17

    move/from16 v17, v1

    move/from16 v1, v41

    goto/16 :goto_0

    .end local v12    # "s06":I
    .end local v41    # "s00":I
    .local v0, "s09":I
    .local v1, "s00":I
    .local v2, "s11":I
    .local v4, "s13":I
    .local v6, "s15":I
    .local v13, "s06":I
    .local v17, "s08":I
    .local v21, "s10":I
    .local v25, "s12":I
    .local v29, "s14":I
    :cond_0
    move/from16 v40, v0

    const/16 v35, 0x6

    const/16 v36, 0x7

    .line 1234
    .end local v0    # "s09":I
    .end local v8    # "step":I
    .local v40, "s09":I
    aput v1, p0, v19

    .line 1235
    aput v3, p0, v23

    .line 1236
    aput v5, p0, v27

    .line 1237
    aput v7, p0, v31

    .line 1238
    aput v9, p0, v32

    .line 1239
    aput v11, p0, v33

    .line 1240
    aput v13, p0, v35

    .line 1241
    aput v15, p0, v36

    .line 1242
    aput v17, p0, v16

    .line 1243
    aput v40, p0, v18

    .line 1244
    aput v21, p0, v20

    .line 1245
    aput v2, p0, v22

    .line 1246
    aput v25, p0, v24

    .line 1247
    aput v4, p0, v26

    .line 1248
    aput v29, p0, v28

    .line 1249
    aput v6, p0, v30

    .line 1250
    return-void
.end method

.method static sparkle_opt8([II)V
    .locals 24
    .param p0, "state"    # [I
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "steps"
        }
    .end annotation

    .line 777
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 778
    .local v1, "s00":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 779
    .local v3, "s01":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 780
    .local v5, "s02":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 781
    .local v7, "s03":I
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 782
    .local v9, "s04":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 783
    .local v11, "s05":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .line 784
    .local v13, "s06":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .line 786
    .local v15, "s07":I
    const/16 v16, 0x0

    move/from16 v0, v16

    const/16 v16, 0x0

    .local v0, "step":I
    :goto_0
    move/from16 v2, p1

    const/16 v17, 0x1

    if-ge v0, v2, :cond_0

    .line 790
    sget-object v18, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v19, v0, 0x7

    aget v18, v18, v19

    xor-int v3, v3, v18

    .line 791
    xor-int/2addr v7, v0

    .line 795
    sget-object v18, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v18, v18, v16

    .line 796
    .local v18, "rc":I
    const/16 v19, 0x2

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v1, v1, v20

    .line 797
    const/16 v20, 0x3

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v3, v3, v21

    .line 798
    xor-int v1, v1, v18

    .line 799
    const/16 v21, 0x4

    const/16 v8, 0x11

    invoke-static {v3, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v22

    add-int v1, v1, v22

    .line 800
    invoke-static {v1, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v22

    xor-int v3, v3, v22

    .line 801
    xor-int v1, v1, v18

    .line 802
    add-int/2addr v1, v3

    .line 803
    invoke-static {v1, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v22

    xor-int v3, v3, v22

    .line 804
    xor-int v1, v1, v18

    .line 805
    invoke-static {v3, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v22

    add-int v1, v1, v22

    .line 806
    const/16 v22, 0x5

    const/16 v10, 0x10

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v3, v3, v23

    .line 807
    xor-int v1, v1, v18

    .line 810
    .end local v18    # "rc":I
    sget-object v18, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v18, v18, v17

    .line 811
    .restart local v18    # "rc":I
    invoke-static {v7, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v5, v5, v23

    .line 812
    invoke-static {v5, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v7, v7, v23

    .line 813
    xor-int v5, v5, v18

    .line 814
    invoke-static {v7, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v5, v5, v23

    .line 815
    invoke-static {v5, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v7, v7, v23

    .line 816
    xor-int v5, v5, v18

    .line 817
    add-int/2addr v5, v7

    .line 818
    invoke-static {v5, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v7, v7, v23

    .line 819
    xor-int v5, v5, v18

    .line 820
    invoke-static {v7, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v5, v5, v23

    .line 821
    invoke-static {v5, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v7, v7, v23

    .line 822
    xor-int v5, v5, v18

    .line 825
    .end local v18    # "rc":I
    sget-object v18, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v18, v18, v19

    .line 826
    .restart local v18    # "rc":I
    invoke-static {v11, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v9, v9, v23

    .line 827
    invoke-static {v9, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v11, v11, v23

    .line 828
    xor-int v9, v9, v18

    .line 829
    invoke-static {v11, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v9, v9, v23

    .line 830
    invoke-static {v9, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v11, v11, v23

    .line 831
    xor-int v9, v9, v18

    .line 832
    add-int/2addr v9, v11

    .line 833
    invoke-static {v9, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v11, v11, v23

    .line 834
    xor-int v9, v9, v18

    .line 835
    invoke-static {v11, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v9, v9, v23

    .line 836
    invoke-static {v9, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v11, v11, v23

    .line 837
    xor-int v9, v9, v18

    .line 840
    .end local v18    # "rc":I
    sget-object v18, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    aget v18, v18, v20

    .line 841
    .restart local v18    # "rc":I
    invoke-static {v15, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v13, v13, v23

    .line 842
    invoke-static {v13, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v15, v15, v23

    .line 843
    xor-int v13, v13, v18

    .line 844
    invoke-static {v15, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v13, v13, v23

    .line 845
    invoke-static {v13, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v8

    xor-int/2addr v8, v15

    .line 846
    .end local v15    # "s07":I
    .local v8, "s07":I
    xor-int v13, v13, v18

    .line 847
    add-int/2addr v13, v8

    .line 848
    invoke-static {v13, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v4

    xor-int/2addr v4, v8

    .line 849
    .end local v8    # "s07":I
    .local v4, "s07":I
    xor-int v8, v13, v18

    .line 850
    .end local v13    # "s06":I
    .local v8, "s06":I
    invoke-static {v4, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    add-int/2addr v8, v6

    .line 851
    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    xor-int/2addr v4, v6

    .line 852
    xor-int v6, v8, v18

    .line 857
    .end local v8    # "s06":I
    .end local v18    # "rc":I
    .local v6, "s06":I
    xor-int v8, v1, v5

    invoke-static {v8}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v8

    .line 858
    .local v8, "t02":I
    xor-int v10, v3, v7

    invoke-static {v10}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v10

    .line 860
    .local v10, "t13":I
    xor-int v13, v1, v9

    .line 861
    .local v13, "u00":I
    xor-int v15, v3, v11

    .line 862
    .local v15, "u01":I
    xor-int v18, v5, v6

    .line 863
    .local v18, "u02":I
    xor-int v23, v7, v4

    .line 865
    .local v23, "u03":I
    move v9, v1

    .line 866
    move v11, v3

    .line 867
    move v6, v5

    .line 868
    move v4, v7

    .line 870
    xor-int v1, v18, v10

    .line 871
    xor-int v3, v23, v8

    .line 872
    xor-int v5, v13, v10

    .line 873
    xor-int v7, v15, v8

    .line 786
    .end local v8    # "t02":I
    .end local v10    # "t13":I
    .end local v13    # "u00":I
    .end local v15    # "u01":I
    .end local v18    # "u02":I
    .end local v23    # "u03":I
    add-int/lit8 v0, v0, 0x1

    move v15, v4

    move v13, v6

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x5

    goto/16 :goto_0

    .end local v4    # "s07":I
    .end local v6    # "s06":I
    .local v13, "s06":I
    .local v15, "s07":I
    :cond_0
    const/16 v19, 0x2

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x5

    .line 876
    .end local v0    # "step":I
    aput v1, p0, v16

    .line 877
    aput v3, p0, v17

    .line 878
    aput v5, p0, v19

    .line 879
    aput v7, p0, v20

    .line 880
    aput v9, p0, v21

    .line 881
    aput v11, p0, v22

    .line 882
    aput v13, p0, v12

    .line 883
    aput v15, p0, v14

    .line 884
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 12
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

    .line 385
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkData()Z

    move-result v0

    .line 388
    .local v0, "forEncryption":Z
    if-eqz v0, :cond_0

    .line 390
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr v1, v2

    .local v1, "resultLength":I
    goto :goto_0

    .line 394
    .end local v1    # "resultLength":I
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    if-lt v1, v2, :cond_e

    .line 397
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 399
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 402
    .restart local v1    # "resultLength":I
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v1

    if-gt p2, v2, :cond_d

    .line 407
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-lez v2, :cond_9

    .line 411
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v5, v6, :cond_2

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M2:I

    goto :goto_1

    :cond_2
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M3:I

    :goto_1
    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 415
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    new-array v2, v2, [I

    .line 416
    .local v2, "buffer":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-ge v3, v4, :cond_3

    .line 418
    ushr-int/lit8 v4, v3, 0x2

    aget v5, v2, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v7, v3, 0x3

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v2, v4

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 420
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v3, v4, :cond_5

    .line 422
    if-nez v0, :cond_4

    .line 424
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    .line 425
    .local v3, "tmp":I
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v4, v4, 0x2

    aget v5, v2, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    ushr-int/2addr v6, v3

    shl-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v2, v4

    .line 426
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 427
    .end local v3    # "tmp":I
    .local v4, "tmp":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    sub-int/2addr v5, v4

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    .end local v4    # "tmp":I
    :cond_4
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v3, v3, 0x2

    aget v4, v2, v3

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x3

    const/16 v6, 0x80

    shl-int v5, v6, v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 431
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_7

    .line 433
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    .line 435
    .local v4, "j":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v5, v5, v3

    .line 436
    .local v5, "s_i":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v6, v6, v4

    .line 437
    .local v6, "s_j":I
    if-eqz v0, :cond_6

    .line 439
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v8, v2, v3

    xor-int/2addr v8, v6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v10, v3

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v7, v3

    .line 440
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v8, v5, v6

    aget v9, v2, v4

    xor-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v11, v4

    add-int/2addr v10, v11

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v7, v4

    goto :goto_4

    .line 444
    :cond_6
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v8, v5, v6

    aget v9, v2, v3

    xor-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v10, v3

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v7, v3

    .line 445
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v8, v2, v4

    xor-int/2addr v8, v5

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v11, v4

    add-int/2addr v10, v11

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v7, v4

    .line 447
    :goto_4
    aget v7, v2, v3

    xor-int/2addr v7, v5

    aput v7, v2, v3

    .line 448
    aget v7, v2, v4

    xor-int/2addr v7, v6

    aput v7, v2, v4

    .line 431
    .end local v4    # "j":I
    .end local v5    # "s_i":I
    .end local v6    # "s_j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 450
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-ge v3, v4, :cond_8

    .line 452
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "outOff":I
    .local v4, "outOff":I
    ushr-int/lit8 v5, v3, 0x2

    aget v5, v2, v5

    and-int/lit8 v6, v3, 0x3

    shl-int/lit8 v6, v6, 0x3

    ushr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 450
    add-int/lit8 v3, v3, 0x1

    move p2, v4

    goto :goto_5

    .line 455
    .end local v3    # "i":I
    .end local v4    # "outOff":I
    .restart local p2    # "outOff":I
    :cond_8
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    .line 458
    .end local v2    # "buffer":[I
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    if-ge v2, v3, :cond_a

    .line 460
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v4, v2

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    aget v6, v6, v2

    xor-int/2addr v5, v6

    aput v5, v3, v4

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 462
    .end local v2    # "i":I
    :cond_a
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    .line 463
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_WORDS:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 464
    if-eqz v0, :cond_b

    .line 466
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    invoke-static {v2, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 470
    :cond_b
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {v2, v3, v6, v4, v5}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[BI[BI)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 475
    :goto_7
    xor-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset(Z)V

    .line 476
    return v1

    .line 472
    :cond_c
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mac does not match"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_d
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    .end local v1    # "resultLength":I
    :cond_e
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "data too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getIVBytesSize()I
    .locals 1

    .line 162
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_BYTES:I

    return v0
.end method

.method public getMac()[B
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 512
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 514
    .local v1, "total":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 526
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr v0, v1

    return v0

    .line 521
    :pswitch_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 518
    :pswitch_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 524
    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr v0, v2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getUpdateOutputSize(I)I
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 487
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 489
    .local v1, "total":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 497
    :pswitch_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 498
    goto :goto_0

    .line 493
    :pswitch_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 494
    goto :goto_0

    .line 501
    :pswitch_2
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 502
    nop

    .line 507
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    rem-int v0, v1, v0

    sub-int v0, v1, v0

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
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

    .line 173
    const/4 v0, 0x0

    .line 176
    .local v0, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v1, :cond_1

    .line 178
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 179
    .local v1, "aeadParameters":Lorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 180
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    .line 181
    .local v2, "iv":[B
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    .line 183
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v3

    .line 184
    .local v3, "macSizeBits":I
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    mul-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    .line 186
    .end local v1    # "aeadParameters":Lorg/bouncycastle/crypto/params/AEADParameters;
    .end local v3    # "macSizeBits":I
    goto :goto_0

    .line 185
    .restart local v1    # "aeadParameters":Lorg/bouncycastle/crypto/params/AEADParameters;
    .restart local v3    # "macSizeBits":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for MAC size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    .end local v1    # "aeadParameters":Lorg/bouncycastle/crypto/params/AEADParameters;
    .end local v2    # "iv":[B
    .end local v3    # "macSizeBits":I
    :cond_1
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_7

    .line 189
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 190
    .local v1, "withIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 191
    .local v2, "ivParameters":Lorg/bouncycastle/crypto/CipherParameters;
    instance-of v3, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_2

    .line 193
    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 195
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 196
    .local v3, "iv":[B
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    .line 197
    .end local v1    # "withIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v2    # "ivParameters":Lorg/bouncycastle/crypto/CipherParameters;
    move-object v2, v3

    .line 203
    .end local v3    # "iv":[B
    .local v2, "iv":[B
    :goto_0
    if-eqz v0, :cond_6

    .line 208
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    mul-int/lit8 v1, v1, 0x4

    .line 209
    .local v1, "expectedKeyLength":I
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    const-string v4, " requires exactly "

    if-ne v1, v3, :cond_5

    .line 214
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    mul-int/lit8 v3, v3, 0x4

    .line 215
    .local v3, "expectedIVLength":I
    if-eqz v2, :cond_4

    array-length v5, v2

    if-ne v3, v5, :cond_4

    .line 220
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 221
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    invoke-static {v2, v6, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 223
    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 224
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v7

    invoke-direct {v4, v5, v6, p2, v7}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 223
    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 226
    if-eqz p1, :cond_3

    sget-object v4, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    :goto_1
    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 228
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset()V

    .line 229
    return-void

    .line 217
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes of IV"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 211
    .end local v3    # "expectedIVLength":I
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes of key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    .end local v1    # "expectedKeyLength":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Sparkle init parameters must include a key"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    .end local v2    # "iv":[B
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid parameters passed to Sparkle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processAADByte(B)V
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkAAD()V

    .line 235
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    .line 238
    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    .line 242
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4
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

    .line 246
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4

    .line 252
    if-gtz p3, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkAAD()V

    .line 257
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 259
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    .line 260
    .local v0, "available":I
    if-gt p3, v0, :cond_1

    .line 262
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 264
    return-void

    .line 267
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    add-int/2addr p2, v0

    .line 269
    sub-int/2addr p3, v0

    .line 271
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    .line 275
    .end local v0    # "available":I
    :cond_2
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le p3, v0, :cond_3

    .line 277
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    .line 278
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr p2, v0

    .line 279
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr p3, v0

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iput p3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 284
    return-void

    .line 248
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processByte(B[BI)I
    .locals 7
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

    .line 289
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .end local p2    # "out":[B
    .end local p3    # "outOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBytes([BII[BI)I

    move-result p2

    return p2
.end method

.method public processBytes([BII[BI)I
    .locals 8
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

    .line 295
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_6

    .line 300
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkData()Z

    move-result v0

    .line 302
    .local v0, "forEncryption":Z
    const/4 v1, 0x0

    .line 304
    .local v1, "resultLength":I
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 306
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-lez v3, :cond_1

    .line 308
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v3, v4

    .line 309
    .local v3, "available":I
    if-gt p3, v3, :cond_0

    .line 311
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 313
    return v2

    .line 316
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    add-int/2addr p2, v3

    .line 318
    sub-int/2addr p3, v3

    .line 320
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v4, v2, p4, p5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferEncrypt([BI[BI)V

    .line 321
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    .line 325
    .end local v3    # "available":I
    :cond_1
    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le p3, v3, :cond_5

    .line 327
    add-int v3, p5, v1

    invoke-direct {p0, p1, p2, p4, v3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferEncrypt([BI[BI)V

    .line 328
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr p2, v3

    .line 329
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr p3, v3

    .line 330
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 335
    :cond_2
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v3, v4

    .line 336
    .restart local v3    # "available":I
    if-gt p3, v3, :cond_3

    .line 338
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 340
    return v2

    .line 343
    :cond_3
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le v4, v5, :cond_4

    .line 345
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v4, v2, p4, p5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    .line 346
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 347
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    .line 350
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v3, v4

    .line 351
    if-gt p3, v3, :cond_4

    .line 353
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 355
    return v1

    .line 359
    :cond_4
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v4, v5

    .line 360
    .end local v3    # "available":I
    .local v4, "available":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    add-int/2addr p2, v4

    .line 362
    sub-int/2addr p3, v4

    .line 363
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    add-int v5, p5, v1

    invoke-direct {p0, v3, v2, p4, v5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    .line 364
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v1, v3

    .line 367
    :goto_1
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    if-le p3, v3, :cond_5

    .line 369
    add-int v3, p5, v1

    invoke-direct {p0, p1, p2, p4, v3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    .line 370
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr p2, v3

    .line 371
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr p3, v3

    .line 372
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 376
    .end local v4    # "available":I
    :cond_5
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    iput p3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 379
    return v1

    .line 297
    .end local v0    # "forEncryption":Z
    .end local v1    # "resultLength":I
    :cond_6
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset(Z)V

    .line 533
    return-void
.end method
