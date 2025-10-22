.class public Lorg/bouncycastle/crypto/engines/AsconEngine;
.super Ljava/lang/Object;
.source "AsconEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/AsconEngine$State;,
        Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    }
.end annotation


# instance fields
.field private final ASCON_AEAD_RATE:I

.field private final ASCON_IV:J

.field private final CRYPTO_ABYTES:I

.field private final CRYPTO_KEYBYTES:I

.field private K0:J

.field private K1:J

.field private K2:J

.field private N0:J

.field private N1:J

.field private final algorithmName:Ljava/lang/String;

.field private final asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field private initialAssociatedText:[B

.field private final m_buf:[B

.field private m_bufPos:I

.field private final m_bufferSizeDecrypt:I

.field private m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field private mac:[B

.field private final nr:I

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;)V
    .locals 4
    .param p1, "asconParameters"    # Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asconParameters"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 74
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameter setting for ASCON AEAD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_0
    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    .line 92
    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    .line 93
    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    .line 94
    const-wide v2, -0x7fbff3fa00000000L    # -1.785284289241434E-307

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    .line 95
    const-string v0, "Ascon-128 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    .line 96
    goto :goto_0

    .line 84
    :pswitch_1
    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    .line 85
    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    .line 86
    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    .line 87
    const-wide v2, -0x7f7ff3f800000000L

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    .line 88
    const-string v0, "Ascon-128a AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    .line 89
    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    .line 78
    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    .line 79
    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    .line 80
    const-wide v2, -0x5fbff3fa00000000L    # -2.393674885049323E-153

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    .line 81
    const-string v0, "Ascon-80pq AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    .line 82
    nop

    .line 100
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x6

    :cond_0
    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    .line 101
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    .line 102
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    .line 103
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private P(I)V
    .locals 2
    .param p1, "nr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nr"
        }
    .end annotation

    .line 126
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 128
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 130
    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 131
    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 132
    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 133
    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 135
    :cond_0
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 136
    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 138
    :cond_1
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 139
    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 140
    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 141
    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 142
    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 143
    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 144
    return-void
.end method

.method private PAD(I)J
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 107
    shl-int/lit8 v0, p1, 0x3

    rsub-int/lit8 v0, v0, 0x38

    const-wide/16 v1, 0x80

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private ROUND(J)V
    .locals 14
    .param p1, "C"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "C"
        }
    .end annotation

    .line 112
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 113
    .local v0, "t0":J
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v2, v4

    xor-long/2addr v2, p1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 114
    .local v2, "t1":J
    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 115
    .local v4, "t2":J
    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v6, v8

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v6, v8

    xor-long/2addr v6, p1

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    not-long v8, v8

    iget-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v12, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v10, v12

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    .line 116
    .local v6, "t3":J
    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v12, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    and-long/2addr v10, v12

    xor-long/2addr v8, v10

    .line 117
    .local v8, "t4":J
    const/16 v10, 0x13

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v0

    const/16 v12, 0x1c

    invoke-static {v0, v1, v12}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 118
    const/16 v10, 0x27

    invoke-static {v2, v3, v10}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v2

    const/16 v12, 0x3d

    invoke-static {v2, v3, v12}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 119
    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v4

    const/4 v12, 0x6

    invoke-static {v4, v5, v12}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    not-long v10, v10

    iput-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 120
    const/16 v10, 0xa

    invoke-static {v6, v7, v10}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v6

    const/16 v12, 0x11

    invoke-static {v6, v7, v12}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 121
    const/4 v10, 0x7

    invoke-static {v8, v9, v10}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v8

    const/16 v12, 0x29

    invoke-static {v8, v9, v12}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 122
    return-void
.end method

.method private ascon_aeadinit()V
    .locals 6

    .line 149
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 150
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 152
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 154
    :cond_0
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 155
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 156
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 157
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 158
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 159
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v0, v1, :cond_1

    .line 161
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 163
    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 164
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 165
    return-void
.end method

.method private checkAAD()V
    .locals 3

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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

    .line 172
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    .line 173
    goto :goto_0

    .line 181
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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

    .line 179
    :pswitch_3
    goto :goto_0

    .line 175
    :pswitch_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    .line 176
    nop

    .line 185
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

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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

    .line 200
    :pswitch_0
    return v1

    .line 193
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    .line 194
    return v1

    .line 204
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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

    .line 202
    :pswitch_3
    return v2

    .line 197
    :pswitch_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    .line 198
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

.method private finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V
    .locals 9
    .param p1, "nextState"    # Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextState"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 227
    :sswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 228
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const-wide/16 v2, -0x1

    const/16 v4, 0x8

    if-lt v0, v4, :cond_0

    .line 230
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v7

    xor-long/2addr v5, v7

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 231
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v7

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x38

    shl-long/2addr v2, v0

    and-long/2addr v2, v7

    xor-long/2addr v2, v5

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_0

    .line 235
    :cond_0
    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v6

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    shl-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x38

    shl-long/2addr v2, v0

    and-long/2addr v2, v6

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 237
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 238
    nop

    .line 243
    :goto_1
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 244
    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 245
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    .line 246
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V
    .locals 7
    .param p1, "nextState"    # Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextState"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 368
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 355
    :pswitch_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 356
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 357
    goto :goto_0

    .line 359
    :pswitch_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 360
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 361
    goto :goto_0

    .line 363
    :pswitch_2
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shr-long/2addr v5, v4

    or-long/2addr v2, v5

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 364
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shl-long/2addr v2, v4

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shr-long/2addr v5, v4

    or-long/2addr v2, v5

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 365
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 366
    nop

    .line 370
    :goto_0
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 371
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 372
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 374
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    .line 375
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processBufferAAD([BI)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "inOff"
        }
    .end annotation

    .line 212
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 213
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 215
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 217
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 218
    return-void
.end method

.method private processBufferDecrypt([BI[BI)V
    .locals 7
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

    .line 250
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 254
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    .line 255
    .local v0, "t0":J
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, v0

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 256
    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 258
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 260
    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    .line 261
    .local v2, "t1":J
    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x8

    invoke-static {v4, v5, p3, v6}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 262
    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 264
    .end local v2    # "t1":J
    :cond_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 265
    return-void

    .line 252
    .end local v0    # "t0":J
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processBufferEncrypt([BI[BI)V
    .locals 4
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

    .line 269
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 273
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 274
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 276
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 278
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 279
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p4, 0x8

    invoke-static {v0, v1, p3, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 282
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 283
    return-void

    .line 271
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processFinalDecrypt([BII[BI)V
    .locals 9
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
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
            "inLen",
            "output",
            "outOff"
        }
    .end annotation

    .line 287
    const/16 v0, 0x8

    const-wide/16 v1, -0x1

    if-lt p3, v0, :cond_1

    .line 289
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    .line 290
    .local v3, "c0":J
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v5, v3

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 291
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v5, v6, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 292
    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 293
    add-int/lit8 p2, p2, 0x8

    .line 294
    add-int/lit8 p5, p5, 0x8

    .line 295
    add-int/lit8 p3, p3, -0x8

    .line 296
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v7

    xor-long/2addr v5, v7

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 297
    if-eqz p3, :cond_0

    .line 299
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v5

    .line 300
    .local v5, "c1":J
    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v7, v5

    iput-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 301
    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v7, v8, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    .line 302
    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    shl-int/lit8 v0, p3, 0x3

    ushr-long v0, v1, v0

    and-long/2addr v0, v7

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 303
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 305
    .end local v3    # "c0":J
    .end local v5    # "c1":J
    :cond_0
    goto :goto_0

    .line 308
    :cond_1
    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 309
    if-eqz p3, :cond_2

    .line 311
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v3

    .line 312
    .restart local v3    # "c0":J
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v5, v3

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 313
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v5, v6, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    .line 314
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    shl-int/lit8 v0, p3, 0x3

    ushr-long v0, v1, v0

    and-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 315
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 319
    .end local v3    # "c0":J
    :cond_2
    :goto_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    .line 320
    return-void
.end method

.method private processFinalEncrypt([BII[BI)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
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
            "inLen",
            "output",
            "outOff"
        }
    .end annotation

    .line 324
    const/16 v0, 0x8

    if-lt p3, v0, :cond_0

    .line 326
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 327
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 328
    add-int/lit8 p2, p2, 0x8

    .line 329
    add-int/lit8 p5, p5, 0x8

    .line 330
    add-int/lit8 p3, p3, -0x8

    .line 331
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 332
    if-eqz p3, :cond_1

    .line 334
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 335
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v0, v1, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    goto :goto_0

    .line 340
    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 341
    if-eqz p3, :cond_1

    .line 343
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 344
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    .line 347
    :cond_1
    :goto_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    .line 348
    return-void
.end method

.method private reset(Z)V
    .locals 3
    .param p1, "clearMac"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearMac"
        }
    .end annotation

    .line 697
    if-eqz p1, :cond_0

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    .line 701
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 702
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 704
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 720
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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

    .line 712
    :pswitch_0
    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    .line 713
    goto :goto_0

    .line 717
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    .line 718
    return-void

    .line 708
    :pswitch_2
    nop

    .line 722
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ascon_aeadinit()V

    .line 723
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processAADBytes([BII)V

    .line 727
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


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .param p1, "outBytes"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outBytes",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 602
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v6

    .line 604
    .local v6, "forEncryption":Z
    const-string v1, "output buffer too short"

    const/16 v7, 0x8

    if-eqz v6, :cond_1

    .line 606
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int v8, v2, v3

    .line 607
    .local v8, "resultLength":I
    add-int v2, p2, v8

    array-length v3, p1

    if-gt v2, v3, :cond_0

    .line 611
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processFinalEncrypt([BII[BI)V

    .line 612
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    .line 613
    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 614
    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    invoke-static {v1, v2, v3, v7}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 615
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-static {v1, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    goto :goto_0

    .line 609
    :cond_0
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    .end local v8    # "resultLength":I
    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-lt v2, v3, :cond_4

    .line 624
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 625
    iget v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 626
    .restart local v8    # "resultLength":I
    add-int v2, p2, v8

    array-length v3, p1

    if-gt v2, v3, :cond_3

    .line 630
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processFinalDecrypt([BII[BI)V

    .line 631
    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 632
    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v4, v7

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 633
    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    or-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 637
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    .line 639
    :goto_0
    return v8

    .line 635
    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mac check in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_3
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 622
    .end local v8    # "resultLength":I
    :cond_4
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "data too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmVersion()Ljava/lang/String;
    .locals 1

    .line 454
    const-string/jumbo v0, "v1.2"

    return-object v0
.end method

.method public getIVBytesSize()I
    .locals 1

    .line 736
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    .line 731
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    return v0
.end method

.method public getMac()[B
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

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

    .line 672
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 674
    .local v1, "total":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 686
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v1

    return v0

    .line 681
    :pswitch_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 678
    :pswitch_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 684
    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

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

    .line 649
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 650
    .local v1, "total":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 658
    :pswitch_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 659
    goto :goto_0

    .line 654
    :pswitch_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 655
    goto :goto_0

    .line 662
    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v1, v0

    .line 663
    nop

    .line 667
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

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

    .line 382
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 384
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 385
    .local v0, "aeadParameters":Lorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 386
    .local v2, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v3

    .line 387
    .local v3, "npub":[B
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    .line 389
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v4

    .line 390
    .local v4, "macSizeBits":I
    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    mul-int/lit8 v5, v5, 0x8

    if-ne v4, v5, :cond_0

    .line 394
    .end local v0    # "aeadParameters":Lorg/bouncycastle/crypto/params/AEADParameters;
    .end local v4    # "macSizeBits":I
    goto :goto_0

    .line 392
    .restart local v0    # "aeadParameters":Lorg/bouncycastle/crypto/params/AEADParameters;
    .restart local v4    # "macSizeBits":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for MAC size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    .end local v0    # "aeadParameters":Lorg/bouncycastle/crypto/params/AEADParameters;
    .end local v2    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "npub":[B
    .end local v4    # "macSizeBits":I
    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_8

    .line 397
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 398
    .local v0, "withIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 399
    .restart local v2    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 400
    .restart local v3    # "npub":[B
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    .line 401
    .end local v0    # "withIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    nop

    .line 407
    :goto_0
    if-eqz v2, :cond_7

    .line 411
    if-eqz v3, :cond_6

    array-length v0, v3

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-ne v0, v4, :cond_6

    .line 416
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 417
    .local v0, "k":[B
    array-length v4, v0

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v4, v5, :cond_5

    .line 422
    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 423
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v7

    invoke-direct {v4, v5, v6, p2, v7}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 422
    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 424
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    .line 425
    invoke-static {v3, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    .line 426
    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    .line 428
    invoke-static {v0, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    .line 429
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    goto :goto_1

    .line 431
    :cond_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v5, 0x14

    if-ne v1, v5, :cond_4

    .line 433
    invoke-static {v0, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    .line 434
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    .line 435
    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    .line 442
    :goto_1
    if-eqz p1, :cond_3

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_2

    :cond_3
    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_2
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    .line 444
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    .line 445
    return-void

    .line 439
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 419
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " key must be "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    .end local v0    # "k":[B
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " requires exactly "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes of IV"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ascon Init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    .end local v2    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "npub":[B
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to Ascon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .locals 2
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    .line 460
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    .line 461
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    .line 465
    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4
    .param p1, "inBytes"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inBytes",
            "inOff",
            "len"
        }
    .end annotation

    .line 469
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 474
    if-gtz p3, :cond_0

    .line 476
    return-void

    .line 478
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    .line 479
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 481
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    .line 482
    .local v0, "available":I
    if-ge p3, v0, :cond_1

    .line 484
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 486
    return-void

    .line 488
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    add-int/2addr p2, v0

    .line 490
    sub-int/2addr p3, v0

    .line 491
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    .line 494
    .end local v0    # "available":I
    :cond_2
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v0, :cond_3

    .line 496
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    .line 497
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v0

    .line 498
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr p3, v0

    goto :goto_0

    .line 500
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    iput p3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 502
    return-void

    .line 471
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

    .line 507
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
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBytes([BII[BI)I

    move-result p2

    return p2
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .param p1, "inBytes"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "outBytes"    # [B
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
            "inBytes",
            "inOff",
            "len",
            "outBytes",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 513
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_6

    .line 517
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    .line 518
    .local v0, "forEncryption":Z
    const/4 v1, 0x0

    .line 520
    .local v1, "resultLength":I
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 522
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    if-lez v3, :cond_1

    .line 524
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v3, v4

    .line 525
    .local v3, "available":I
    if-ge p3, v3, :cond_0

    .line 527
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 529
    return v2

    .line 532
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    add-int/2addr p2, v3

    .line 534
    sub-int/2addr p3, v3

    .line 536
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v4, v2, p4, p5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    .line 537
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    .line 541
    .end local v3    # "available":I
    :cond_1
    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v3, :cond_5

    .line 543
    add-int v3, p5, v1

    invoke-direct {p0, p1, p2, p4, v3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    .line 544
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v3

    .line 545
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr p3, v3

    .line 546
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 551
    :cond_2
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v3, v4

    .line 552
    .restart local v3    # "available":I
    if-ge p3, v3, :cond_3

    .line 554
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 556
    return v2

    .line 560
    :cond_3
    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt v4, v5, :cond_4

    .line 562
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v5, p5, v1

    invoke-direct {p0, v4, v2, p4, v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    .line 563
    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 564
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v1, v4

    .line 567
    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v3, v4

    .line 568
    if-ge p3, v3, :cond_3

    .line 570
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 572
    return v1

    .line 576
    :cond_4
    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v4, v5

    .line 577
    .end local v3    # "available":I
    .local v4, "available":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    add-int/2addr p2, v4

    .line 579
    sub-int/2addr p3, v4

    .line 580
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v5, p5, v1

    invoke-direct {p0, v3, v2, p4, v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    .line 581
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v1, v3

    .line 584
    :goto_1
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    if-lt p3, v3, :cond_5

    .line 586
    add-int v3, p5, v1

    invoke-direct {p0, p1, p2, p4, v3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    .line 587
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v3

    .line 588
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr p3, v3

    .line 589
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 593
    .end local v4    # "available":I
    :cond_5
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iput p3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 596
    return v1

    .line 515
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

    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    .line 693
    return-void
.end method
