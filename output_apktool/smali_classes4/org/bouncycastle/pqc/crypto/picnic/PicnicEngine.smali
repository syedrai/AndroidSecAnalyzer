.class Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
.super Ljava/lang/Object;
.source "PicnicEngine.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field protected static final LOWMC_MAX_AND_GATES:I = 0x478

.field protected static final LOWMC_MAX_KEY_BITS:I = 0x100

.field private static final LOWMC_MAX_STATE_SIZE:I = 0x40

.field protected static final LOWMC_MAX_WORDS:I = 0x10

.field private static final MAX_AUX_BYTES:I = 0xb0

.field private static final MAX_DIGEST_SIZE:I = 0x40

.field private static final PICNIC_MAX_LOWMC_BLOCK_SIZE:I = 0x20

.field private static final TRANSFORM_FS:I = 0x0

.field private static final TRANSFORM_INVALID:I = 0xff

.field private static final TRANSFORM_UR:I = 0x1

.field private static final WORD_SIZE_BITS:I = 0x20

.field protected static final saltSizeBytes:I = 0x20


# instance fields
.field private final CRYPTO_BYTES:I

.field private final CRYPTO_PUBLICKEYBYTES:I

.field private final CRYPTO_SECRETKEYBYTES:I

.field protected final UnruhGWithInputBytes:I

.field protected final UnruhGWithoutInputBytes:I

.field protected final andSizeBytes:I

.field protected final digest:Lorg/bouncycastle/crypto/Xof;

.field protected final digestSizeBytes:I

.field protected final lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

.field protected final numMPCParties:I

.field protected final numMPCRounds:I

.field protected final numOpenedRounds:I

.field protected final numRounds:I

.field protected final numSboxes:I

.field private final parameters:I

.field protected final pqSecurityLevel:I

.field protected final seedSizeBytes:I

.field private signatureLength:I

.field protected final stateSizeBits:I

.field protected final stateSizeBytes:I

.field protected final stateSizeWords:I

.field private final transform:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V
    .locals 17
    .param p1, "picnicParams"    # I
    .param p2, "lowmcConstants"    # Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picnicParams",
            "lowmcConstants"
        }
    .end annotation

    .line 97
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    move-object/from16 v1, p2

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    .line 99
    move/from16 v2, p1

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    .line 100
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    const/16 v4, 0x149

    const/16 v5, 0xdb

    const/16 v6, 0xff

    const/16 v9, 0x81

    const/16 v10, 0x30

    const/16 v11, 0xc0

    const/16 v12, 0x60

    const/4 v15, 0x4

    const/16 v13, 0x80

    const/4 v7, 0x3

    const/16 v8, 0x40

    const/4 v14, 0x0

    packed-switch v3, :pswitch_data_0

    .line 208
    new-instance v3, Ljava/lang/IllegalArgumentException;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown parameter set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :pswitch_0
    iput v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 199
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 200
    const/16 v3, 0x1b6

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 201
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 202
    const/16 v3, 0x55

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 203
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 204
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 205
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 206
    goto/16 :goto_0

    .line 187
    :pswitch_1
    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 188
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 189
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 190
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 191
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 192
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 193
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 194
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 195
    goto/16 :goto_0

    .line 176
    :pswitch_2
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 177
    iput v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 178
    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 179
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 180
    const/16 v3, 0x2b

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 181
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 182
    const/16 v3, 0x20

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 183
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 184
    goto/16 :goto_0

    .line 165
    :pswitch_3
    iput v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 166
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 167
    const/16 v3, 0x259

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 168
    const/16 v3, 0x44

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 169
    const/16 v3, 0x10

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 170
    const/16 v3, 0x55

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 171
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 172
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 173
    goto/16 :goto_0

    .line 154
    :pswitch_4
    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 155
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 156
    const/16 v3, 0x1a3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 157
    const/16 v3, 0x34

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 158
    const/16 v3, 0x10

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 159
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 160
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 161
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 162
    goto :goto_0

    .line 143
    :pswitch_5
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 144
    iput v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 145
    const/16 v3, 0xfa

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 146
    const/16 v3, 0x24

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 147
    const/16 v3, 0x10

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 148
    const/16 v3, 0x2b

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 149
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 150
    const/16 v3, 0x20

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 151
    goto :goto_0

    .line 132
    :pswitch_6
    iput v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 133
    const/16 v3, 0x100

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 134
    const/16 v3, 0x1b6

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 135
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 136
    const/16 v3, 0xa

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 137
    const/16 v3, 0x26

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 138
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 139
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 140
    goto :goto_0

    .line 119
    :pswitch_7
    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 120
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 121
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 122
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 123
    const/16 v3, 0xa

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 124
    const/16 v3, 0x1e

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 125
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 126
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 127
    goto :goto_0

    .line 106
    :pswitch_8
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    .line 107
    iput v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 108
    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    .line 109
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    .line 110
    const/16 v3, 0xa

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    .line 111
    const/16 v3, 0x14

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .line 112
    const/16 v3, 0x20

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    .line 113
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    .line 114
    nop

    .line 211
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    const/16 v4, 0x41

    const/16 v5, 0x61

    const/16 v8, 0x49

    const/16 v10, 0x31

    packed-switch v3, :pswitch_data_1

    .line 274
    const/4 v3, -0x1

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 275
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 276
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    .line 269
    :pswitch_9
    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 270
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 271
    const v3, 0x1ed4e

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 272
    goto/16 :goto_1

    .line 264
    :pswitch_a
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 265
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 266
    const v3, 0x1160b

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 267
    goto/16 :goto_1

    .line 259
    :pswitch_b
    const/16 v3, 0x34

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 260
    const/16 v3, 0x23

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 261
    const/16 v3, 0x7d3d

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 262
    goto :goto_1

    .line 254
    :pswitch_c
    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 255
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 256
    const v3, 0xee64

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 257
    goto :goto_1

    .line 249
    :pswitch_d
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 250
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 251
    const v3, 0x88d4

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 252
    goto :goto_1

    .line 244
    :pswitch_e
    const/16 v3, 0x34

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 245
    const/16 v3, 0x23

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 246
    const/16 v3, 0x3914

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 247
    goto :goto_1

    .line 239
    :pswitch_f
    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 240
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 241
    const v3, 0x33276

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 242
    goto :goto_1

    .line 234
    :pswitch_10
    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 235
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 236
    const v3, 0x2070c

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 237
    goto :goto_1

    .line 229
    :pswitch_11
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 230
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 231
    const v3, 0x1dc01

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 232
    goto :goto_1

    .line 224
    :pswitch_12
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 225
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 226
    const v3, 0x12bf0

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 227
    goto :goto_1

    .line 219
    :pswitch_13
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 220
    const/16 v3, 0x21

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 221
    const v3, 0xd2cd

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 222
    goto :goto_1

    .line 214
    :pswitch_14
    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    .line 215
    const/16 v3, 0x21

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    .line 216
    const v3, 0x84f4

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    .line 217
    nop

    .line 280
    :goto_1
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v3, v3, 0x3

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int v3, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    .line 281
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    .line 282
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    .line 283
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v16, 0x20

    add-int/lit8 v3, v3, 0x20

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x20

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    .line 287
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    packed-switch v3, :pswitch_data_2

    .line 306
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    goto :goto_2

    .line 303
    :pswitch_15
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    .line 304
    goto :goto_2

    .line 298
    :pswitch_16
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    .line 299
    nop

    .line 310
    :goto_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v3, v4, :cond_0

    .line 312
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    .line 313
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_3

    .line 317
    :cond_0
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    .line 318
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    .line 321
    :goto_3
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-eq v3, v13, :cond_2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ne v3, v9, :cond_1

    goto :goto_4

    .line 327
    :cond_1
    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    goto :goto_5

    .line 323
    :cond_2
    :goto_4
    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v3, v13}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 329
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V
    .locals 4
    .param p1, "seed"    # [B
    .param p2, "seedOffset"    # I
    .param p3, "view"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p4, "hash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "seedOffset",
            "view",
            "hash"
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 1635
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1636
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v2, 0x0

    invoke-interface {v0, p4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1639
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 1640
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1641
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1642
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1643
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1644
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1645
    return-void
.end method

.method private G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V
    .locals 6
    .param p1, "viewNumber"    # I
    .param p2, "seed"    # [B
    .param p3, "seedOffset"    # I
    .param p4, "view"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p5, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewNumber",
            "seed",
            "seedOffset",
            "view",
            "output"
        }
    .end annotation

    .line 1566
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v1

    .line 1569
    .local v0, "outputBytes":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 1570
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v1, p2, p3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1571
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v3, 0x0

    invoke-interface {v1, p5, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1574
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, p5, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1575
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1577
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p4, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v2, v4, v3, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1578
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v2

    .line 1580
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p4, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {v2, v4, v3, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1582
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v4

    invoke-interface {v2, v4, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1583
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v1, p5, v3, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1584
    return-void
.end method

.method private H3([I[I[[Lorg/bouncycastle/pqc/crypto/picnic/View;[[[B[B[B[B[[[B)V
    .locals 9
    .param p1, "circuitOutput"    # [I
    .param p2, "plaintext"    # [I
    .param p3, "views"    # [[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p4, "as"    # [[[B
    .param p5, "challengeBits"    # [B
    .param p6, "salt"    # [B
    .param p7, "message"    # [B
    .param p8, "gs"    # [[[B
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
            "circuitOutput",
            "plaintext",
            "views",
            "as",
            "challengeBits",
            "salt",
            "message",
            "gs"
        }
    .end annotation

    .line 1438
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 1440
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v8, v1, [B

    .line 1443
    .local v8, "tmp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_1

    .line 1445
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1447
    aget-object v3, p3, v1

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    const/4 v4, 0x0

    invoke-static {v3, v8, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 1448
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v3, v8, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1445
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1443
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    .end local v1    # "i":I
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->implH3([I[I[[[B[B[B[B[[[B)V

    .line 1453
    return-void
.end method

.method private H3([I[I[[[I[[[B[B[B[B[[[B)V
    .locals 9
    .param p1, "circuitOutput"    # [I
    .param p2, "plaintext"    # [I
    .param p3, "viewOutputs"    # [[[I
    .param p4, "as"    # [[[B
    .param p5, "challengeBits"    # [B
    .param p6, "salt"    # [B
    .param p7, "message"    # [B
    .param p8, "gs"    # [[[B
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
            "circuitOutput",
            "plaintext",
            "viewOutputs",
            "as",
            "challengeBits",
            "salt",
            "message",
            "gs"
        }
    .end annotation

    .line 1458
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 1460
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v8, v1, [B

    .line 1463
    .local v8, "tmp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_1

    .line 1465
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1467
    aget-object v3, p3, v1

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v8, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 1468
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v3, v8, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1465
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1463
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1472
    .end local v1    # "i":I
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->implH3([I[I[[[B[B[B[B[[[B)V

    .line 1473
    return-void
.end method

.method private HCP([B[I[I[[B[B[B[I[I[B)V
    .locals 5
    .param p1, "challengeHash"    # [B
    .param p2, "challengeC"    # [I
    .param p3, "challengeP"    # [I
    .param p4, "Ch"    # [[B
    .param p5, "hCv"    # [B
    .param p6, "salt"    # [B
    .param p7, "pubKey"    # [I
    .param p8, "plaintext"    # [I
    .param p9, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "challengeHash",
            "challengeC",
            "challengeP",
            "Ch",
            "hCv",
            "salt",
            "pubKey",
            "plaintext",
            "message"
        }
    .end annotation

    .line 1930
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1932
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p4, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1930
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1935
    .end local v0    # "t":I
    :cond_0
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 1937
    .local v1, "temp":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v3, p5, v2, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1938
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v3, p6, v2, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1939
    invoke-direct {p0, p7, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    .line 1940
    invoke-direct {p0, p8, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    .line 1941
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p9

    invoke-interface {v0, p9, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1942
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1944
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1946
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->expandChallengeHash([B[I[I)V

    .line 1948
    :cond_1
    return-void
.end method

.method private LowMCEnc([I[I[I)V
    .locals 6
    .param p1, "plaintext"    # [I
    .param p2, "output"    # [I
    .param p3, "key"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "plaintext",
            "output",
            "key"
        }
    .end annotation

    .line 2387
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 2389
    .local v0, "roundKey":[I
    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    .line 2392
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2395
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    .line 2396
    .local v2, "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v4

    invoke-virtual {p0, v0, p3, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 2398
    invoke-virtual {p0, p2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    .line 2400
    const/4 v3, 0x1

    .local v3, "r":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v3, v4, :cond_1

    .line 2402
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v4, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    .line 2403
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v5

    invoke-virtual {p0, v0, p3, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 2405
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->substitution([I)V

    .line 2407
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    .line 2408
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v5

    invoke-virtual {p0, p2, p2, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 2410
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    .line 2411
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v5

    invoke-virtual {p0, p2, p2, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    .line 2412
    invoke-virtual {p0, p2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    .line 2400
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2414
    .end local v3    # "r":I
    :cond_1
    return-void
.end method

.method static appendUnique([III)I
    .locals 2
    .param p0, "list"    # [I
    .param p1, "value"    # I
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "value",
            "position"
        }
    .end annotation

    .line 1974
    if-nez p2, :cond_0

    .line 1976
    aput p1, p0, p2

    .line 1977
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 1980
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1982
    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    .line 1984
    return p2

    .line 1980
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1987
    .end local v0    # "i":I
    :cond_2
    aput p1, p0, p2

    .line 1988
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private arePaddingBitsZero([BI)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bitLength"
        }
    .end annotation

    .line 1060
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    .line 1061
    .local v0, "byteLength":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    mul-int/lit8 v2, v0, 0x8

    if-ge v1, v2, :cond_1

    .line 1063
    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    .line 1064
    .local v2, "bit_i":I
    if-eqz v2, :cond_0

    .line 1066
    const/4 v3, 0x0

    return v3

    .line 1061
    .end local v2    # "bit_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private arePaddingBitsZero([II)Z
    .locals 5
    .param p1, "data"    # [I
    .param p2, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bitLength"
        }
    .end annotation

    .line 1074
    and-int/lit8 v0, p2, 0x1f

    .line 1075
    .local v0, "partialWord":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1076
    return v1

    .line 1078
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result v2

    .line 1079
    .local v2, "mask":I
    ushr-int/lit8 v3, p2, 0x5

    aget v3, p1, v3

    not-int v4, v2

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 6
    .param p1, "mask_a"    # I
    .param p2, "mask_b"    # I
    .param p3, "fresh_output_mask"    # I
    .param p4, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mask_a",
            "mask_b",
            "fresh_output_mask",
            "tape"
        }
    .end annotation

    .line 2231
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v0, v0, -0x1

    .line 2232
    .local v0, "lastParty":I
    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    .line 2233
    .local v1, "and_helper":I
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v2

    iget-object v3, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v0

    iget v4, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v3

    xor-int v1, v2, v3

    .line 2234
    and-int v2, p1, p2

    xor-int/2addr v2, v1

    xor-int/2addr v2, p3

    .line 2235
    .local v2, "aux_bit":I
    iget-object v3, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v0

    iget v4, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v4, v4, -0x1

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 2236
    return-void
.end method

.method static bitsToChunks(I[BI[I)I
    .locals 6
    .param p0, "chunkLenBits"    # I
    .param p1, "input"    # [B
    .param p2, "inputLen"    # I
    .param p3, "chunks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "chunkLenBits",
            "input",
            "inputLen",
            "chunks"
        }
    .end annotation

    .line 1952
    mul-int/lit8 v0, p2, 0x8

    const/4 v1, 0x0

    if-le p0, v0, :cond_0

    .line 1954
    return v1

    .line 1957
    :cond_0
    mul-int/lit8 v0, p2, 0x8

    div-int/2addr v0, p0

    .line 1959
    .local v0, "chunkCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1961
    aput v1, p3, v2

    .line 1962
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p0, :cond_1

    .line 1964
    aget v4, p3, v2

    mul-int v5, v2, p0

    add-int/2addr v5, v3

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v5

    shl-int/2addr v5, v3

    add-int/2addr v4, v5

    aput v4, p3, v2

    .line 1962
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1959
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1969
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private commit([B[B[B[BII)V
    .locals 4
    .param p1, "digest_arr"    # [B
    .param p2, "seed"    # [B
    .param p3, "aux"    # [B
    .param p4, "salt"    # [B
    .param p5, "t"    # I
    .param p6, "j"    # I
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
            "digest_arr",
            "seed",
            "aux",
            "salt",
            "t",
            "j"
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2278
    if-eqz p3, :cond_0

    .line 2280
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2282
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v1, 0x20

    invoke-interface {v0, p4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2283
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2284
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2285
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 2286
    return-void
.end method

.method private commit_h([B[[B)V
    .locals 5
    .param p1, "digest_arr"    # [B
    .param p2, "C"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest_arr",
            "C"
        }
    .end annotation

    .line 2049
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2051
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p2, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2053
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 2054
    return-void
.end method

.method private commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 5
    .param p1, "digest_arr"    # [B
    .param p2, "input"    # [B
    .param p3, "msg"    # Lorg/bouncycastle/pqc/crypto/picnic/Msg;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest_arr",
            "input",
            "msg"
        }
    .end annotation

    .line 2058
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2059
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v0, v1, :cond_0

    .line 2061
    iget v1, p3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v1

    .line 2062
    .local v1, "msgs_size":I
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2059
    .end local v1    # "msgs_size":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2064
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 2065
    return-void
.end method

.method private computeSaltAndRootSeed([B[I[I[I[B)V
    .locals 4
    .param p1, "saltAndRoot"    # [B
    .param p2, "privateKey"    # [I
    .param p3, "pubKey"    # [I
    .param p4, "plaintext"    # [I
    .param p5, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "saltAndRoot",
            "privateKey",
            "pubKey",
            "plaintext",
            "message"
        }
    .end annotation

    .line 2290
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 2293
    .local v0, "temp":[B
    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    .line 2294
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p5

    const/4 v3, 0x0

    invoke-interface {v1, p5, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2295
    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    .line 2296
    invoke-direct {p0, p4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    .line 2297
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    int-to-short v1, v1

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 2298
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2299
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 2300
    return-void
.end method

.method private computeSeeds([I[I[I[B)[B
    .locals 8
    .param p1, "privateKey"    # [I
    .param p2, "publicKey"    # [I
    .param p3, "plaintext"    # [I
    .param p4, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "publicKey",
            "plaintext",
            "message"
        }
    .end annotation

    .line 1757
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int v1, v1, v2

    mul-int v0, v0, v1

    const/16 v1, 0x20

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1758
    .local v0, "allSeeds":[B
    new-array v2, v1, [B

    .line 1760
    .local v2, "temp":[B
    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    .line 1761
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v4, p4

    const/4 v5, 0x0

    invoke-interface {v3, p4, v5, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1762
    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    .line 1763
    invoke-direct {p0, p3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    .line 1764
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v3, v4, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1767
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int v6, v6, v7

    mul-int v4, v4, v6

    add-int/2addr v4, v1

    invoke-interface {v3, v0, v5, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1769
    return-object v0
.end method

.method private contains([III)Z
    .locals 2
    .param p1, "list"    # [I
    .param p2, "len"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "len",
            "value"
        }
    .end annotation

    .line 2240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 2242
    aget v1, p1, v0

    if-ne v1, p3, :cond_0

    .line 2244
    const/4 v1, 0x1

    return v1

    .line 2240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2247
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private countNonZeroChallenges([BI)I
    .locals 8
    .param p1, "challengeBits"    # [B
    .param p2, "challengeBitsOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "challengeBits",
            "challengeBitsOffset"
        }
    .end annotation

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "count":I
    const/4 v1, 0x0

    .line 741
    .local v1, "challenges3":I
    const/4 v2, 0x0

    .line 742
    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, 0x10

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const v5, 0x55555555

    if-gt v3, v4, :cond_0

    .line 744
    ushr-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p2

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 745
    .local v3, "challenges":I
    ushr-int/lit8 v4, v3, 0x1

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    .line 746
    ushr-int/lit8 v4, v3, 0x1

    xor-int/2addr v4, v3

    and-int/2addr v4, v5

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 747
    nop

    .end local v3    # "challenges":I
    add-int/lit8 v2, v2, 0x10

    .line 748
    goto :goto_0

    .line 750
    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x2

    .line 751
    .local v3, "remainingBits":I
    if-lez v3, :cond_1

    .line 753
    add-int/lit8 v4, v3, 0x7

    div-int/lit8 v4, v4, 0x8

    .line 754
    .local v4, "remainingBytes":I
    ushr-int/lit8 v6, v2, 0x2

    add-int/2addr v6, p2

    invoke-static {p1, v6, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v6

    .line 755
    .local v6, "challenges":I
    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result v7

    and-int/2addr v6, v7

    .line 756
    ushr-int/lit8 v7, v6, 0x1

    and-int/2addr v7, v6

    or-int/2addr v1, v7

    .line 757
    ushr-int/lit8 v7, v6, 0x1

    xor-int/2addr v7, v6

    and-int/2addr v7, v5

    invoke-static {v7}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v7

    add-int/2addr v0, v7

    .line 760
    .end local v4    # "remainingBytes":I
    .end local v6    # "challenges":I
    :cond_1
    and-int v4, v1, v5

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_1
    return v4
.end method

.method private createRandomTape([BI[BII[BI)Z
    .locals 4
    .param p1, "seed"    # [B
    .param p2, "seedOffset"    # I
    .param p3, "salt"    # [B
    .param p4, "roundNumber"    # I
    .param p5, "playerNumber"    # I
    .param p6, "tape"    # [B
    .param p7, "tapeLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "seedOffset",
            "salt",
            "roundNumber",
            "playerNumber",
            "tape",
            "tapeLen"
        }
    .end annotation

    .line 1732
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v1, 0x0

    if-ge p7, v0, :cond_0

    .line 1734
    return v1

    .line 1738
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 1739
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p1, p2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1740
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p6, v1, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1745
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p6, v1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1746
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v3, 0x20

    invoke-interface {v0, p3, v1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1747
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1748
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1749
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1750
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p6, v1, p7}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1752
    const/4 v0, 0x1

    return v0
.end method

.method private createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V
    .locals 7
    .param p1, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p2, "seeds"    # [[B
    .param p3, "seedsOffset"    # I
    .param p4, "salt"    # [B
    .param p5, "t"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tape",
            "seeds",
            "seedsOffset",
            "salt",
            "t"
        }
    .end annotation

    .line 2104
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2105
    .local v0, "tapeSizeBytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v2, v3, :cond_0

    .line 2107
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    add-int v4, v2, p3

    aget-object v4, p2, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2108
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v4, 0x20

    invoke-interface {v3, p4, v6, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2109
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v4

    invoke-interface {v3, v4, v6, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2110
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v4

    invoke-interface {v3, v4, v6, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2111
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v4, v4, v2

    invoke-interface {v3, v4, v6, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 2105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2113
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private deserializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BII)I
    .locals 19
    .param p1, "sig"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    .param p2, "sigBytes"    # [B
    .param p3, "sigBytesLen"    # I
    .param p4, "sigBytesOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigBytes",
            "sigBytesLen",
            "sigBytesOffset"
        }
    .end annotation

    .line 650
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    .line 651
    .local v5, "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    .line 652
    .local v6, "challengeBits":[B
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v7

    .line 655
    .local v7, "challengesLength":I
    const/4 v9, -0x1

    if-ge v3, v7, :cond_0

    .line 657
    return v9

    .line 661
    :cond_0
    invoke-direct {v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->countNonZeroChallenges([BI)I

    move-result v10

    .line 662
    .local v10, "numNonZeroChallenges":I
    if-gez v10, :cond_1

    .line 663
    return v9

    .line 665
    :cond_1
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int v11, v11, v10

    .line 666
    .local v11, "inputShareSize":I
    add-int/lit8 v12, v7, 0x20

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v14, v14, 0x2

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v14, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v14, v15

    mul-int v13, v13, v14

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    .line 669
    .local v12, "bytesRequired":I
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 671
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    sub-int/2addr v15, v10

    mul-int v13, v13, v15

    add-int/2addr v12, v13

    .line 672
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    mul-int v13, v13, v10

    add-int/2addr v12, v13

    .line 675
    :cond_2
    if-eq v3, v12, :cond_3

    .line 677
    sget-object v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sigBytesLen = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", expected bytesRequired = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    const/16 v16, -0x1

    const-string v9, "deserializeSignature"

    invoke-virtual {v8, v13, v15, v9, v14}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return v16

    .line 681
    :cond_3
    const/16 v16, -0x1

    const/4 v9, 0x0

    invoke-static {v2, v4, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    add-int/2addr v4, v7

    .line 684
    .end local p4    # "sigBytesOffset":I
    .local v4, "sigBytesOffset":I
    iget-object v13, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/16 v15, 0x20

    invoke-static {v2, v4, v13, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    add-int/2addr v4, v15

    .line 687
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v13, v15, :cond_a

    .line 689
    invoke-virtual {v0, v6, v13}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v15

    .line 691
    .local v15, "challenge":I
    aget-object v8, v5, v13

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v4, v8, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v4, v8

    .line 695
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_5

    .line 697
    if-nez v15, :cond_4

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_1

    :cond_4
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    .line 698
    .local v8, "view3UnruhLength":I
    :goto_1
    aget-object v14, v5, v13

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {v2, v4, v14, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    add-int/2addr v4, v8

    .line 702
    .end local v8    # "view3UnruhLength":I
    :cond_5
    aget-object v8, v5, v13

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v2, v4, v8, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v4, v8

    .line 705
    aget-object v8, v5, v13

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v2, v4, v8, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v4, v8

    .line 708
    aget-object v8, v5, v13

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v2, v4, v8, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v4, v8

    .line 711
    const/4 v14, 0x1

    if-eq v15, v14, :cond_7

    const/4 v8, 0x2

    if-ne v15, v8, :cond_6

    goto :goto_2

    :cond_6
    const/16 v17, 0x1

    const/16 v18, 0x0

    goto :goto_4

    :cond_7
    const/4 v8, 0x2

    .line 713
    :goto_2
    aget-object v14, v5, v13

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    div-int/lit8 v8, v8, 0x4

    invoke-static {v2, v4, v14, v9, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 714
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v14, 0x81

    if-ne v8, v14, :cond_8

    .line 716
    aget-object v8, v5, v13

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    const/16 v17, 0x1

    add-int/lit8 v14, v14, -0x1

    const/16 v18, 0x0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    aput v9, v8, v14

    goto :goto_3

    .line 714
    :cond_8
    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 719
    :goto_3
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v4, v8

    .line 721
    aget-object v8, v5, v13

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {v0, v8, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([II)Z

    move-result v8

    if-nez v8, :cond_9

    .line 723
    return v16

    .line 687
    .end local v15    # "challenge":I
    :cond_9
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v18, 0x0

    .line 729
    .end local v13    # "i":I
    return v18
.end method

.method private deserializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BII)I
    .locals 21
    .param p1, "sig"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
    .param p2, "sigBytes"    # [B
    .param p3, "sigLen"    # I
    .param p4, "sigBytesOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigBytes",
            "sigLen",
            "sigBytesOffset"
        }
    .end annotation

    .line 951
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/16 v6, 0x20

    add-int/2addr v5, v6

    .line 953
    .local v5, "bytesRequired":I
    array-length v7, v2

    const/4 v8, -0x1

    if-ge v7, v5, :cond_0

    .line 955
    return v8

    .line 958
    :cond_0
    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v10, 0x0

    invoke-static {v2, v4, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 959
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v4, v7

    .line 961
    .end local p4    # "sigBytesOffset":I
    .local v4, "sigBytesOffset":I
    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-static {v2, v4, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 962
    add-int/2addr v4, v6

    .line 964
    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget-object v9, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    invoke-direct {v0, v6, v7, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->expandChallengeHash([B[I[I)V

    .line 967
    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v6, v0, v7, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    .line 968
    .local v6, "tree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-virtual {v6, v7, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeedsSize([II)I

    move-result v7

    iput v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    .line 969
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v5, v7

    .line 973
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v7, v9

    .line 974
    .local v7, "missingLeavesSize":I
    iget-object v9, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v9

    .line 975
    .local v9, "missingLeaves":[I
    new-instance v11, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v11, v0, v12, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    .line 976
    .end local v6    # "tree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .local v11, "tree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    invoke-virtual {v11, v9, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->openMerkleTreeSize([II)I

    move-result v6

    iput v6, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    .line 977
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v5, v6

    .line 980
    const/4 v6, 0x1

    new-array v12, v6, [I

    .line 981
    .local v12, "hideList":[I
    new-instance v13, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v13, v0, v14, v15}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    .line 982
    .end local v11    # "tree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .local v13, "tree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    invoke-virtual {v13, v12, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeedsSize([II)I

    move-result v11

    .line 983
    .local v11, "seedInfoLen":I
    const/4 v14, 0x0

    .local v14, "t":I
    :goto_0
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v14, v15, :cond_3

    .line 985
    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    const/16 p4, 0x1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v15, v6, v14}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 987
    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    const/16 v16, -0x1

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v15, v8, v14}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v8

    aget v6, v6, v8

    .line 988
    .local v6, "P_t":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_1

    .line 990
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v5, v8

    .line 992
    :cond_1
    add-int/2addr v5, v11

    .line 993
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v5, v8

    .line 994
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v5, v8

    .line 995
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v5, v8

    goto :goto_1

    .line 985
    .end local v6    # "P_t":I
    :cond_2
    const/16 v16, -0x1

    .line 983
    :goto_1
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    const/4 v8, -0x1

    goto :goto_0

    :cond_3
    const/16 p4, 0x1

    const/16 v16, -0x1

    .line 1000
    .end local v14    # "t":I
    const-string v6, "deserializeSignature2"

    const-string v8, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    if-eq v3, v5, :cond_4

    .line 1002
    sget-object v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v7

    .end local v7    # "missingLeavesSize":I
    .local v17, "missingLeavesSize":I
    const-string/jumbo v7, "sigLen = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ", expected bytesRequired = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v14, v8, v6, v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    return v16

    .line 1006
    .end local v17    # "missingLeavesSize":I
    .restart local v7    # "missingLeavesSize":I
    :cond_4
    move/from16 v17, v7

    .end local v7    # "missingLeavesSize":I
    .restart local v17    # "missingLeavesSize":I
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    new-array v7, v7, [B

    iput-object v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    .line 1007
    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    invoke-static {v2, v4, v7, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v4, v7

    .line 1011
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    new-array v7, v7, [B

    iput-object v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    .line 1012
    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-static {v2, v4, v7, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1013
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v4, v7

    .line 1016
    const/4 v7, 0x0

    .local v7, "t":I
    :goto_2
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v7, v14, :cond_8

    .line 1018
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v14, v15, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1020
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    invoke-direct {v15, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v15, v14, v7

    .line 1021
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v14, v14, v7

    iput v11, v14, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    .line 1022
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v14, v14, v7

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v15, v15, v7

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    new-array v15, v15, [B

    iput-object v15, v14, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    .line 1023
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v15, v15, v7

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    invoke-static {v2, v4, v14, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1024
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v14, v14, v7

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v4, v14

    .line 1026
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v15, v10, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v10

    aget v10, v14, v10

    .line 1027
    .local v10, "P_t":I
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v14, v14, -0x1

    if-eq v10, v14, :cond_5

    .line 1029
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v3, 0x0

    invoke-static {v2, v4, v14, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1030
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v4, v3

    .line 1031
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v7

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/lit8 v14, v14, 0x3

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int v14, v14, v15

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([BI)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1033
    sget-object v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v15, "failed while deserializing aux bits"

    invoke-virtual {v3, v14, v8, v6, v15}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    return v16

    .line 1037
    :cond_5
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v7

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    const/4 v15, 0x0

    invoke-static {v2, v4, v3, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v4, v3

    .line 1040
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    .line 1041
    .local v3, "msgsByteLength":I
    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    invoke-static {v2, v4, v14, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    add-int/2addr v4, v3

    .line 1043
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/lit8 v14, v14, 0x3

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int v14, v14, v15

    .line 1044
    .local v14, "msgsBitLength":I
    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v15, v15, v7

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    invoke-direct {v0, v15, v14}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([BI)Z

    move-result v15

    if-nez v15, :cond_6

    .line 1046
    sget-object v15, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    move/from16 v19, v3

    .end local v3    # "msgsByteLength":I
    .local v19, "msgsByteLength":I
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move/from16 v20, v5

    .end local v5    # "bytesRequired":I
    .local v20, "bytesRequired":I
    const-string v5, "failed while deserializing msgs bits"

    invoke-virtual {v15, v3, v8, v6, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return v16

    .line 1050
    .end local v19    # "msgsByteLength":I
    .end local v20    # "bytesRequired":I
    .restart local v3    # "msgsByteLength":I
    .restart local v5    # "bytesRequired":I
    :cond_6
    move/from16 v19, v3

    move/from16 v20, v5

    .end local v3    # "msgsByteLength":I
    .end local v5    # "bytesRequired":I
    .restart local v19    # "msgsByteLength":I
    .restart local v20    # "bytesRequired":I
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v7

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v15, 0x0

    invoke-static {v2, v4, v3, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1051
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v4, v3

    goto :goto_3

    .line 1018
    .end local v10    # "P_t":I
    .end local v14    # "msgsBitLength":I
    .end local v19    # "msgsByteLength":I
    .end local v20    # "bytesRequired":I
    .restart local v5    # "bytesRequired":I
    :cond_7
    move/from16 v20, v5

    .line 1016
    .end local v5    # "bytesRequired":I
    .restart local v20    # "bytesRequired":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p3

    move/from16 v5, v20

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1055
    .end local v7    # "t":I
    .end local v20    # "bytesRequired":I
    .restart local v5    # "bytesRequired":I
    :cond_8
    const/16 v18, 0x0

    return v18
.end method

.method private expandChallengeHash([B[I[I)V
    .locals 12
    .param p1, "challengeHash"    # [B
    .param p2, "challengeC"    # [I
    .param p3, "challengeP"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "challengeHash",
            "challengeC",
            "challengeP"
        }
    .end annotation

    .line 1994
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v0

    .line 1995
    .local v0, "bitsPerChunkC":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v1

    .line 1996
    .local v1, "bitsPerChunkP":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v2, v3

    new-array v2, v2, [I

    .line 1997
    .local v2, "chunks":[I
    const/16 v3, 0x40

    new-array v3, v3, [B

    .line 1999
    .local v3, "h":[B
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2001
    const/4 v4, 0x0

    .line 2002
    .local v4, "countC":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    const/4 v7, 0x1

    if-ge v4, v6, :cond_3

    .line 2004
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v0, v3, v6, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->bitsToChunks(I[BI[I)I

    move-result v6

    .line 2005
    .local v6, "numChunks":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 2007
    aget v9, v2, v8

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v9, v10, :cond_0

    .line 2009
    aget v9, v2, v8

    invoke-static {p2, v9, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->appendUnique([III)I

    move-result v4

    .line 2011
    :cond_0
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ne v4, v9, :cond_1

    .line 2013
    goto :goto_2

    .line 2005
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2017
    .end local v8    # "i":I
    :cond_2
    :goto_2
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v8, v7}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 2018
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v7, v3, v5, v8}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2019
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v7, v3, v5, v8}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 2020
    .end local v6    # "numChunks":I
    goto :goto_0

    .line 2023
    :cond_3
    const/4 v6, 0x0

    .line 2025
    .local v6, "countP":I
    :goto_3
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ge v6, v8, :cond_7

    .line 2027
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v1, v3, v8, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->bitsToChunks(I[BI[I)I

    move-result v8

    .line 2028
    .local v8, "numChunks":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v8, :cond_6

    .line 2030
    aget v10, v2, v9

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v10, v11, :cond_4

    .line 2032
    aget v10, v2, v9

    aput v10, p3, v6

    .line 2033
    add-int/lit8 v6, v6, 0x1

    .line 2035
    :cond_4
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ne v6, v10, :cond_5

    .line 2037
    goto :goto_5

    .line 2028
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2041
    .end local v9    # "i":I
    :cond_6
    :goto_5
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v9, v7}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 2042
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v9, v3, v5, v10}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2043
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v9, v3, v5, v10}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 2044
    .end local v8    # "numChunks":I
    goto :goto_3

    .line 2045
    :cond_7
    return-void
.end method

.method static extend(I)I
    .locals 1
    .param p0, "bit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bit"
        }
    .end annotation

    .line 2151
    add-int/lit8 v0, p0, -0x1

    not-int v0, v0

    return v0
.end method

.method private getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 8
    .param p1, "output"    # [B
    .param p2, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "tape"
        }
    .end annotation

    .line 2260
    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 2261
    .local v0, "lastTape":[B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "pos":I
    const/4 v3, 0x0

    .line 2263
    .local v3, "tapePos":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-ge v4, v5, :cond_1

    .line 2265
    add-int/2addr v3, v1

    .line 2267
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 2269
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .local v6, "pos":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "tapePos":I
    .local v7, "tapePos":I
    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v3

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 2267
    add-int/lit8 v5, v5, 0x1

    move v2, v6

    move v3, v7

    goto :goto_1

    .line 2263
    .end local v5    # "i":I
    .end local v6    # "pos":I
    .end local v7    # "tapePos":I
    .restart local v2    # "pos":I
    .restart local v3    # "tapePos":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2272
    .end local v4    # "j":I
    :cond_1
    return-void
.end method

.method private getMissingLeavesList([I)[I
    .locals 5
    .param p1, "challengeC"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "challengeC"
        }
    .end annotation

    .line 1909
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v0, v1

    .line 1910
    .local v0, "missingLeavesSize":I
    new-array v1, v0, [I

    .line 1911
    .local v1, "missingLeaves":[I
    const/4 v2, 0x0

    .line 1913
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v4, :cond_1

    .line 1915
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, p1, v4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1917
    aput v3, v1, v2

    .line 1918
    add-int/lit8 v2, v2, 0x1

    .line 1913
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1922
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method private implH3([I[I[[[B[B[B[B[[[B)V
    .locals 14
    .param p1, "circuitOutput"    # [I
    .param p2, "plaintext"    # [I
    .param p3, "as"    # [[[B
    .param p4, "challengeBits"    # [B
    .param p5, "salt"    # [B
    .param p6, "message"    # [B
    .param p7, "gs"    # [[[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "circuitOutput",
            "plaintext",
            "as",
            "challengeBits",
            "salt",
            "message",
            "gs"
        }
    .end annotation

    .line 1478
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v2, v2, [B

    .line 1482
    .local v2, "hash":[B
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    const/4 v6, 0x0

    aput-byte v6, v0, v3

    .line 1485
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v8, 0x3

    if-ge v3, v7, :cond_1

    .line 1487
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 1489
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v10, p3, v3

    aget-object v10, v10, v7

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v9, v10, v6, v11}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1487
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1485
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1494
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v3, v5, :cond_4

    .line 1496
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v7, :cond_4

    .line 1498
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    if-ge v7, v8, :cond_3

    .line 1500
    if-ne v7, v4, :cond_2

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_4

    :cond_2
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    .line 1501
    .local v9, "view3UnruhLength":I
    :goto_4
    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v11, p7, v3

    aget-object v11, v11, v7

    invoke-interface {v10, v11, v6, v9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1498
    .end local v9    # "view3UnruhLength":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1496
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1507
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v3, v4, v6, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1508
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v3, v4, v6, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1511
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v4, 0x20

    move-object/from16 v7, p5

    invoke-interface {v3, v7, v6, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1512
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v4, v1

    invoke-interface {v3, v1, v6, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1513
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v3, v2, v6, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 1516
    const/4 v3, 0x0

    .line 1517
    .local v3, "round":I
    const/4 v4, 0x1

    .line 1518
    .local v4, "isNotDone":Z
    :goto_5
    if-eqz v4, :cond_a

    .line 1520
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    if-ge v9, v10, :cond_8

    .line 1522
    aget-byte v10, v2, v9

    .line 1524
    .local v10, "one_byte":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_7
    const/16 v12, 0x8

    if-ge v11, v12, :cond_6

    .line 1526
    rsub-int/lit8 v12, v11, 0x6

    ushr-int v12, v10, v12

    and-int/2addr v12, v8

    .line 1527
    .local v12, "bitPair":I
    if-ge v12, v8, :cond_5

    .line 1529
    invoke-direct {p0, v0, v3, v12}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->setChallenge([BII)V

    .line 1530
    add-int/lit8 v3, v3, 0x1

    .line 1531
    iget v13, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ne v3, v13, :cond_5

    .line 1533
    const/4 v4, 0x0

    .line 1534
    goto :goto_8

    .line 1524
    .end local v12    # "bitPair":I
    :cond_5
    add-int/lit8 v11, v11, 0x2

    goto :goto_7

    .line 1538
    .end local v11    # "j":I
    :cond_6
    :goto_8
    if-nez v4, :cond_7

    .line 1540
    goto :goto_9

    .line 1520
    .end local v10    # "one_byte":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1543
    .end local v9    # "i":I
    :cond_8
    :goto_9
    if-nez v4, :cond_9

    .line 1545
    goto :goto_a

    .line 1548
    :cond_9
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v9, v5}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 1549
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v9, v2, v6, v10}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 1550
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v9, v2, v6, v10}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_5

    .line 1552
    :cond_a
    :goto_a
    return-void
.end method

.method static indexOf([III)I
    .locals 2
    .param p0, "list"    # [I
    .param p1, "len"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "len",
            "value"
        }
    .end annotation

    .line 1897
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 1899
    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 1901
    return v0

    .line 1897
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1904
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static is_picnic3(I)Z
    .locals 1
    .param p0, "params"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 2310
    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I
    .locals 4
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "mask_a"    # I
    .param p4, "mask_b"    # I
    .param p5, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p6, "msg"    # Lorg/bouncycastle/pqc/crypto/picnic/Msg;
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
            "a",
            "b",
            "mask_a",
            "mask_b",
            "tape",
            "msg"
        }
    .end annotation

    .line 2166
    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v0

    .line 2167
    .local v0, "and_helper":I
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->extend(I)I

    move-result v1

    and-int/2addr v1, p4

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->extend(I)I

    move-result v2

    and-int/2addr v2, p3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v0

    .line 2169
    .local v1, "s_shares":I
    iget v2, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    if-ltz v2, :cond_0

    .line 2171
    iget-object v2, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    iget v3, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    aget-object v2, v2, v3

    iget v3, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    .line 2172
    .local v2, "unopenedPartyBit":I
    iget v3, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit(III)I

    move-result v1

    .line 2176
    .end local v2    # "unopenedPartyBit":I
    :cond_0
    invoke-direct {p0, v1, p6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->wordToMsgs(ILorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    .line 2177
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v2

    and-int v3, p1, p2

    xor-int/2addr v2, v3

    return v2
.end method

.method private mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 9
    .param p1, "in1"    # [I
    .param p2, "in2"    # [I
    .param p3, "out"    # [I
    .param p4, "rand"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p5, "views"    # [Lorg/bouncycastle/pqc/crypto/picnic/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in1",
            "in2",
            "out",
            "rand",
            "views"
        }
    .end annotation

    .line 1686
    iget-object v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v0

    .line 1687
    .local v0, "r0":I
    iget-object v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v4, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    .line 1688
    .local v2, "r1":I
    iget-object v4, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v6, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v4

    .line 1690
    .local v4, "r2":I
    aget v6, p1, v1

    aget v7, p2, v3

    and-int/2addr v6, v7

    aget v7, p1, v3

    aget v8, p2, v1

    and-int/2addr v7, v8

    xor-int/2addr v6, v7

    aget v7, p1, v1

    aget v8, p2, v1

    and-int/2addr v7, v8

    xor-int/2addr v6, v7

    xor-int/2addr v6, v0

    xor-int/2addr v6, v2

    aput v6, p3, v1

    .line 1691
    aget v6, p1, v3

    aget v7, p2, v5

    and-int/2addr v6, v7

    aget v7, p1, v5

    aget v8, p2, v3

    and-int/2addr v7, v8

    xor-int/2addr v6, v7

    aget v7, p1, v3

    aget v8, p2, v3

    and-int/2addr v7, v8

    xor-int/2addr v6, v7

    xor-int/2addr v6, v2

    xor-int/2addr v6, v4

    aput v6, p3, v3

    .line 1692
    aget v6, p1, v5

    aget v7, p2, v1

    and-int/2addr v6, v7

    aget v7, p1, v1

    aget v8, p2, v5

    and-int/2addr v7, v8

    xor-int/2addr v6, v7

    aget v7, p1, v5

    aget v8, p2, v5

    and-int/2addr v7, v8

    xor-int/2addr v6, v7

    xor-int/2addr v6, v4

    xor-int/2addr v6, v0

    aput v6, p3, v5

    .line 1694
    aget-object v6, p5, v1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v7, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v1, p3, v1

    int-to-byte v1, v1

    invoke-static {v6, v7, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 1695
    aget-object v1, p5, v3

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v6, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v7, p3, v3

    int-to-byte v7, v7

    invoke-static {v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 1696
    aget-object v1, p5, v5

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v6, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v5, p3, v5

    int-to-byte v5, v5

    invoke-static {v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 1698
    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/2addr v1, v3

    iput v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 1699
    return-void
.end method

.method private mpc_LowMC(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;[I[I)V
    .locals 12
    .param p1, "tapes"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p2, "views"    # [Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p3, "plaintext"    # [I
    .param p4, "slab"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tapes",
            "views",
            "plaintext",
            "slab"
        }
    .end annotation

    .line 1588
    move-object/from16 v1, p4

    array-length v0, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v0, v8}, Lorg/bouncycastle/util/Arrays;->fill([IIII)V

    .line 1590
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    const/4 v9, 0x3

    mul-int/lit8 v2, v0, 0x3

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant([II[III)V

    .line 1592
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v1, p0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    .line 1593
    .local v7, "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    const/4 v1, 0x0

    move v10, v1

    .local v10, "player":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1595
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v10, v1

    aget-object v1, p2, v10

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    .line 1596
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    .line 1595
    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    .line 1593
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    .line 1599
    .end local v10    # "player":I
    invoke-direct {p0, v1, v1, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    .line 1601
    const/4 v2, 0x1

    move v10, v2

    .local v10, "r":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v10, v2, :cond_2

    .line 1603
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    .line 1604
    const/4 v2, 0x0

    move v11, v2

    .local v11, "player":I
    :goto_2
    if-ge v11, v9, :cond_1

    .line 1606
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v2, v11

    aget-object v3, p2, v11

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    .line 1608
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    .line 1606
    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    .line 1604
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1611
    .end local v11    # "player":I
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_substitution([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    .line 1613
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v11

    .line 1614
    .end local v7    # "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .local v11, "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v3, 0x3

    .line 1616
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    .line 1614
    const/4 v7, 0x3

    move-object/from16 v3, p4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_matrix_mul([II[II[III)V

    .line 1618
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v1, p0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    .line 1619
    .end local v11    # "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .restart local v7    # "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v1, 0x3

    .line 1620
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    .line 1619
    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant([II[III)V

    .line 1622
    invoke-direct {p0, v1, v1, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    .line 1601
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1625
    .end local v10    # "r":I
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v9, :cond_3

    .line 1627
    add-int/lit8 v3, v2, 0x3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v3, v3, v4

    aget-object v4, p2, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v1, v3, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1625
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1629
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private mpc_matrix_mul([II[II[III)V
    .locals 9
    .param p1, "output"    # [I
    .param p2, "outputOffset"    # I
    .param p3, "state"    # [I
    .param p4, "stateOffset"    # I
    .param p5, "matrix"    # [I
    .param p6, "matrixOffset"    # I
    .param p7, "players"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "outputOffset",
            "state",
            "stateOffset",
            "matrix",
            "matrixOffset",
            "players"
        }
    .end annotation

    .line 1712
    const/4 v1, 0x0

    move v7, v1

    .local v7, "player":I
    :goto_0
    move/from16 v8, p7

    if-ge v7, v8, :cond_0

    .line 1714
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v1, v1, v7

    add-int v2, p2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v1, v1, v7

    add-int v4, p4, v1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    .line 1712
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1718
    .end local v7    # "player":I
    :cond_0
    return-void
.end method

.method private mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 15
    .param p1, "state"    # [I
    .param p2, "state_masks"    # [I
    .param p3, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p4, "msg"    # Lorg/bouncycastle/pqc/crypto/picnic/Msg;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "state_masks",
            "tape",
            "msg"
        }
    .end annotation

    .line 2182
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    .line 2184
    add-int/lit8 v2, v1, 0x2

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v4

    .line 2185
    .local v4, "a":I
    add-int/lit8 v2, v1, 0x2

    aget v6, p2, v2

    .line 2187
    .local v6, "mask_a":I
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    .line 2188
    .local v5, "b":I
    add-int/lit8 v2, v1, 0x1

    aget v7, p2, v2

    .line 2190
    .local v7, "mask_b":I
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    .line 2191
    .local v2, "c":I
    aget v11, p2, v1

    .line 2193
    .local v11, "mask_c":I
    move-object v3, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v14

    .line 2194
    .local v14, "ab":I
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move v9, v2

    move v8, v5

    move v10, v7

    move-object v7, p0

    .end local v2    # "c":I
    .end local v5    # "b":I
    .end local v7    # "mask_b":I
    .local v8, "b":I
    .local v9, "c":I
    .local v10, "mask_b":I
    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v2

    .line 2195
    move v7, v6

    move v6, v11

    move v11, v10

    move v10, v8

    .end local v8    # "b":I
    .local v2, "bc":I
    .local v6, "mask_c":I
    .local v7, "mask_a":I
    .local v10, "b":I
    .local v11, "mask_b":I
    move-object/from16 v8, p3

    move v5, v4

    move v4, v9

    move-object/from16 v9, p4

    .end local v9    # "c":I
    .local v4, "c":I
    .local v5, "a":I
    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v12

    .line 2197
    move v9, v4

    move v4, v5

    move v3, v6

    move v6, v7

    .end local v5    # "a":I
    .end local v7    # "mask_a":I
    .local v3, "mask_c":I
    .local v4, "a":I
    .local v6, "mask_a":I
    .restart local v9    # "c":I
    .local v12, "ca":I
    xor-int v5, v4, v2

    .line 2198
    .local v5, "d":I
    xor-int v7, v4, v10

    xor-int/2addr v7, v12

    .line 2199
    .local v7, "e":I
    xor-int v8, v4, v10

    xor-int/2addr v8, v9

    xor-int/2addr v8, v14

    .line 2201
    .local v8, "f":I
    add-int/lit8 v13, v1, 0x2

    invoke-static {v0, v13, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 2202
    add-int/lit8 v13, v1, 0x1

    invoke-static {v0, v13, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 2203
    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 2182
    .end local v2    # "bc":I
    .end local v3    # "mask_c":I
    .end local v4    # "a":I
    .end local v5    # "d":I
    .end local v6    # "mask_a":I
    .end local v7    # "e":I
    .end local v8    # "f":I
    .end local v9    # "c":I
    .end local v10    # "b":I
    .end local v11    # "mask_b":I
    .end local v12    # "ca":I
    .end local v14    # "ab":I
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 2205
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private mpc_substitution([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 15
    .param p1, "state"    # [I
    .param p2, "rand"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p3, "views"    # [Lorg/bouncycastle/pqc/crypto/picnic/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "rand",
            "views"
        }
    .end annotation

    .line 1649
    move-object/from16 v0, p1

    const/4 v1, 0x3

    new-array v3, v1, [I

    .line 1650
    .local v3, "a":[I
    new-array v4, v1, [I

    .line 1651
    .local v4, "b":[I
    new-array v8, v1, [I

    .line 1653
    .local v8, "c":[I
    new-array v5, v1, [I

    .line 1654
    .local v5, "ab":[I
    new-array v9, v1, [I

    .line 1655
    .local v9, "bc":[I
    new-array v10, v1, [I

    .line 1658
    .local v10, "ca":[I
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v11, v2, :cond_2

    .line 1661
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 1663
    add-int/lit8 v6, v2, 0x3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v6, v6, v7

    mul-int/lit8 v6, v6, 0x20

    .line 1664
    .local v6, "stateOffset":I
    add-int v7, v6, v11

    add-int/lit8 v7, v7, 0x2

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v7

    aput v7, v3, v2

    .line 1665
    add-int v7, v6, v11

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v7

    aput v7, v4, v2

    .line 1666
    add-int v7, v6, v11

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v7

    aput v7, v8, v2

    .line 1661
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1669
    .end local v2    # "j":I
    .end local v6    # "stateOffset":I
    :cond_0
    move-object v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    .line 1670
    move-object v12, v5

    .end local v5    # "ab":[I
    .local v12, "ab":[I
    move-object v5, v4

    move-object v6, v8

    move-object v7, v9

    move-object v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .end local v4    # "b":[I
    .end local v8    # "c":[I
    .end local v9    # "bc":[I
    .local v5, "b":[I
    .local v6, "c":[I
    .local v7, "bc":[I
    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    .line 1671
    move-object v8, v5

    move-object v9, v7

    .end local v5    # "b":[I
    .end local v7    # "bc":[I
    .local v8, "b":[I
    .restart local v9    # "bc":[I
    move-object/from16 v7, p3

    move-object v4, v3

    move-object v3, v6

    move-object v5, v10

    move-object/from16 v6, p2

    .end local v6    # "c":[I
    .end local v10    # "ca":[I
    .local v3, "c":[I
    .local v4, "a":[I
    .local v5, "ca":[I
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    .line 1673
    move-object v6, v3

    move-object v3, v4

    .end local v4    # "a":[I
    .local v3, "a":[I
    .restart local v6    # "c":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v1, :cond_1

    .line 1675
    add-int/lit8 v7, v4, 0x3

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v7, v7, v10

    mul-int/lit8 v7, v7, 0x20

    .line 1676
    .local v7, "stateOffset":I
    add-int v10, v7, v11

    add-int/lit8 v10, v10, 0x2

    aget v13, v3, v4

    aget v14, v9, v4

    xor-int/2addr v13, v14

    invoke-static {v0, v10, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 1677
    add-int v10, v7, v11

    add-int/lit8 v10, v10, 0x1

    aget v13, v3, v4

    aget v14, v8, v4

    xor-int/2addr v13, v14

    aget v14, v5, v4

    xor-int/2addr v13, v14

    invoke-static {v0, v10, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 1678
    add-int v10, v7, v11

    aget v13, v3, v4

    aget v14, v8, v4

    xor-int/2addr v13, v14

    aget v14, v6, v4

    xor-int/2addr v13, v14

    aget v14, v12, v4

    xor-int/2addr v13, v14

    invoke-static {v0, v10, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 1673
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1658
    .end local v4    # "j":I
    .end local v7    # "stateOffset":I
    :cond_1
    add-int/lit8 v11, v11, 0x3

    move-object v10, v5

    move-object v4, v8

    move-object v5, v12

    move-object v8, v6

    goto/16 :goto_0

    .line 1681
    .end local v6    # "c":[I
    .end local v11    # "i":I
    .end local v12    # "ab":[I
    .local v4, "b":[I
    .local v5, "ab":[I
    .local v8, "c":[I
    .restart local v10    # "ca":[I
    :cond_2
    return-void
.end method

.method private mpc_xor([I[II)V
    .locals 5
    .param p1, "state"    # [I
    .param p2, "in"    # [I
    .param p3, "players"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "in",
            "players"
        }
    .end annotation

    .line 1703
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v1, v1, p3

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1705
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v2, p3

    add-int/2addr v2, v0

    aget v3, p1, v2

    aget v4, p2, v0

    xor-int/2addr v3, v4

    aput v3, p1, v2

    .line 1703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1707
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    return-void
.end method

.method private mpc_xor_constant([II[III)V
    .locals 4
    .param p1, "state"    # [I
    .param p2, "stateOffset"    # I
    .param p3, "in"    # [I
    .param p4, "inOffset"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "stateOffset",
            "in",
            "inOffset",
            "len"
        }
    .end annotation

    .line 1723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 1725
    add-int v1, v0, p2

    aget v2, p1, v1

    add-int v3, v0, p4

    aget v3, p3, v3

    xor-int/2addr v2, v3

    aput v2, p1, v1

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1727
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private mpc_xor_constant_verify([I[IIII)V
    .locals 5
    .param p1, "state"    # [I
    .param p2, "in"    # [I
    .param p3, "inOffset"    # I
    .param p4, "length"    # I
    .param p5, "challenge"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "in",
            "inOffset",
            "length",
            "challenge"
        }
    .end annotation

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "offset":I
    const/4 v1, 0x2

    if-nez p5, :cond_0

    .line 631
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v2, 0x2

    .end local v0    # "offset":I
    .local v2, "offset":I
    goto :goto_0

    .line 633
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :cond_0
    if-ne p5, v1, :cond_2

    .line 635
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v1, 0x3

    .line 641
    .end local v0    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_1

    .line 643
    add-int v1, v0, v2

    aget v3, p1, v1

    add-int v4, v0, p3

    aget v4, p2, v4

    xor-int/2addr v3, v4

    aput v3, p1, v1

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 646
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 639
    .end local v2    # "offset":I
    .local v0, "offset":I
    :cond_2
    return-void
.end method

.method private picnic_keygen([B[B[BLjava/security/SecureRandom;)V
    .locals 5
    .param p1, "plaintext_bytes"    # [B
    .param p2, "ciphertext_bytes"    # [B
    .param p3, "data_bytes"    # [B
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "plaintext_bytes",
            "ciphertext_bytes",
            "data_bytes",
            "random"
        }
    .end annotation

    .line 2361
    array-length v0, p3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 2362
    .local v0, "data":[I
    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    .line 2363
    .local v1, "plaintext":[I
    array-length v2, p2

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    .line 2366
    .local v2, "ciphertext":[I
    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2367
    const/4 v3, 0x0

    invoke-static {p3, v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 2368
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    .line 2371
    invoke-virtual {p4, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2372
    invoke-static {p1, v3, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 2373
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    .line 2376
    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LowMCEnc([I[I[I)V

    .line 2379
    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 2380
    invoke-static {v1, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 2381
    invoke-static {v2, p2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 2382
    return-void
.end method

.method private picnic_read_public_key([I[I[B)V
    .locals 6
    .param p1, "ciphertext"    # [I
    .param p2, "plaintext"    # [I
    .param p3, "pk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ciphertext",
            "plaintext",
            "pk"
        }
    .end annotation

    .line 765
    const/4 v0, 0x1

    .local v0, "ciphertextPos":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v1, v1, 0x1

    .line 766
    .local v1, "plaintextPos":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    div-int/lit8 v2, v2, 0x4

    .line 767
    .local v2, "fullWords":I
    const/4 v3, 0x0

    invoke-static {p3, v0, p1, v3, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 768
    invoke-static {p3, v1, p2, v3, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 770
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v2, v3, :cond_0

    .line 772
    mul-int/lit8 v3, v2, 0x4

    .local v3, "fullWordBytes":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    sub-int/2addr v4, v3

    .line 773
    .local v4, "partialWordBytes":I
    add-int v5, v0, v3

    invoke-static {p3, v5, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v5

    aput v5, p1, v2

    .line 774
    add-int v5, v1, v3

    invoke-static {p3, v5, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v5

    aput v5, p2, v2

    .line 776
    .end local v3    # "fullWordBytes":I
    .end local v4    # "partialWordBytes":I
    :cond_0
    return-void
.end method

.method private picnic_sign([B[B[B)Z
    .locals 21
    .param p1, "sk"    # [B
    .param p2, "message"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sk",
            "message",
            "signature"
        }
    .end annotation

    .line 1094
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v1, v1, [I

    .line 1095
    .local v1, "data":[I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v2, v2, [I

    .line 1096
    .local v2, "ciphertext":[I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v3, v3, [I

    .line 1098
    .local v3, "plaintext":[I
    const/4 v8, 0x1

    .local v8, "dataPos":I
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    const/4 v9, 0x1

    add-int/lit8 v10, v4, 0x1

    .local v10, "ciphertextPos":I
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v11, v4, 0x1

    .line 1099
    .local v11, "plaintextPos":I
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    div-int/lit8 v12, v4, 0x4

    .line 1100
    .local v12, "fullWords":I
    const/4 v13, 0x0

    invoke-static {v6, v8, v1, v13, v12}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 1101
    invoke-static {v6, v10, v2, v13, v12}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 1102
    invoke-static {v6, v11, v3, v13, v12}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 1104
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v12, v4, :cond_0

    .line 1106
    mul-int/lit8 v4, v12, 0x4

    .local v4, "fullWordBytes":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    sub-int/2addr v5, v4

    .line 1107
    .local v5, "partialWordBytes":I
    add-int v14, v8, v4

    invoke-static {v6, v14, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v14

    aput v14, v1, v12

    .line 1108
    add-int v14, v10, v4

    invoke-static {v6, v14, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v14

    aput v14, v2, v12

    .line 1109
    add-int v14, v11, v4

    invoke-static {v6, v14, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v14

    aput v14, v3, v12

    .line 1112
    .end local v4    # "fullWordBytes":I
    .end local v5    # "partialWordBytes":I
    :cond_0
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->is_picnic3(I)Z

    move-result v4

    const-string v14, "Failed to serialize signature"

    const-string v15, "Failed to create signature"

    const-string v5, "picnic_sign"

    const/16 v16, 0x1

    const-string v9, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    if-nez v4, :cond_3

    .line 1114
    new-instance v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    .line 1116
    .local v4, "sig":Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    move-object v13, v5

    const/16 v17, 0x0

    move-object v5, v4

    move-object/from16 v4, p2

    .end local v4    # "sig":Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    .local v5, "sig":Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->sign_picnic1([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature;)I

    move-result v18

    .line 1117
    .local v18, "ret":I
    if-eqz v18, :cond_1

    .line 1119
    sget-object v14, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    move-object/from16 v19, v1

    .end local v1    # "data":[I
    .local v19, "data":[I
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v1, v9, v13, v15}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    return v17

    .line 1123
    .end local v19    # "data":[I
    .restart local v1    # "data":[I
    :cond_1
    move-object/from16 v19, v1

    .end local v1    # "data":[I
    .restart local v19    # "data":[I
    array-length v1, v4

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v5, v7, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->serializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BI)I

    move-result v1

    .line 1124
    .local v1, "len":I
    if-gez v1, :cond_2

    .line 1126
    sget-object v15, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    move-object/from16 v20, v2

    .end local v2    # "ciphertext":[I
    .local v20, "ciphertext":[I
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v15, v2, v9, v13, v14}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return v17

    .line 1130
    .end local v20    # "ciphertext":[I
    .restart local v2    # "ciphertext":[I
    :cond_2
    move-object/from16 v20, v2

    .end local v2    # "ciphertext":[I
    .restart local v20    # "ciphertext":[I
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    .line 1131
    const/4 v2, 0x0

    invoke-static {v1, v7, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 1132
    return v16

    .line 1136
    .end local v5    # "sig":Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    .end local v18    # "ret":I
    .end local v19    # "data":[I
    .end local v20    # "ciphertext":[I
    .local v1, "data":[I
    .restart local v2    # "ciphertext":[I
    :cond_3
    move-object/from16 v4, p2

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object v13, v5

    .end local v1    # "data":[I
    .end local v2    # "ciphertext":[I
    .restart local v19    # "data":[I
    .restart local v20    # "ciphertext":[I
    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    .line 1137
    .local v5, "sig":Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
    nop

    .end local v19    # "data":[I
    .end local v20    # "ciphertext":[I
    .restart local v1    # "data":[I
    .restart local v2    # "ciphertext":[I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->sign_picnic3([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature2;)Z

    move-result v18

    .line 1138
    .local v18, "ret":Z
    if-nez v18, :cond_4

    .line 1140
    sget-object v14, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    move-object/from16 v19, v1

    .end local v1    # "data":[I
    .restart local v19    # "data":[I
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v1, v9, v13, v15}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const/16 v17, 0x0

    return v17

    .line 1144
    .end local v19    # "data":[I
    .restart local v1    # "data":[I
    :cond_4
    move-object/from16 v19, v1

    .end local v1    # "data":[I
    .restart local v19    # "data":[I
    array-length v1, v4

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v5, v7, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->serializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BI)I

    move-result v1

    .line 1145
    .local v1, "len":I
    if-gez v1, :cond_5

    .line 1147
    sget-object v15, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    move-object/from16 v20, v2

    .end local v2    # "ciphertext":[I
    .restart local v20    # "ciphertext":[I
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v15, v2, v9, v13, v14}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const/4 v2, 0x0

    return v2

    .line 1151
    .end local v20    # "ciphertext":[I
    .restart local v2    # "ciphertext":[I
    :cond_5
    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "ciphertext":[I
    .restart local v20    # "ciphertext":[I
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    .line 1152
    invoke-static {v1, v7, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 1153
    return v16
.end method

.method private picnic_verify([B[B[BI)I
    .locals 10
    .param p1, "pk"    # [B
    .param p2, "message"    # [B
    .param p3, "signature"    # [B
    .param p4, "sigLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "message",
            "signature",
            "sigLen"
        }
    .end annotation

    .line 344
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v0, v0, [I

    .line 345
    .local v0, "ciphertext":[I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v1, v1, [I

    .line 346
    .local v1, "plaintext":[I
    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_read_public_key([I[I[B)V

    .line 348
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->is_picnic3(I)Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "picnic_verify"

    const-string v5, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    if-eqz v2, :cond_1

    .line 350
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    .line 351
    .local v2, "sig":Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
    array-length v6, p2

    add-int/lit8 v6, v6, 0x4

    invoke-direct {p0, v2, p3, p4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->deserializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BII)I

    move-result v6

    .line 352
    .local v6, "ret":I
    if-eqz v6, :cond_0

    .line 354
    sget-object v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "Error couldn\'t deserialize signature (2)!"

    invoke-virtual {v7, v8, v5, v4, v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return v3

    .line 358
    :cond_0
    invoke-direct {p0, v2, v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verify_picnic3(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[I[I[B)I

    move-result v3

    return v3

    .line 362
    .end local v2    # "sig":Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
    .end local v6    # "ret":I
    :cond_1
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    .line 363
    .local v2, "sig":Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    array-length v6, p2

    add-int/lit8 v6, v6, 0x4

    invoke-direct {p0, v2, p3, p4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->deserializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BII)I

    move-result v6

    .line 364
    .restart local v6    # "ret":I
    if-eqz v6, :cond_2

    .line 366
    sget-object v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "Error couldn\'t deserialize signature!"

    invoke-virtual {v7, v8, v5, v4, v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return v3

    .line 370
    :cond_2
    invoke-direct {p0, v2, v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verify(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[I[I[B)I

    move-result v3

    return v3
.end method

.method private picnic_write_private_key([B[B[B[B)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "ciphertext"    # [B
    .param p3, "plaintext"    # [B
    .param p4, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "ciphertext",
            "plaintext",
            "buf"
        }
    .end annotation

    .line 2330
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2331
    .local v0, "bytesRequired":I
    array-length v2, p4

    if-ge v2, v0, :cond_0

    .line 2333
    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "picnic_write_private_key"

    const-string v4, "Failed writing private key!"

    const-string v5, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    invoke-virtual {v1, v2, v5, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    const/4 v1, -0x1

    return v1

    .line 2336
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, p4, v3

    .line 2337
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p1, v3, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2338
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p2, v3, p4, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2339
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p3, v3, p4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2340
    return v0
.end method

.method private picnic_write_public_key([B[B[B)I
    .locals 6
    .param p1, "ciphertext"    # [B
    .param p2, "plaintext"    # [B
    .param p3, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ciphertext",
            "plaintext",
            "buf"
        }
    .end annotation

    .line 2345
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2346
    .local v0, "bytesRequired":I
    array-length v2, p3

    if-ge v2, v0, :cond_0

    .line 2348
    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "picnic_write_public_key"

    const-string v4, "Failed writing public key!"

    const-string v5, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    invoke-virtual {v1, v2, v5, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    const/4 v1, -0x1

    return v1

    .line 2351
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, p3, v3

    .line 2352
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p1, v3, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2353
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p2, v3, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2354
    return v0
.end method

.method private serializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BI)I
    .locals 7
    .param p1, "sig"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
    .param p2, "sigBytes"    # [B
    .param p3, "sigOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigBytes",
            "sigOffset"
        }
    .end annotation

    .line 1228
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/16 v1, 0x20

    add-int/2addr v0, v1

    .line 1230
    .local v0, "bytesRequired":I
    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v2

    .line 1231
    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v0, v2

    .line 1233
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v2, v3, :cond_2

    .line 1235
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1237
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v4

    aget v3, v3, v4

    .line 1238
    .local v3, "P_t":I
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v0, v4

    .line 1239
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1241
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v4

    .line 1243
    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v4

    .line 1244
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v4

    .line 1245
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, v4

    .line 1233
    .end local v3    # "P_t":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "t":I
    :cond_2
    array-length v2, p2

    if-ge v2, v0, :cond_3

    .line 1251
    const/4 v1, -0x1

    return v1

    .line 1254
    :cond_3
    move v2, p3

    .line 1255
    .local v2, "sigByteIndex":I
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v5, 0x0

    invoke-static {v3, v5, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1256
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v3

    .line 1258
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-static {v3, v5, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    add-int/2addr v2, v1

    .line 1261
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    invoke-static {v1, v5, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1262
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v2, v1

    .line 1264
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-static {v1, v5, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1265
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v2, v1

    .line 1268
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v3, :cond_6

    .line 1270
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1272
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    invoke-static {v3, v5, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1273
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v2, v3

    .line 1275
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v4, v6, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v4

    aget v3, v3, v4

    .line 1277
    .restart local v3    # "P_t":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_4

    .line 1279
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v4, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1280
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v4

    .line 1283
    :cond_4
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {v4, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1284
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v4

    .line 1286
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v4, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1287
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v4

    .line 1289
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v4, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1290
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v4

    .line 1268
    .end local v3    # "P_t":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1294
    .end local v1    # "t":I
    :cond_6
    sub-int v1, v2, p3

    return v1
.end method

.method private setChallenge([BII)V
    .locals 2
    .param p1, "challenge"    # [B
    .param p2, "round"    # I
    .param p3, "trit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "challenge",
            "round",
            "trit"
        }
    .end annotation

    .line 1559
    mul-int/lit8 v0, p2, 0x2

    and-int/lit8 v1, p3, 0x1

    int-to-byte v1, v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 1560
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p3, 0x1

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 1561
    return-void
.end method

.method private sign_picnic1([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature;)I
    .locals 24
    .param p1, "privateKey"    # [I
    .param p2, "pubKey"    # [I
    .param p3, "plaintext"    # [I
    .param p4, "message"    # [B
    .param p5, "sig"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "pubKey",
            "plaintext",
            "message",
            "sig"
        }
    .end annotation

    .line 1302
    move-object/from16 v0, p0

    move-object/from16 v9, p5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v8, 0x2

    new-array v2, v8, [I

    const/4 v10, 0x1

    const/4 v3, 0x3

    aput v3, v2, v10

    const/4 v11, 0x0

    aput v1, v2, v11

    const-class v1, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [[Lorg/bouncycastle/pqc/crypto/picnic/View;

    .line 1303
    .local v12, "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v5, v3, [I

    aput v4, v5, v8

    aput v2, v5, v10

    aput v1, v5, v11

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[[B

    .line 1304
    .local v13, "as":[[[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    new-array v4, v3, [I

    aput v2, v4, v8

    aput v3, v4, v10

    aput v1, v4, v11

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[[B

    .line 1307
    .local v14, "gs":[[[B
    invoke-direct/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->computeSeeds([I[I[I[B)[B

    move-result-object v2

    .line 1308
    .local v2, "seeds":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v15, v1, v3

    .line 1310
    .local v15, "seedLen":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int v1, v1, v15

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/16 v4, 0x20

    invoke-static {v2, v1, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1313
    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    .line 1315
    .local v1, "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v3, v3, 0x9

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v6, v3, [B

    .line 1317
    .local v6, "tmp":[B
    const/4 v3, 0x0

    move v4, v3

    .local v4, "k":I
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v4, v3, :cond_5

    .line 1319
    aget-object v3, v12, v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v5, v3, v11

    .line 1320
    aget-object v3, v12, v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v5, v3, v10

    .line 1321
    aget-object v3, v12, v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v5, v3, v8

    .line 1323
    const/4 v3, 0x0

    move v5, v3

    .local v5, "j":I
    :goto_1
    const-string v3, "createRandomTape failed"

    const/16 v16, -0x1

    const-string/jumbo v7, "sign_picnic1"

    const/16 v17, 0x1

    const-string v10, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    if-ge v5, v8, :cond_1

    .line 1325
    mul-int v18, v15, v4

    const/16 v19, 0x2

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v8, v8, v5

    add-int v18, v18, v8

    move-object v8, v3

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v21, v1

    .end local v1    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .local v21, "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v11, v1

    move-object v1, v2

    move/from16 v2, v18

    move-object/from16 v18, v12

    move-object v12, v7

    move v7, v11

    move-object/from16 v11, v21

    .end local v2    # "seeds":[B
    .end local v12    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .end local v21    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .local v1, "seeds":[B
    .local v11, "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .local v18, "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v2

    .line 1327
    move-object v3, v6

    .end local v6    # "tmp":[B
    .local v2, "status":Z
    .local v3, "tmp":[B
    if-nez v2, :cond_0

    .line 1329
    sget-object v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v10, v12, v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    return v16

    .line 1333
    :cond_0
    aget-object v6, v18, v4

    aget-object v6, v6, v5

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    .line 1334
    .local v6, "inputShare":[I
    const/4 v7, 0x0

    invoke-static {v3, v7, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 1335
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v6, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    .line 1337
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v10, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v10, v10, v5

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v8, v10, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1323
    .end local v6    # "inputShare":[I
    add-int/lit8 v5, v5, 0x1

    move-object v2, v1

    move-object v6, v3

    move-object v1, v11

    move-object/from16 v12, v18

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .end local v3    # "tmp":[B
    .end local v11    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .end local v18    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .local v1, "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .local v2, "seeds":[B
    .local v6, "tmp":[B
    .restart local v12    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    :cond_1
    move-object v11, v1

    move-object v1, v2

    move-object v8, v3

    move-object v3, v6

    move-object/from16 v18, v12

    const/16 v19, 0x2

    move-object v12, v7

    .line 1342
    .end local v2    # "seeds":[B
    .end local v5    # "j":I
    .end local v6    # "tmp":[B
    .end local v12    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .local v1, "seeds":[B
    .restart local v3    # "tmp":[B
    .restart local v11    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .restart local v18    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    mul-int v2, v15, v4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .end local v3    # "tmp":[B
    .restart local v6    # "tmp":[B
    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    iget-object v5, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v5, v5, v19

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move-object/from16 v21, v6

    move-object v6, v5

    .end local v6    # "tmp":[B
    .local v21, "tmp":[B
    const/4 v5, 0x2

    move-object/from16 v22, v13

    move-object/from16 v13, v21

    .end local v21    # "tmp":[B
    .local v13, "tmp":[B
    .local v22, "as":[[[B
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v6

    .line 1344
    move v7, v4

    .end local v4    # "k":I
    .local v6, "status":Z
    .local v7, "k":I
    if-nez v6, :cond_2

    .line 1346
    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v10, v12, v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    return v16

    .line 1350
    :cond_2
    aget-object v2, v18, v7

    aget-object v2, v2, v19

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    aget-object v3, v18, v7

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    aget-object v5, v18, v7

    aget-object v5, v5, v17

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    move-object/from16 v8, p1

    invoke-direct {v0, v2, v8, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    .line 1351
    iput v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 1353
    array-length v2, v13

    div-int/lit8 v2, v2, 0x4

    invoke-static {v13, v4, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v2

    .line 1355
    .local v2, "tmp_int":[I
    aget-object v3, v18, v7

    move-object/from16 v5, p3

    invoke-direct {v0, v11, v3, v5, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_LowMC(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;[I[I)V

    .line 1356
    invoke-static {v2, v13, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 1358
    const/16 v3, 0x10

    new-array v3, v3, [I

    .line 1359
    .local v3, "temp":[I
    aget-object v20, v18, v7

    const/16 v21, 0x0

    aget-object v4, v20, v21

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v21, v18, v7

    move-object/from16 v23, v2

    .end local v2    # "tmp_int":[I
    .local v23, "tmp_int":[I
    aget-object v2, v21, v17

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v21, v18, v7

    aget-object v5, v21, v19

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-direct {v0, v3, v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    .line 1361
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v4, p2

    invoke-static {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([I[II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1363
    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v21, v3

    .end local v3    # "temp":[I
    .local v21, "temp":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulation failed; output does not match public key (round = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v10, v12, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    return v16

    .line 1368
    .end local v21    # "temp":[I
    .restart local v3    # "temp":[I
    :cond_3
    move-object/from16 v21, v3

    .end local v3    # "temp":[I
    .restart local v21    # "temp":[I
    mul-int v4, v15, v7

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/16 v20, 0x0

    mul-int/lit8 v2, v2, 0x0

    add-int/2addr v4, v2

    aget-object v2, v18, v7

    aget-object v2, v2, v20

    aget-object v3, v22, v7

    aget-object v3, v3, v20

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 1369
    mul-int v4, v15, v7

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v2

    aget-object v2, v18, v7

    aget-object v2, v2, v17

    aget-object v3, v22, v7

    aget-object v3, v3, v17

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 1370
    mul-int v4, v15, v7

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    aget-object v2, v18, v7

    aget-object v2, v2, v19

    aget-object v3, v22, v7

    aget-object v3, v3, v19

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 1372
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1374
    mul-int v4, v15, v7

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/16 v20, 0x0

    mul-int/lit8 v2, v2, 0x0

    add-int v3, v4, v2

    aget-object v2, v18, v7

    aget-object v4, v2, v20

    aget-object v2, v14, v7

    aget-object v5, v2, v20

    move-object v2, v1

    .end local v1    # "seeds":[B
    .local v2, "seeds":[B
    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 1375
    move-object v1, v2

    .end local v2    # "seeds":[B
    .restart local v1    # "seeds":[B
    mul-int v4, v15, v7

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/16 v17, 0x1

    mul-int/lit8 v2, v2, 0x1

    add-int v3, v4, v2

    aget-object v2, v18, v7

    aget-object v4, v2, v17

    aget-object v2, v14, v7

    aget-object v5, v2, v17

    move-object v2, v1

    .end local v1    # "seeds":[B
    .restart local v2    # "seeds":[B
    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 1376
    move-object v1, v2

    .end local v2    # "seeds":[B
    .restart local v1    # "seeds":[B
    mul-int v4, v15, v7

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v4, v2

    aget-object v2, v18, v7

    aget-object v4, v2, v19

    aget-object v2, v14, v7

    aget-object v5, v2, v19

    move-object v2, v1

    .end local v1    # "seeds":[B
    .restart local v2    # "seeds":[B
    const/4 v1, 0x2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    move-object v10, v2

    .end local v2    # "seeds":[B
    .local v10, "seeds":[B
    goto :goto_2

    .line 1372
    .end local v10    # "seeds":[B
    .restart local v1    # "seeds":[B
    :cond_4
    move-object v10, v1

    .line 1317
    .end local v1    # "seeds":[B
    .end local v21    # "temp":[I
    .end local v23    # "tmp_int":[I
    .restart local v10    # "seeds":[B
    :goto_2
    add-int/lit8 v4, v7, 0x1

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v1, v11

    move-object v6, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v22

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .end local v7    # "k":I
    .restart local v4    # "k":I
    goto/16 :goto_0

    .end local v10    # "seeds":[B
    .end local v11    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .end local v18    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .end local v22    # "as":[[[B
    .local v1, "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .restart local v2    # "seeds":[B
    .local v6, "tmp":[B
    .restart local v12    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .local v13, "as":[[[B
    :cond_5
    move-object/from16 v8, p1

    move-object v11, v1

    move-object v10, v2

    move v7, v4

    move-object/from16 v18, v12

    move-object/from16 v22, v13

    move-object v13, v6

    .line 1382
    .end local v1    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .end local v2    # "seeds":[B
    .end local v4    # "k":I
    .end local v6    # "tmp":[B
    .end local v12    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .restart local v10    # "seeds":[B
    .restart local v11    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .local v13, "tmp":[B
    .restart local v18    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .restart local v22    # "as":[[[B
    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget-object v6, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    move-object v8, v14

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    .end local v14    # "gs":[[[B
    .end local v18    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .end local v22    # "as":[[[B
    .local v3, "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .local v4, "as":[[[B
    .local v8, "gs":[[[B
    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->H3([I[I[[Lorg/bouncycastle/pqc/crypto/picnic/View;[[[B[B[B[B[[[B)V

    .line 1385
    .end local v3    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .end local v4    # "as":[[[B
    .restart local v18    # "views":[[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .restart local v22    # "as":[[[B
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_3
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v12, v1, :cond_7

    .line 1387
    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    aget-object v1, v1, v12

    .line 1388
    .local v1, "proof":Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    invoke-virtual {v0, v2, v12}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v2

    mul-int v4, v15, v12

    aget-object v5, v18, v12

    aget-object v6, v22, v12

    .line 1389
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v14, 0x1

    if-eq v3, v14, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    aget-object v3, v8, v12

    :goto_4
    move-object v7, v3

    .line 1388
    move-object v3, v10

    .end local v10    # "seeds":[B
    .local v3, "seeds":[B
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->prove(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;I[BI[Lorg/bouncycastle/pqc/crypto/picnic/View;[[B[[B)V

    .line 1385
    move-object v1, v3

    .end local v3    # "seeds":[B
    .local v1, "seeds":[B
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object v10, v1

    goto :goto_3

    .line 1392
    .end local v1    # "seeds":[B
    .end local v12    # "i":I
    .restart local v10    # "seeds":[B
    :cond_7
    const/16 v20, 0x0

    return v20
.end method

.method private sign_picnic3([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature2;)Z
    .locals 30
    .param p1, "privateKey"    # [I
    .param p2, "pubKey"    # [I
    .param p3, "plaintext"    # [I
    .param p4, "message"    # [B
    .param p5, "sig"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "pubKey",
            "plaintext",
            "message",
            "sig"
        }
    .end annotation

    .line 1774
    move-object/from16 v0, p0

    move-object/from16 v10, p5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/16 v6, 0x20

    add-int/2addr v1, v6

    new-array v1, v1, [B

    .line 1775
    .local v1, "saltAndRoot":[B
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->computeSaltAndRootSeed([B[I[I[I[B)V

    .line 1777
    move-object v11, v1

    .end local v1    # "saltAndRoot":[B
    .local v11, "saltAndRoot":[B
    array-length v1, v11

    invoke-static {v11, v6, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 1778
    .local v12, "root":[B
    const/4 v13, 0x0

    invoke-static {v11, v13, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    .line 1780
    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    move-object v14, v1

    .line 1781
    .local v14, "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v14, v12, v1, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    .line 1783
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v15

    .line 1784
    .local v15, "iSeeds":[[B
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v16

    .line 1786
    .local v16, "iSeedsOffset":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v7, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    .line 1787
    .local v7, "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v8, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    .line 1788
    .local v8, "seeds":[Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    const/4 v1, 0x0

    move v5, v1

    .local v5, "t":I
    :goto_0
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v5, v1, :cond_0

    .line 1790
    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v7, v5

    .line 1792
    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v1, v8, v5

    .line 1793
    aget-object v1, v8, v5

    add-int v2, v5, v16

    aget-object v2, v15, v2

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    .line 1794
    aget-object v1, v7, v5

    aget-object v2, v8, v5

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v2

    aget-object v3, v8, v5

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v3

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V

    .line 1788
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1797
    .end local v5    # "t":I
    :cond_0
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v2, 0x4

    const/4 v9, 0x2

    new-array v3, v9, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v13

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [[B

    .line 1798
    .local v17, "inputs":[[B
    const/16 v1, 0xb0

    new-array v1, v1, [B

    .line 1799
    .local v1, "auxBits":[B
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v2, v3, :cond_1

    .line 1801
    aget-object v3, v7, v2

    aget-object v5, v17, v2

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->computeAuxTape([B)V

    .line 1799
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1805
    .end local v2    # "t":I
    :cond_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v6, 0x3

    new-array v6, v6, [I

    aput v5, v6, v9

    aput v3, v6, v4

    aput v2, v6, v13

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [[[B

    .line 1806
    .local v18, "C":[[[B
    const/4 v2, 0x0

    move v5, v2

    .restart local v5    # "t":I
    :goto_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v5, v2, :cond_3

    .line 1808
    const/4 v2, 0x0

    move v6, v2

    .local v6, "j":I
    :goto_3
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    sub-int/2addr v2, v4

    if-ge v6, v2, :cond_2

    .line 1810
    aget-object v2, v18, v5

    aget-object v2, v2, v6

    aget-object v3, v8, v5

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v3

    move-object/from16 v19, v1

    move-object v1, v2

    move-object v2, v3

    .end local v1    # "auxBits":[B
    .local v19, "auxBits":[B
    const/4 v3, 0x0

    const/16 v20, 0x1

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v9, v19

    const/4 v13, 0x1

    .end local v19    # "auxBits":[B
    .local v9, "auxBits":[B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    .line 1808
    add-int/lit8 v6, v6, 0x1

    move-object v1, v9

    const/4 v4, 0x1

    const/4 v9, 0x2

    const/4 v13, 0x0

    goto :goto_3

    .end local v9    # "auxBits":[B
    .restart local v1    # "auxBits":[B
    :cond_2
    move-object v9, v1

    const/4 v13, 0x1

    .line 1812
    .end local v1    # "auxBits":[B
    .end local v6    # "j":I
    .restart local v9    # "auxBits":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v6, v1, -0x1

    .line 1813
    .local v6, "last":I
    aget-object v1, v7, v5

    invoke-direct {v0, v9, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    .line 1814
    aget-object v1, v18, v5

    aget-object v1, v1, v6

    aget-object v2, v8, v5

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object v3, v9

    .end local v9    # "auxBits":[B
    .local v3, "auxBits":[B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    .line 1806
    move-object/from16 v20, v3

    .end local v3    # "auxBits":[B
    .end local v6    # "last":I
    .local v20, "auxBits":[B
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v20

    const/4 v4, 0x1

    const/4 v9, 0x2

    const/4 v13, 0x0

    goto :goto_2

    .end local v20    # "auxBits":[B
    .restart local v1    # "auxBits":[B
    :cond_3
    move-object/from16 v20, v1

    const/4 v13, 0x1

    .line 1818
    .end local v1    # "auxBits":[B
    .end local v5    # "t":I
    .restart local v20    # "auxBits":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v9, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    .line 1819
    .local v9, "msgs":[Lorg/bouncycastle/pqc/crypto/picnic/Msg;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    new-array v3, v1, [I

    .line 1820
    .local v3, "tmp_shares":[I
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_4
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_5

    .line 1822
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Msg;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v9, v1

    .line 1823
    aget-object v2, v17, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v2

    .line 1824
    .local v2, "maskedKey":[I
    move-object/from16 v4, p1

    invoke-virtual {v0, v2, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    .line 1825
    move v5, v1

    move-object v1, v2

    .end local v2    # "maskedKey":[I
    .local v1, "maskedKey":[I
    .restart local v5    # "t":I
    aget-object v2, v7, v5

    aget-object v4, v9, v5

    move-object/from16 v6, p2

    move/from16 v22, v5

    move-object/from16 v5, p3

    .end local v5    # "t":I
    .local v22, "t":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I

    move-result v2

    .line 1826
    move-object/from16 v23, v3

    .end local v3    # "tmp_shares":[I
    .local v2, "rv":I
    .local v23, "tmp_shares":[I
    if-eqz v2, :cond_4

    .line 1828
    sget-object v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v5, "sign_picnic3"

    const-string v6, "MPC simulation failed, aborting signature"

    const-string v13, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    invoke-virtual {v3, v4, v13, v5, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const/4 v5, 0x0

    return v5

    .line 1831
    :cond_4
    const/4 v5, 0x0

    aget-object v3, v17, v22

    invoke-static {v1, v3, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 1820
    .end local v1    # "maskedKey":[I
    .end local v2    # "rv":I
    add-int/lit8 v1, v22, 0x1

    move-object/from16 v3, v23

    .end local v22    # "t":I
    .local v1, "t":I
    goto :goto_4

    .end local v23    # "tmp_shares":[I
    .restart local v3    # "tmp_shares":[I
    :cond_5
    move/from16 v22, v1

    move-object/from16 v23, v3

    .line 1835
    .end local v1    # "t":I
    .end local v3    # "tmp_shares":[I
    .restart local v23    # "tmp_shares":[I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v2, v4, v13

    const/16 v19, 0x0

    aput v1, v4, v19

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [[B

    .line 1836
    .local v4, "Ch":[[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v3, v3, [I

    aput v2, v3, v13

    aput v1, v3, v19

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 1837
    .local v1, "Cv":[[B
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_5
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v2, v3, :cond_6

    .line 1839
    aget-object v3, v4, v2

    aget-object v5, v18, v2

    invoke-direct {v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_h([B[[B)V

    .line 1840
    aget-object v3, v1, v2

    aget-object v5, v17, v2

    aget-object v6, v9, v2

    invoke-direct {v0, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    .line 1837
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1844
    .end local v2    # "t":I
    :cond_6
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v2, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    .line 1845
    .local v2, "treeCv":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->buildMerkleTree([[B[B)V

    .line 1848
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v3, v3, [I

    iput-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    .line 1849
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v3, v3, [I

    iput-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    .line 1850
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v3, v3, [B

    iput-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    .line 1851
    move-object v3, v1

    .end local v1    # "Cv":[[B
    .local v3, "Cv":[[B
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object v6, v3

    .end local v3    # "Cv":[[B
    .local v6, "Cv":[[B
    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v13, v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    const/16 v19, 0x0

    aget-object v13, v13, v19

    move-object/from16 v22, v6

    .end local v6    # "Cv":[[B
    .local v22, "Cv":[[B
    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    move-object/from16 v25, v22

    move-object/from16 v9, p4

    move-object v11, v2

    move-object v2, v5

    move-object/from16 v22, v8

    move-object v5, v13

    move-object/from16 v8, p3

    move-object v13, v7

    move-object/from16 v7, p2

    .end local v2    # "treeCv":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .end local v7    # "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .end local v8    # "seeds":[Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .end local v9    # "msgs":[Lorg/bouncycastle/pqc/crypto/picnic/Msg;
    .local v11, "treeCv":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .local v13, "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .local v22, "seeds":[Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .local v24, "msgs":[Lorg/bouncycastle/pqc/crypto/picnic/Msg;
    .local v25, "Cv":[[B
    .local v26, "saltAndRoot":[B
    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->HCP([B[I[I[[B[B[B[I[I[B)V

    .line 1855
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v1, v2

    .line 1856
    .local v1, "missingLeavesSize":I
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v2

    .line 1857
    .local v2, "missingLeaves":[I
    const/4 v3, 0x1

    new-array v5, v3, [I

    .line 1858
    .local v5, "cvInfoLen":[I
    invoke-virtual {v11, v2, v1, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->openMerkleTree([II[I)[B

    move-result-object v3

    iput-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    .line 1859
    const/16 v19, 0x0

    aget v3, v5, v19

    iput v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    .line 1862
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v3, v3, v6

    new-array v3, v3, [B

    iput-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    .line 1863
    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iget-object v7, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v8, v8, v9

    invoke-virtual {v14, v3, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeeds([II[BI)I

    move-result v3

    iput v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    .line 1868
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    iput-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    .line 1869
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_6
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v6, :cond_9

    .line 1871
    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v6, v7, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1873
    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v7, v6, v3

    .line 1874
    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v6, v7, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v6

    .line 1876
    .local v6, "P_index":I
    const/4 v7, 0x1

    new-array v8, v7, [I

    .line 1877
    .local v8, "hideList":[I
    iget-object v7, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v7, v7, v6

    const/16 v19, 0x0

    aput v7, v8, v19

    .line 1878
    iget-object v7, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v7, v7, v3

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move/from16 v27, v1

    .end local v1    # "missingLeavesSize":I
    .local v27, "missingLeavesSize":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v9, v9, v1

    new-array v1, v9, [B

    iput-object v1, v7, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    .line 1879
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, v3

    aget-object v7, v22, v3

    iget-object v9, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v9, v9, v3

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    move-object/from16 v28, v2

    .end local v2    # "missingLeaves":[I
    .local v28, "missingLeaves":[I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move/from16 v29, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v2, v2, v29

    move/from16 v29, v3

    const/4 v3, 0x1

    .end local v3    # "t":I
    .local v29, "t":I
    invoke-virtual {v7, v8, v3, v9, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeeds([II[BI)I

    move-result v2

    iput v2, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    .line 1881
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    sub-int/2addr v1, v3

    .line 1882
    .local v1, "last":I
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v2, v2, v6

    if-eq v2, v1, :cond_7

    .line 1884
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v29

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    aget-object v3, v13, v29

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    .line 1887
    :cond_7
    aget-object v2, v17, v29

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v29

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    const/4 v9, 0x0

    invoke-static {v2, v9, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1888
    aget-object v2, v24, v29

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v3, v6

    aget-object v2, v2, v3

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v29

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v2, v9, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1889
    aget-object v2, v18, v29

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v3, v6

    aget-object v2, v2, v3

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v29

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v9, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 1871
    .end local v6    # "P_index":I
    .end local v8    # "hideList":[I
    .end local v27    # "missingLeavesSize":I
    .end local v28    # "missingLeaves":[I
    .end local v29    # "t":I
    .local v1, "missingLeavesSize":I
    .restart local v2    # "missingLeaves":[I
    .restart local v3    # "t":I
    :cond_8
    move/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v29, v3

    const/4 v9, 0x0

    .line 1869
    .end local v1    # "missingLeavesSize":I
    .end local v2    # "missingLeaves":[I
    .end local v3    # "t":I
    .restart local v27    # "missingLeavesSize":I
    .restart local v28    # "missingLeaves":[I
    .restart local v29    # "t":I
    :goto_7
    add-int/lit8 v3, v29, 0x1

    move/from16 v1, v27

    move-object/from16 v2, v28

    .end local v29    # "t":I
    .restart local v3    # "t":I
    goto/16 :goto_6

    .line 1892
    .end local v3    # "t":I
    .end local v27    # "missingLeavesSize":I
    .end local v28    # "missingLeaves":[I
    .restart local v1    # "missingLeavesSize":I
    .restart local v2    # "missingLeaves":[I
    :cond_9
    const/16 v21, 0x1

    return v21
.end method

.method private simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I
    .locals 8
    .param p1, "maskedKey"    # [I
    .param p2, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p3, "tmp_shares"    # [I
    .param p4, "msg"    # Lorg/bouncycastle/pqc/crypto/picnic/Msg;
    .param p5, "plaintext"    # [I
    .param p6, "pubKey"    # [I
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
            "maskedKey",
            "tape",
            "tmp_shares",
            "msg",
            "plaintext",
            "pubKey"
        }
    .end annotation

    .line 2070
    const/4 v0, 0x0

    .line 2071
    .local v0, "ret":I
    const/16 v1, 0x10

    new-array v2, v1, [I

    .line 2072
    .local v2, "roundKey":[I
    new-array v1, v1, [I

    .line 2074
    .local v1, "state":[I
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v3

    .line 2075
    .local v3, "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    invoke-virtual {p0, v2, p1, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 2076
    invoke-virtual {p0, v1, v2, p5, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    .line 2078
    const/4 v5, 0x1

    .local v5, "r":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v5, v6, :cond_0

    .line 2080
    invoke-direct {p0, p3, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->tapesToWords([ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    .line 2081
    invoke-direct {p0, v1, p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    .line 2083
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, p0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v3

    .line 2084
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v7

    invoke-virtual {p0, v1, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 2086
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, p0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v3

    .line 2087
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v7

    invoke-virtual {p0, v1, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    .line 2089
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v6, p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v3

    .line 2090
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v7

    invoke-virtual {p0, v2, p1, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 2091
    invoke-virtual {p0, v1, v2, v1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    .line 2078
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2094
    .end local v5    # "r":I
    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v1, p6, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([I[II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2096
    const/4 v0, -0x1

    .line 2099
    :cond_1
    return v0
.end method

.method private static subarrayEquals([B[BI)Z
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "length"
        }
    .end annotation

    .line 2117
    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    .line 2122
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 2124
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_1

    .line 2126
    return v1

    .line 2122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2129
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2119
    :cond_3
    :goto_1
    return v1
.end method

.method private static subarrayEquals([I[II)Z
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "length"
        }
    .end annotation

    .line 2134
    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    .line 2139
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 2141
    aget v2, p0, v0

    aget v3, p1, v0

    if-eq v2, v3, :cond_1

    .line 2143
    return v1

    .line 2139
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2146
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2136
    :cond_3
    :goto_1
    return v1
.end method

.method private substitution([I)V
    .locals 7
    .param p1, "state"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 2419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2421
    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    .line 2422
    .local v1, "a":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    .line 2423
    .local v2, "b":I
    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v3

    .line 2425
    .local v3, "c":I
    add-int/lit8 v4, v0, 0x2

    and-int v5, v2, v3

    xor-int/2addr v5, v1

    invoke-static {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 2426
    add-int/lit8 v4, v0, 0x1

    xor-int v5, v1, v2

    and-int v6, v1, v3

    xor-int/2addr v5, v6

    invoke-static {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 2427
    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    and-int v5, v1, v2

    xor-int/2addr v4, v5

    invoke-static {p1, v0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 2419
    .end local v1    # "a":I
    .end local v2    # "b":I
    .end local v3    # "c":I
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 2429
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private tapesToWords([ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 2
    .param p1, "shares"    # [I
    .param p2, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shares",
            "tape"
        }
    .end annotation

    .line 2252
    const/4 v0, 0x0

    .local v0, "w":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ge v0, v1, :cond_0

    .line 2254
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    aput v1, p1, v0

    .line 2252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2256
    .end local v0    # "w":I
    :cond_0
    return-void
.end method

.method private updateDigest([I[B)V
    .locals 3
    .param p1, "block"    # [I
    .param p2, "temp"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "temp"
        }
    .end annotation

    .line 2304
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 2305
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v1, p2, v0, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 2306
    return-void
.end method

.method private verify(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[I[I[B)I
    .locals 27
    .param p1, "sig"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    .param p2, "pubKey"    # [I
    .param p3, "plaintext"    # [I
    .param p4, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "pubKey",
            "plaintext",
            "message"
        }
    .end annotation

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v11, 0x3

    new-array v4, v11, [I

    const/4 v12, 0x2

    aput v3, v4, v12

    const/4 v13, 0x1

    aput v2, v4, v13

    const/4 v14, 0x0

    aput v1, v4, v14

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [[[B

    .line 377
    .local v15, "as":[[[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    new-array v3, v11, [I

    aput v2, v3, v12

    aput v11, v3, v13

    aput v1, v3, v14

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [[[B

    .line 378
    .local v16, "gs":[[[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    new-array v3, v11, [I

    aput v2, v3, v12

    aput v11, v3, v13

    aput v1, v3, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [[[I

    .line 380
    .local v17, "viewOutputs":[[[I
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    .line 382
    .local v1, "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    .line 383
    .local v2, "received_challengebits":[B
    const/16 v18, 0x0

    .line 384
    .local v18, "status":I
    const/16 v19, 0x0

    .line 386
    .local v19, "computed_challengebits":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v3, v3, 0x6

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v7, v3, [B

    .line 388
    .local v7, "tmp":[B
    new-instance v9, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    .line 390
    .local v9, "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/picnic/View;

    .line 391
    .local v3, "view1s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v4, v4, [Lorg/bouncycastle/pqc/crypto/picnic/View;

    .line 394
    .local v4, "view2s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const-string v8, "Invalid signature. Did not verify"

    const/16 v20, 0x3

    const-string/jumbo v11, "verify"

    const/16 v21, 0x2

    const-string v12, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    if-ge v6, v5, :cond_3

    .line 396
    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v5, v3, v6

    .line 397
    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v5, v4, v6

    .line 399
    move-object v5, v1

    .end local v1    # "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    .local v5, "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    aget-object v1, v5, v6

    aget-object v22, v3, v6

    move-object/from16 v23, v3

    .end local v3    # "view1s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .local v23, "view1s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    aget-object v3, v4, v6

    .line 400
    move-object/from16 v24, v4

    .end local v4    # "view2s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .local v24, "view2s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v4

    move-object/from16 v25, v5

    .end local v5    # "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    .local v25, "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    .line 399
    move-object v13, v2

    move-object v14, v8

    move-object/from16 v2, v22

    move-object/from16 v8, p3

    .end local v2    # "received_challengebits":[B
    .local v13, "received_challengebits":[B
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verifyProof(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;I[BI[B[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)Z

    move-result v1

    move-object/from16 v26, v9

    move-object v9, v7

    .end local v7    # "tmp":[B
    .local v9, "tmp":[B
    .local v26, "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    if-nez v1, :cond_0

    .line 403
    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v12, v11, v14}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v1, -0x1

    return v1

    .line 409
    :cond_0
    invoke-virtual {v0, v13, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v1

    .line 410
    .local v1, "challenge":I
    aget-object v2, v25, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    aget-object v3, v23, v6

    aget-object v4, v15, v6

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 411
    aget-object v2, v25, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    aget-object v3, v24, v6

    aget-object v4, v15, v6

    add-int/lit8 v7, v1, 0x1

    rem-int/lit8 v7, v7, 0x3

    aget-object v4, v4, v7

    invoke-direct {v0, v2, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 412
    aget-object v2, v25, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    aget-object v3, v15, v6

    add-int/lit8 v4, v1, 0x2

    rem-int/lit8 v4, v4, 0x3

    aget-object v3, v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 415
    aget-object v2, v25, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    aget-object v4, v23, v6

    aget-object v3, v16, v6

    aget-object v5, v3, v1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 416
    move v8, v1

    .end local v1    # "challenge":I
    .local v8, "challenge":I
    add-int/lit8 v1, v8, 0x1

    rem-int/lit8 v1, v1, 0x3

    aget-object v0, v25, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    aget-object v4, v24, v6

    aget-object v0, v16, v6

    add-int/lit8 v3, v8, 0x1

    rem-int/lit8 v3, v3, 0x3

    aget-object v5, v0, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    .line 417
    if-nez v8, :cond_1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_1

    :cond_1
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    .line 418
    .local v1, "view3UnruhLength":I
    :goto_1
    aget-object v2, v25, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    aget-object v3, v16, v6

    add-int/lit8 v4, v8, 0x2

    rem-int/lit8 v4, v4, 0x3

    aget-object v3, v3, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 413
    .end local v8    # "challenge":I
    .local v1, "challenge":I
    :cond_2
    move v8, v1

    const/4 v5, 0x0

    .line 421
    .end local v1    # "challenge":I
    .restart local v8    # "challenge":I
    :goto_2
    aget-object v1, v17, v6

    aget-object v2, v23, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aput-object v2, v1, v8

    .line 422
    aget-object v1, v17, v6

    add-int/lit8 v2, v8, 0x1

    rem-int/lit8 v2, v2, 0x3

    aget-object v3, v24, v6

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aput-object v3, v1, v2

    .line 423
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v1, v1, [I

    .line 424
    .local v1, "view3Output":[I
    aget-object v2, v23, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v3, v24, v6

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    .line 425
    aget-object v2, v17, v6

    add-int/lit8 v3, v8, 0x2

    rem-int/lit8 v3, v3, 0x3

    aput-object v1, v2, v3

    .line 394
    .end local v1    # "view3Output":[I
    .end local v8    # "challenge":I
    add-int/lit8 v6, v6, 0x1

    move-object v7, v9

    move-object v2, v13

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v1, v25

    move-object/from16 v9, v26

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    .end local v13    # "received_challengebits":[B
    .end local v23    # "view1s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .end local v24    # "view2s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .end local v25    # "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    .end local v26    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .local v1, "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    .restart local v2    # "received_challengebits":[B
    .restart local v3    # "view1s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .restart local v4    # "view2s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .restart local v7    # "tmp":[B
    .local v9, "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    :cond_3
    move-object/from16 v25, v1

    move-object v13, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object v14, v8

    move-object/from16 v26, v9

    move-object/from16 v4, p2

    move-object v9, v7

    .line 428
    .end local v1    # "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    .end local v2    # "received_challengebits":[B
    .end local v3    # "view1s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .end local v4    # "view2s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .end local v6    # "i":I
    .end local v7    # "tmp":[B
    .local v9, "tmp":[B
    .restart local v13    # "received_challengebits":[B
    .restart local v23    # "view1s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .restart local v24    # "view2s":[Lorg/bouncycastle/pqc/crypto/picnic/View;
    .restart local v25    # "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    .restart local v26    # "tape":Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v1

    new-array v5, v1, [B

    .line 430
    .end local v19    # "computed_challengebits":[B
    .local v5, "computed_challengebits":[B
    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    move-object v1, v4

    move-object v4, v15

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    .end local v15    # "as":[[[B
    .end local v16    # "gs":[[[B
    .end local v17    # "viewOutputs":[[[I
    .local v3, "viewOutputs":[[[I
    .local v4, "as":[[[B
    .local v8, "gs":[[[B
    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->H3([I[I[[[I[[[B[B[B[B[[[B)V

    .line 434
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v1

    invoke-static {v13, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([B[BI)Z

    move-result v1

    if-nez v1, :cond_4

    .line 436
    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v12, v11, v14}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/16 v18, -0x1

    .line 440
    :cond_4
    return v18
.end method

.method private verify_picnic3(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[I[I[B)I
    .locals 33
    .param p1, "sig"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
    .param p2, "pubKey"    # [I
    .param p3, "plaintext"    # [I
    .param p4, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "pubKey",
            "plaintext",
            "message"
        }
    .end annotation

    .line 780
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v2, v4, v3

    const/4 v7, 0x0

    aput v1, v4, v7

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [[[B

    .line 781
    .local v11, "C":[[[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v4, v5, [I

    aput v2, v4, v3

    aput v1, v4, v7

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[B

    .line 782
    .local v8, "Ch":[[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v4, v5, [I

    aput v2, v4, v3

    aput v1, v4, v7

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [[B

    .line 783
    .local v12, "Cv":[[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v13, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    .line 785
    .local v13, "msgs":[Lorg/bouncycastle/pqc/crypto/picnic/Msg;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    move-object v14, v1

    .line 786
    .local v14, "treeCv":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    const/16 v1, 0x40

    new-array v9, v1, [B

    .line 787
    .local v9, "challengeHash":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v15, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    .line 788
    .local v15, "seeds":[Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v6, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    .line 789
    .local v6, "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    move-object/from16 v16, v1

    .line 791
    .local v16, "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    const/16 v23, 0x0

    iget-object v7, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v22, 0x0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->reconstructSeeds([II[BI[BI)I

    move-result v1

    .line 794
    move-object/from16 v7, v16

    .end local v16    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .local v1, "ret":I
    .local v7, "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    const/16 v16, -0x1

    if-eqz v1, :cond_0

    .line 796
    return v16

    .line 800
    :cond_0
    const/4 v2, 0x0

    move/from16 v17, v1

    .end local v1    # "ret":I
    .local v2, "t":I
    .local v17, "ret":I
    :goto_0
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const-string/jumbo v4, "verify_picnic3"

    const-string v5, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    if-ge v2, v1, :cond_3

    .line 802
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v1

    if-nez v1, :cond_1

    .line 805
    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v1, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v1, v15, v2

    .line 806
    aget-object v1, v15, v2

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v3

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v1, v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    goto :goto_1

    .line 812
    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v19, v6

    .end local v6    # "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .local v19, "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v1, v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v1, v15, v2

    .line 813
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v1

    .line 814
    .local v1, "P_index":I
    const/4 v3, 0x1

    new-array v6, v3, [I

    .line 815
    .local v6, "hideList":[I
    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v3, v1

    aput v3, v6, v23

    .line 816
    aget-object v24, v15, v2

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    move/from16 v20, v1

    .end local v1    # "P_index":I
    .local v20, "P_index":I
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, v2

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    move/from16 v28, v1

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v26, 0x1

    move-object/from16 v29, v1

    move/from16 v30, v2

    move-object/from16 v27, v3

    move-object/from16 v25, v6

    .end local v2    # "t":I
    .end local v6    # "hideList":[I
    .local v25, "hideList":[I
    .local v30, "t":I
    invoke-virtual/range {v24 .. v30}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->reconstructSeeds([II[BI[BI)I

    move-result v1

    .line 819
    .end local v17    # "ret":I
    .end local v30    # "t":I
    .local v1, "ret":I
    .restart local v2    # "t":I
    if-eqz v1, :cond_2

    .line 821
    sget-object v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move/from16 v17, v1

    .end local v1    # "ret":I
    .restart local v17    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    .end local v7    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .local v21, "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    const-string v7, "Failed to reconstruct seeds for round "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v5, v4, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    return v16

    .line 819
    .end local v17    # "ret":I
    .end local v21    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .restart local v1    # "ret":I
    .restart local v7    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    :cond_2
    move/from16 v17, v1

    move-object/from16 v21, v7

    .line 800
    .end local v1    # "ret":I
    .end local v7    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .end local v20    # "P_index":I
    .end local v25    # "hideList":[I
    .restart local v17    # "ret":I
    .restart local v21    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v19

    move-object/from16 v7, v21

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v19    # "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .end local v21    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .local v6, "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .restart local v7    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    :cond_3
    move-object/from16 v19, v6

    move-object/from16 v21, v7

    .line 828
    .end local v2    # "t":I
    .end local v6    # "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .end local v7    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .restart local v19    # "tapes":[Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .restart local v21    # "iSeedsTree":Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v18, 0x1

    add-int/lit8 v7, v1, -0x1

    .line 829
    .local v7, "last":I
    const/16 v1, 0xb0

    new-array v6, v1, [B

    .line 830
    .local v6, "auxBits":[B
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_9

    .line 832
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v19, v1

    .line 836
    move-object v2, v5

    move v5, v1

    .end local v1    # "t":I
    .local v5, "t":I
    aget-object v1, v19, v5

    aget-object v18, v15, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v18

    aget-object v20, v15, v5

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v20

    move-object/from16 v22, v4

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v32, v2

    move-object/from16 v24, v8

    move-object/from16 v2, v18

    move-object/from16 v31, v22

    move-object v8, v3

    move/from16 v3, v20

    .end local v8    # "Ch":[[B
    .local v24, "Ch":[[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V

    .line 840
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v1

    if-nez v1, :cond_5

    .line 843
    aget-object v1, v19, v5

    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->computeAuxTape([B)V

    .line 844
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v7, :cond_4

    .line 846
    aget-object v2, v11, v5

    aget-object v2, v2, v1

    aget-object v3, v15, v5

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v3

    move-object v4, v6

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    .end local v1    # "j":I
    .local v4, "auxBits":[B
    .local v6, "j":I
    const/4 v3, 0x0

    move-object v8, v4

    .end local v4    # "auxBits":[B
    .local v8, "auxBits":[B
    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    .line 844
    add-int/lit8 v1, v6, 0x1

    move-object v6, v8

    .end local v6    # "j":I
    .restart local v1    # "j":I
    goto :goto_3

    .end local v8    # "auxBits":[B
    .local v6, "auxBits":[B
    :cond_4
    move-object v8, v6

    move v6, v1

    .line 848
    .end local v1    # "j":I
    .end local v6    # "auxBits":[B
    .restart local v8    # "auxBits":[B
    aget-object v1, v19, v5

    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    .line 849
    aget-object v1, v11, v5

    aget-object v1, v1, v7

    aget-object v2, v15, v5

    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move v6, v7

    move-object v3, v8

    .end local v7    # "last":I
    .end local v8    # "auxBits":[B
    .local v3, "auxBits":[B
    .local v6, "last":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    move-object/from16 v18, v3

    .end local v3    # "auxBits":[B
    .end local v6    # "last":I
    .restart local v7    # "last":I
    .local v18, "auxBits":[B
    goto :goto_6

    .line 855
    .end local v18    # "auxBits":[B
    .local v6, "auxBits":[B
    :cond_5
    move-object/from16 v18, v6

    .end local v6    # "auxBits":[B
    .restart local v18    # "auxBits":[B
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v2

    aget v8, v1, v2

    .line 858
    .local v8, "unopened":I
    const/4 v1, 0x0

    move v6, v1

    .local v6, "j":I
    :goto_4
    if-ge v6, v7, :cond_7

    .line 860
    if-eq v6, v8, :cond_6

    .line 862
    aget-object v1, v11, v5

    aget-object v1, v1, v6

    aget-object v2, v15, v5

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    .line 858
    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    .line 865
    .end local v6    # "j":I
    :cond_7
    if-eq v7, v8, :cond_8

    .line 867
    aget-object v0, v11, v5

    aget-object v1, v0, v7

    aget-object v0, v15, v5

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, v5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move v6, v7

    .end local v7    # "last":I
    .local v6, "last":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    .end local v6    # "last":I
    .restart local v7    # "last":I
    goto :goto_5

    .line 865
    :cond_8
    move-object/from16 v0, p0

    .line 870
    :goto_5
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, v5

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    aget-object v2, v11, v5

    aget-object v2, v2, v8

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    .end local v8    # "unopened":I
    :goto_6
    add-int/lit8 v1, v5, 0x1

    move-object/from16 v6, v18

    move-object/from16 v8, v24

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    const/16 v23, 0x0

    .end local v5    # "t":I
    .local v1, "t":I
    goto/16 :goto_2

    .end local v18    # "auxBits":[B
    .end local v24    # "Ch":[[B
    .local v6, "auxBits":[B
    .local v8, "Ch":[[B
    :cond_9
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v18, v6

    move-object/from16 v24, v8

    move v5, v1

    move-object v8, v3

    .line 876
    .end local v1    # "t":I
    .end local v6    # "auxBits":[B
    .end local v8    # "Ch":[[B
    .restart local v18    # "auxBits":[B
    .restart local v24    # "Ch":[[B
    const/4 v1, 0x0

    .restart local v1    # "t":I
    :goto_7
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_a

    .line 878
    aget-object v2, v24, v1

    aget-object v3, v11, v1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_h([B[[B)V

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 882
    .end local v1    # "t":I
    :cond_a
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    new-array v3, v1, [I

    .line 883
    .local v3, "tmp_shares":[I
    const/4 v1, 0x0

    .restart local v1    # "t":I
    :goto_8
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_e

    .line 885
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Msg;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v13, v1

    .line 886
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v2, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 890
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v4

    aget v2, v2, v4

    .line 893
    .local v2, "unopened":I
    if-eq v2, v7, :cond_b

    .line 895
    aget-object v4, v19, v1

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->setAuxBits([B)V

    .line 897
    :cond_b
    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    aget-object v5, v13, v1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v5, v5, v2

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move-object/from16 v20, v8

    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    aget-object v4, v19, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v4, v4, v2

    invoke-static {v4, v8}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 900
    aget-object v4, v13, v1

    iput v2, v4, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    .line 902
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v4, 0x4

    new-array v8, v4, [B

    .line 903
    .local v8, "input_bytes":[B
    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v4, v4, [I

    .line 906
    .local v4, "temp":[I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v8, v6, v4, v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 908
    move v5, v2

    .end local v2    # "unopened":I
    .local v5, "unopened":I
    aget-object v2, v19, v1

    move v6, v1

    move-object v1, v4

    .end local v4    # "temp":[I
    .local v1, "temp":[I
    .local v6, "t":I
    aget-object v4, v13, v6

    move/from16 v25, v5

    move/from16 v22, v7

    move-object/from16 v5, p3

    move v7, v6

    move-object/from16 v6, p2

    .end local v5    # "unopened":I
    .end local v6    # "t":I
    .local v7, "t":I
    .local v22, "last":I
    .local v25, "unopened":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I

    move-result v2

    .line 909
    move-object/from16 v26, v3

    .end local v3    # "tmp_shares":[I
    .local v2, "rv":I
    .local v26, "tmp_shares":[I
    if-eqz v2, :cond_c

    .line 911
    sget-object v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MPC simulation failed for round "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", signature invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v27, v2

    move-object/from16 v6, v31

    move-object/from16 v2, v32

    .end local v2    # "rv":I
    .local v27, "rv":I
    invoke-virtual {v3, v4, v2, v6, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return v16

    .line 914
    .end local v27    # "rv":I
    .restart local v2    # "rv":I
    :cond_c
    move/from16 v27, v2

    move-object/from16 v6, v31

    move-object/from16 v2, v32

    .end local v2    # "rv":I
    .restart local v27    # "rv":I
    aget-object v3, v12, v7

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v7

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    aget-object v5, v13, v7

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    .line 915
    .end local v1    # "temp":[I
    .end local v8    # "input_bytes":[B
    .end local v25    # "unopened":I
    .end local v27    # "rv":I
    goto :goto_9

    .line 918
    .end local v22    # "last":I
    .end local v26    # "tmp_shares":[I
    .local v1, "t":I
    .restart local v3    # "tmp_shares":[I
    .local v7, "last":I
    :cond_d
    move-object/from16 v26, v3

    move/from16 v22, v7

    move-object/from16 v20, v8

    move-object/from16 v6, v31

    move-object/from16 v2, v32

    move v7, v1

    .end local v1    # "t":I
    .end local v3    # "tmp_shares":[I
    .local v7, "t":I
    .restart local v22    # "last":I
    .restart local v26    # "tmp_shares":[I
    aput-object v20, v12, v7

    .line 883
    :goto_9
    add-int/lit8 v1, v7, 0x1

    move-object/from16 v32, v2

    move-object/from16 v31, v6

    move-object/from16 v8, v20

    move/from16 v7, v22

    move-object/from16 v3, v26

    .end local v7    # "t":I
    .restart local v1    # "t":I
    goto/16 :goto_8

    .end local v22    # "last":I
    .end local v26    # "tmp_shares":[I
    .restart local v3    # "tmp_shares":[I
    .local v7, "last":I
    :cond_e
    move-object/from16 v26, v3

    move/from16 v22, v7

    move-object/from16 v6, v31

    move-object/from16 v2, v32

    move v7, v1

    .line 922
    .end local v1    # "t":I
    .end local v3    # "tmp_shares":[I
    .end local v7    # "last":I
    .restart local v22    # "last":I
    .restart local v26    # "tmp_shares":[I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v1, v3

    .line 923
    .local v1, "missingLeavesSize":I
    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v3

    .line 924
    .local v3, "missingLeaves":[I
    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-virtual {v14, v3, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->addMerkleNodes([II[BI)I

    move-result v4

    .line 925
    .end local v17    # "ret":I
    .local v4, "ret":I
    if-eqz v4, :cond_f

    .line 927
    return v16

    .line 930
    :cond_f
    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v14, v12, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->verifyMerkleTree([[B[B)I

    move-result v17

    .line 931
    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    if-eqz v17, :cond_10

    .line 933
    return v16

    .line 937
    :cond_10
    iget-object v4, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    const/16 v23, 0x0

    aget-object v5, v4, v23

    move-object/from16 v31, v6

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v32, v2

    const/4 v2, 0x0

    move-object v4, v3

    .end local v3    # "missingLeaves":[I
    .local v4, "missingLeaves":[I
    const/4 v3, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v20, v1

    move-object/from16 v23, v4

    move-object v1, v9

    move-object/from16 v25, v12

    move-object/from16 v4, v24

    move-object/from16 v12, v32

    move-object/from16 v9, p4

    move-object/from16 v24, v11

    move-object/from16 v11, v31

    .end local v9    # "challengeHash":[B
    .end local v11    # "C":[[[B
    .end local v12    # "Cv":[[B
    .local v1, "challengeHash":[B
    .local v4, "Ch":[[B
    .local v20, "missingLeavesSize":I
    .local v23, "missingLeaves":[I
    .local v24, "C":[[[B
    .local v25, "Cv":[[B
    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->HCP([B[I[I[[B[B[B[I[I[B)V

    .line 940
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([B[BI)Z

    move-result v2

    if-nez v2, :cond_11

    .line 942
    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Challenge does not match, signature invalid"

    invoke-virtual {v2, v3, v12, v11, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return v16

    .line 945
    :cond_11
    return v17
.end method

.method private wordToMsgs(ILorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "msg"    # Lorg/bouncycastle/pqc/crypto/picnic/Msg;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "msg"
        }
    .end annotation

    .line 2156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v0, v1, :cond_0

    .line 2158
    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit(II)I

    move-result v1

    .line 2159
    .local v1, "w_i":I
    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v2, v2, v0

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    int-to-byte v4, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 2156
    .end local v1    # "w_i":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2161
    .end local v0    # "i":I
    :cond_0
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    .line 2162
    return-void
.end method

.method private xor_three([I[I[I[I)V
    .locals 3
    .param p1, "output"    # [I
    .param p2, "in1"    # [I
    .param p3, "in2"    # [I
    .param p4, "in3"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in1",
            "in2",
            "in3"
        }
    .end annotation

    .line 2433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v1, :cond_0

    .line 2435
    aget v1, p2, v0

    aget v2, p3, v0

    xor-int/2addr v1, v2

    aget v2, p4, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 2433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2437
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected aux_mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 10
    .param p1, "in"    # [I
    .param p2, "out"    # [I
    .param p3, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "tape"
        }
    .end annotation

    .line 2209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2211
    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    .line 2212
    .local v1, "a":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    .line 2213
    .local v2, "b":I
    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v3

    .line 2215
    .local v3, "c":I
    add-int/lit8 v4, v0, 0x2

    invoke-static {p2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v4

    .line 2216
    .local v4, "d":I
    add-int/lit8 v5, v0, 0x1

    invoke-static {p2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    .line 2217
    .local v5, "e":I
    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    .line 2219
    .local v6, "f":I
    xor-int v7, v6, v1

    xor-int/2addr v7, v2

    xor-int/2addr v7, v3

    .line 2220
    .local v7, "fresh_output_mask_ab":I
    xor-int v8, v4, v1

    .line 2221
    .local v8, "fresh_output_mask_bc":I
    xor-int v9, v5, v1

    xor-int/2addr v9, v2

    .line 2223
    .local v9, "fresh_output_mask_ca":I
    invoke-direct {p0, v1, v2, v7, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    .line 2224
    invoke-direct {p0, v2, v3, v8, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    .line 2225
    invoke-direct {p0, v3, v1, v9, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    .line 2209
    .end local v1    # "a":I
    .end local v2    # "b":I
    .end local v3    # "c":I
    .end local v4    # "d":I
    .end local v5    # "e":I
    .end local v6    # "f":I
    .end local v7    # "fresh_output_mask_ab":I
    .end local v8    # "fresh_output_mask_bc":I
    .end local v9    # "fresh_output_mask_ca":I
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 2227
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public crypto_sign([B[B[B)V
    .locals 4
    .param p1, "sm"    # [B
    .param p2, "m"    # [B
    .param p3, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sm",
            "m",
            "sk"
        }
    .end annotation

    .line 1084
    invoke-direct {p0, p3, p2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_sign([B[B[B)Z

    move-result v0

    .line 1085
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 1087
    return-void

    .line 1089
    :cond_0
    const/4 v1, 0x4

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    return-void
.end method

.method public crypto_sign_keypair([B[BLjava/security/SecureRandom;)V
    .locals 3
    .param p1, "pk"    # [B
    .param p2, "sk"    # [B
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "sk",
            "random"
        }
    .end annotation

    .line 2319
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 2320
    .local v0, "plaintext_bytes":[B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 2321
    .local v1, "ciphertext_bytes":[B
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 2323
    .local v2, "data_bytes":[B
    invoke-direct {p0, v0, v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_keygen([B[B[BLjava/security/SecureRandom;)V

    .line 2324
    invoke-direct {p0, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_write_public_key([B[B[B)I

    .line 2325
    invoke-direct {p0, v2, v1, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_write_private_key([B[B[B[B)I

    .line 2326
    return-void
.end method

.method public crypto_sign_open([B[B[B)Z
    .locals 6
    .param p1, "m"    # [B
    .param p2, "sm"    # [B
    .param p3, "pk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "sm",
            "pk"
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 334
    .local v1, "sigLen":I
    array-length v2, p1

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static {p2, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 335
    .local v2, "m_from_sm":[B
    invoke-direct {p0, p3, v2, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_verify([B[B[BI)I

    move-result v4

    .line 336
    .local v4, "ret":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 337
    return v0

    .line 338
    :cond_0
    array-length v5, p1

    invoke-static {p2, v3, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method getChallenge([BI)I
    .locals 1
    .param p1, "challenge"    # [B
    .param p2, "round"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "challenge",
            "round"
        }
    .end annotation

    .line 1222
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getCrumbAligned([BI)B

    move-result v0

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    return v0
.end method

.method public getSecretKeySize()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    return v0
.end method

.method public getSignatureSize(I)I
    .locals 1
    .param p1, "messageLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageLength"
        }
    .end annotation

    .line 86
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getTrueSignatureSize()I
    .locals 1

    .line 91
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    return v0
.end method

.method protected matrix_mul([I[I[II)V
    .locals 7
    .param p1, "output"    # [I
    .param p2, "state"    # [I
    .param p3, "matrix"    # [I
    .param p4, "matrixOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "state",
            "matrix",
            "matrixOffset"
        }
    .end annotation

    .line 2449
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "output":[I
    .end local p2    # "state":[I
    .end local p3    # "matrix":[I
    .end local p4    # "matrixOffset":I
    .local v1, "output":[I
    .local v3, "state":[I
    .local v5, "matrix":[I
    .local v6, "matrixOffset":I
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    .line 2450
    return-void
.end method

.method protected matrix_mul_offset([II[II[II)V
    .locals 11
    .param p1, "output"    # [I
    .param p2, "outputOffset"    # I
    .param p3, "state"    # [I
    .param p4, "stateOffset"    # I
    .param p5, "matrix"    # [I
    .param p6, "matrixOffset"    # I
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
            "output",
            "outputOffset",
            "state",
            "stateOffset",
            "matrix",
            "matrixOffset"
        }
    .end annotation

    .line 2458
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 2459
    .local v0, "temp":[I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 2460
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    div-int/lit8 v1, v1, 0x20

    .line 2461
    .local v1, "wholeWords":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v4, 0x20

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    sub-int/2addr v4, v5

    .line 2464
    .local v4, "unusedStateBits":I
    const/4 v5, -0x1

    ushr-int/2addr v5, v4

    .line 2465
    .local v5, "partialWordMask":I
    const v6, 0x55555555

    invoke-static {v5, v6, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v2

    .line 2466
    .end local v5    # "partialWordMask":I
    .local v2, "partialWordMask":I
    const v5, 0x33333333

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v2

    .line 2467
    const v5, 0xf0f0f0f

    const/4 v6, 0x4

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v2

    .line 2469
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ge v5, v6, :cond_2

    .line 2471
    const/4 v6, 0x0

    .line 2472
    .local v6, "prod":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 2474
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v8, v8, v5

    add-int/2addr v8, v7

    .line 2475
    .local v8, "index":I
    add-int v9, p4, v7

    aget v9, p3, v9

    add-int v10, p6, v8

    aget v10, p5, v10

    and-int/2addr v9, v10

    xor-int/2addr v6, v9

    .line 2472
    .end local v8    # "index":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2478
    .end local v7    # "j":I
    :cond_0
    if-lez v4, :cond_1

    .line 2480
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v7, v7, v5

    add-int/2addr v7, v1

    .line 2481
    .local v7, "index":I
    add-int v8, p4, v1

    aget v8, p3, v8

    add-int v9, p6, v7

    aget v9, p5, v9

    and-int/2addr v8, v9

    and-int/2addr v8, v2

    xor-int/2addr v6, v8

    .line 2485
    .end local v7    # "index":I
    :cond_1
    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity32(I)I

    move-result v7

    invoke-static {v0, v5, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([III)V

    .line 2469
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2488
    .end local v5    # "i":I
    .end local v6    # "prod":I
    :cond_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v0, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2489
    return-void
.end method

.method mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 12
    .param p1, "in1"    # [I
    .param p2, "in2"    # [I
    .param p3, "out"    # [I
    .param p4, "rand"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p5, "view1"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p6, "view2"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
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
            "in1",
            "in2",
            "out",
            "rand",
            "view1",
            "view2"
        }
    .end annotation

    .line 612
    move-object/from16 v0, p4

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    .line 613
    .local v1, "r0":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v3

    .line 615
    .local v3, "r1":I
    aget v5, p1, v2

    .local v5, "a0":I
    aget v6, p1, v4

    .line 616
    .local v6, "a1":I
    aget v7, p2, v2

    .local v7, "b0":I
    aget v8, p2, v4

    .line 618
    .local v8, "b1":I
    and-int v9, v5, v8

    and-int v10, v6, v7

    xor-int/2addr v9, v10

    and-int v10, v5, v7

    xor-int/2addr v9, v10

    xor-int/2addr v9, v1

    xor-int/2addr v9, v3

    aput v9, p3, v2

    .line 619
    move-object/from16 v9, p5

    iget-object v10, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v2, p3, v2

    int-to-byte v2, v2

    invoke-static {v10, v11, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 620
    move-object/from16 v2, p6

    iget-object v10, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v10

    aput v10, p3, v4

    .line 622
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/2addr v10, v4

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 623
    return-void
.end method

.method mpc_LowMC_verify(Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/Tape;[I[II)V
    .locals 15
    .param p1, "view1"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p2, "view2"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p3, "tapes"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p4, "tmp"    # [I
    .param p5, "plaintext"    # [I
    .param p6, "challenge"    # I
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
            "view1",
            "view2",
            "tapes",
            "tmp",
            "plaintext",
            "challenge"
        }
    .end annotation

    .line 533
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    array-length v2, v3

    const/4 v10, 0x0

    invoke-static {v3, v10, v2, v10}, Lorg/bouncycastle/util/Arrays;->fill([IIII)V

    .line 535
    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v2, p0

    move-object/from16 v4, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant_verify([I[IIII)V

    .line 537
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v3, p0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v9

    .line 538
    .local v9, "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    .line 540
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    .line 538
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    .line 541
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    .line 543
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    .line 541
    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    .line 545
    const/4 v11, 0x2

    invoke-direct {p0, v3, v3, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    .line 547
    const/4 v4, 0x1

    move v12, v4

    .local v12, "r":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v12, v4, :cond_0

    .line 549
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v4, p0, v12}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v9

    .line 550
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    .line 552
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    .line 550
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    .line 553
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    .line 555
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    .line 553
    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    .line 557
    move-object/from16 v13, p3

    invoke-virtual {p0, v3, v13, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_substitution_verify([ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    .line 559
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v5, v12, -0x1

    invoke-virtual {v4, p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v14

    .line 560
    .end local v9    # "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .local v14, "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v6, v5, 0x2

    .line 562
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    .line 560
    const/4 v9, 0x2

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_matrix_mul([II[II[III)V

    .line 564
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v4, v12, -0x1

    invoke-virtual {v3, p0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v9

    .line 565
    .end local v14    # "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .restart local v9    # "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v3, p4

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant_verify([I[IIII)V

    .line 566
    invoke-direct {p0, v3, v3, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    .line 547
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p3

    .line 569
    .end local v12    # "r":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v3, v4, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v4, 0x3

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v3, v4, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    return-void
.end method

.method mpc_substitution_verify([ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 15
    .param p1, "state"    # [I
    .param p2, "rand"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .param p3, "view1"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p4, "view2"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "rand",
            "view1",
            "view2"
        }
    .end annotation

    .line 576
    move-object/from16 v0, p1

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 577
    .local v3, "a":[I
    new-array v4, v1, [I

    .line 578
    .local v4, "b":[I
    new-array v9, v1, [I

    .line 580
    .local v9, "c":[I
    new-array v5, v1, [I

    .line 581
    .local v5, "ab":[I
    new-array v10, v1, [I

    .line 582
    .local v10, "bc":[I
    new-array v11, v1, [I

    .line 585
    .local v11, "ca":[I
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v12, v2, :cond_2

    .line 588
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 590
    add-int/lit8 v6, v2, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v6, v6, v7

    mul-int/lit8 v6, v6, 0x20

    .line 591
    .local v6, "stateOffset":I
    add-int v7, v6, v12

    add-int/2addr v7, v1

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v7

    aput v7, v3, v2

    .line 592
    add-int v7, v6, v12

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v7

    aput v7, v4, v2

    .line 593
    add-int v7, v6, v12

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v7

    aput v7, v9, v2

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 596
    .end local v2    # "j":I
    .end local v6    # "stateOffset":I
    :cond_0
    move-object v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    .line 597
    move-object v13, v5

    .end local v5    # "ab":[I
    .local v13, "ab":[I
    move-object/from16 v8, p2

    move-object v5, v4

    move-object v6, v9

    move-object v7, v10

    move-object v4, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .end local v4    # "b":[I
    .end local v9    # "c":[I
    .end local v10    # "bc":[I
    .local v5, "b":[I
    .local v6, "c":[I
    .local v7, "bc":[I
    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    .line 598
    move-object v9, v5

    move-object v10, v7

    .end local v5    # "b":[I
    .end local v7    # "bc":[I
    .local v9, "b":[I
    .restart local v10    # "bc":[I
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v4, v3

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v6, p2

    .end local v6    # "c":[I
    .end local v11    # "ca":[I
    .local v3, "c":[I
    .local v4, "a":[I
    .local v5, "ca":[I
    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    .line 600
    move-object v6, v3

    move-object v3, v4

    .end local v4    # "a":[I
    .local v3, "a":[I
    .restart local v6    # "c":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v1, :cond_1

    .line 602
    add-int/lit8 v7, v4, 0x2

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v7, v7, v8

    mul-int/lit8 v7, v7, 0x20

    .line 603
    .local v7, "stateOffset":I
    add-int v8, v7, v12

    add-int/2addr v8, v1

    aget v11, v3, v4

    aget v14, v10, v4

    xor-int/2addr v11, v14

    invoke-static {v0, v8, v11}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 604
    add-int v8, v7, v12

    add-int/lit8 v8, v8, 0x1

    aget v11, v3, v4

    aget v14, v9, v4

    xor-int/2addr v11, v14

    aget v14, v5, v4

    xor-int/2addr v11, v14

    invoke-static {v0, v8, v11}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 605
    add-int v8, v7, v12

    aget v11, v3, v4

    aget v14, v9, v4

    xor-int/2addr v11, v14

    aget v14, v6, v4

    xor-int/2addr v11, v14

    aget v14, v13, v4

    xor-int/2addr v11, v14

    invoke-static {v0, v8, v11}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 600
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 585
    .end local v4    # "j":I
    .end local v7    # "stateOffset":I
    :cond_1
    add-int/lit8 v12, v12, 0x3

    move-object v11, v5

    move-object v4, v9

    move-object v5, v13

    move-object v9, v6

    goto/16 :goto_0

    .line 608
    .end local v6    # "c":[I
    .end local v12    # "i":I
    .end local v13    # "ab":[I
    .local v4, "b":[I
    .local v5, "ab":[I
    .local v9, "c":[I
    .restart local v11    # "ca":[I
    :cond_2
    return-void
.end method

.method prove(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;I[BI[Lorg/bouncycastle/pqc/crypto/picnic/View;[[B[[B)V
    .locals 6
    .param p1, "proof"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    .param p2, "challenge"    # I
    .param p3, "seeds"    # [B
    .param p4, "seedsOffset"    # I
    .param p5, "views"    # [Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p6, "commitments"    # [[B
    .param p7, "gs"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "proof",
            "challenge",
            "seeds",
            "seedsOffset",
            "views",
            "commitments",
            "gs"
        }
    .end annotation

    .line 1399
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 1401
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x0

    add-int/2addr v3, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1402
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1404
    :cond_0
    if-ne p2, v0, :cond_1

    .line 1406
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1407
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1409
    :cond_1
    if-ne p2, v1, :cond_6

    .line 1411
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1412
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x0

    add-int/2addr v3, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1420
    :goto_0
    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_3

    .line 1422
    :cond_2
    aget-object v1, p5, v1

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1425
    :cond_3
    add-int/lit8 v1, p2, 0x1

    rem-int/lit8 v1, v1, 0x3

    aget-object v1, p5, v1

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1427
    add-int/lit8 v1, p2, 0x2

    rem-int/lit8 v1, v1, 0x3

    aget-object v1, p6, v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1428
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v1, v0, :cond_5

    .line 1430
    if-nez p2, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    .line 1431
    .local v0, "view3UnruhLength":I
    :goto_1
    add-int/lit8 v1, p2, 0x2

    rem-int/lit8 v1, v1, 0x3

    aget-object v1, p7, v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1433
    .end local v0    # "view3UnruhLength":I
    :cond_5
    return-void

    .line 1416
    :cond_6
    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "prove"

    const-string v3, "Invalid challenge"

    const-string v4, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method serializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BI)I
    .locals 11
    .param p1, "sig"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature;
    .param p2, "sigBytes"    # [B
    .param p3, "sigOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigBytes",
            "sigOffset"
        }
    .end annotation

    .line 1161
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    .line 1162
    .local v0, "proofs":[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    .line 1165
    .local v1, "challengeBits":[B
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    const/16 v4, 0x20

    add-int/2addr v2, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v6, v7

    mul-int v5, v5, v6

    add-int/2addr v2, v5

    .line 1168
    .local v2, "bytesRequired":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1170
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int v5, v5, v7

    add-int/2addr v2, v5

    .line 1173
    :cond_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    if-ge v5, v2, :cond_1

    .line 1175
    const/4 v3, -0x1

    return v3

    .line 1178
    :cond_1
    move v5, p3

    .line 1180
    .local v5, "sigByteIndex":I
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v1, v8, p2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1181
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 1183
    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    invoke-static {v7, v8, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1184
    add-int/2addr v5, v4

    .line 1186
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v4, v7, :cond_6

    .line 1188
    invoke-virtual {p0, v1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v7

    .line 1190
    .local v7, "challenge":I
    aget-object v9, v0, v4

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v9, v8, p2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1191
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v5, v9

    .line 1193
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v9, v6, :cond_3

    .line 1195
    if-nez v7, :cond_2

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_1

    :cond_2
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    .line 1196
    .local v9, "view3UnruhLength":I
    :goto_1
    aget-object v10, v0, v4

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {v10, v8, p2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1197
    add-int/2addr v5, v9

    .line 1200
    .end local v9    # "view3UnruhLength":I
    :cond_3
    aget-object v9, v0, v4

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v9, v8, p2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v5, v9

    .line 1203
    aget-object v9, v0, v4

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v9, v8, p2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1204
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v5, v9

    .line 1206
    aget-object v9, v0, v4

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v9, v8, p2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1207
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v5, v9

    .line 1209
    if-eq v7, v6, :cond_4

    if-ne v7, v3, :cond_5

    .line 1211
    :cond_4
    aget-object v9, v0, v4

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v9, v8, v10, p2, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 1212
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v5, v9

    .line 1186
    .end local v7    # "challenge":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1217
    .end local v4    # "i":I
    :cond_6
    sub-int v3, v5, p3

    return v3
.end method

.method verifyProof(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;I[BI[B[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)Z
    .locals 17
    .param p1, "proof"    # Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    .param p2, "view1"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p3, "view2"    # Lorg/bouncycastle/pqc/crypto/picnic/View;
    .param p4, "challenge"    # I
    .param p5, "salt"    # [B
    .param p6, "roundNumber"    # I
    .param p7, "tmp"    # [B
    .param p8, "plaintext"    # [I
    .param p9, "tape"    # Lorg/bouncycastle/pqc/crypto/picnic/Tape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "proof",
            "view1",
            "view2",
            "challenge",
            "salt",
            "roundNumber",
            "tmp",
            "plaintext",
            "tape"
        }
    .end annotation

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p9

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v12, 0x0

    invoke-static {v1, v12, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iput v12, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 451
    const/4 v13, 0x0

    .line 452
    .local v13, "status":Z
    const-string/jumbo v14, "verifyProof"

    const-string v15, "org.bouncycastle.pqc.crypto.picnic.PicnicEngine"

    const/16 v16, 0x1

    packed-switch p4, :pswitch_data_0

    .line 513
    move-object/from16 v7, p7

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Invalid Challenge!"

    invoke-virtual {v1, v2, v15, v14, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 499
    :pswitch_0
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v2, v12

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v13

    .line 500
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v1, v12, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    if-eqz v13, :cond_0

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v2, v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p7

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v13, v1

    .line 503
    if-nez v13, :cond_2

    .line 505
    goto :goto_1

    .line 508
    :cond_2
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v6, v12, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 509
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v16

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v6, v1, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    nop

    .line 517
    :goto_1
    move-object v7, v6

    goto/16 :goto_5

    .line 479
    :pswitch_1
    move-object/from16 v6, p7

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v2, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v13

    .line 482
    move-object v1, v6

    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v1, v12, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 483
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v12

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v1, v2, v3, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    if-eqz v13, :cond_3

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v2, v16

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move v13, v1

    .line 487
    if-nez v13, :cond_4

    .line 489
    goto :goto_3

    .line 492
    :cond_4
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v1, v12, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    nop

    .line 517
    :goto_3
    move-object/from16 v7, p7

    goto :goto_5

    .line 456
    :pswitch_2
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v2, v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v13

    .line 459
    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v6, v12, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 460
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v12

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v6, v1, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    if-eqz v13, :cond_5

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v2, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    move-object v7, v6

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    move-object v7, v6

    :cond_6
    const/4 v1, 0x0

    :goto_4
    move v13, v1

    .line 465
    if-nez v13, :cond_7

    .line 467
    goto :goto_5

    .line 470
    :cond_7
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v7, v12, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 471
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v16

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v7, v1, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    nop

    .line 517
    :goto_5
    if-nez v13, :cond_8

    .line 519
    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Failed to generate random tapes, signature verification will fail (but signature may actually be valid)"

    invoke-virtual {v1, v2, v15, v14, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return v12

    .line 523
    :cond_8
    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    .line 524
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    .line 526
    array-length v1, v7

    div-int/lit8 v1, v1, 0x4

    invoke-static {v7, v12, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v4

    .line 527
    .local v4, "tmp_ints":[I
    move/from16 v6, p4

    move-object/from16 v5, p8

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_LowMC_verify(Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/Tape;[I[II)V

    .line 528
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected xor_array([I[I[II)V
    .locals 3
    .param p1, "out"    # [I
    .param p2, "in1"    # [I
    .param p3, "in2"    # [I
    .param p4, "in2_offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in1",
            "in2",
            "in2_offset"
        }
    .end annotation

    .line 2441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v1, :cond_0

    .line 2443
    aget v1, p2, v0

    add-int v2, v0, p4

    aget v2, p3, v2

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 2441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2445
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
