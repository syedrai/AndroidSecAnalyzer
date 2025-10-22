.class public Lorg/bouncycastle/crypto/engines/ARIAEngine;
.super Ljava/lang/Object;
.source "ARIAEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field private static final C:[[B

.field private static final SB1_sbox:[B

.field private static final SB2_sbox:[B

.field private static final SB3_sbox:[B

.field private static final SB4_sbox:[B


# instance fields
.field forEncryption:Z

.field private roundKeys:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    const-string v0, "517cc1b727220a94fe13abe8fa9a6ee0"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v0

    .line 22
    const-string v1, "6db14acc9e21c820ff28b1d5ef5de2b0"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "db92371d2126e9700324977504e8c90e"

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lorg/bouncycastle/crypto/engines/ARIAEngine;->C:[[B

    .line 24
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1_sbox:[B

    .line 54
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2_sbox:[B

    .line 84
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3_sbox:[B

    .line 114
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4_sbox:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        -0x1et
        0x4et
        0x54t
        -0x4t
        -0x6ct
        -0x3et
        0x4at
        -0x34t
        0x62t
        0xdt
        0x6at
        0x46t
        0x3ct
        0x4dt
        -0x75t
        -0x2ft
        0x5et
        -0x6t
        0x64t
        -0x35t
        -0x4ct
        -0x69t
        -0x42t
        0x2bt
        -0x44t
        0x77t
        0x2et
        0x3t
        -0x2dt
        0x19t
        0x59t
        -0x3ft
        0x1dt
        0x6t
        0x41t
        0x6bt
        0x55t
        -0x10t
        -0x67t
        0x69t
        -0x16t
        -0x64t
        0x18t
        -0x52t
        0x63t
        -0x21t
        -0x19t
        -0x45t
        0x0t
        0x73t
        0x66t
        -0x5t
        -0x6at
        0x4ct
        -0x7bt
        -0x1ct
        0x3at
        0x9t
        0x45t
        -0x56t
        0xft
        -0x12t
        0x10t
        -0x15t
        0x2dt
        0x7ft
        -0xct
        0x29t
        -0x54t
        -0x31t
        -0x53t
        -0x6ft
        -0x73t
        0x78t
        -0x38t
        -0x6bt
        -0x7t
        0x2ft
        -0x32t
        -0x33t
        0x8t
        0x7at
        -0x78t
        0x38t
        0x5ct
        -0x7dt
        0x2at
        0x28t
        0x47t
        -0x25t
        -0x48t
        -0x39t
        -0x6dt
        -0x5ct
        0x12t
        0x53t
        -0x1t
        -0x79t
        0xet
        0x31t
        0x36t
        0x21t
        0x58t
        0x48t
        0x1t
        -0x72t
        0x37t
        0x74t
        0x32t
        -0x36t
        -0x17t
        -0x4ft
        -0x49t
        -0x55t
        0xct
        -0x29t
        -0x3ct
        0x56t
        0x42t
        0x26t
        0x7t
        -0x68t
        0x60t
        -0x27t
        -0x4at
        -0x47t
        0x11t
        0x40t
        -0x14t
        0x20t
        -0x74t
        -0x43t
        -0x60t
        -0x37t
        -0x7ct
        0x4t
        0x49t
        0x23t
        -0xft
        0x4ft
        0x50t
        0x1ft
        0x13t
        -0x24t
        -0x28t
        -0x40t
        -0x62t
        0x57t
        -0x1dt
        -0x3dt
        0x7bt
        0x65t
        0x3bt
        0x2t
        -0x71t
        0x3et
        -0x18t
        0x25t
        -0x6et
        -0x1bt
        0x15t
        -0x23t
        -0x3t
        0x17t
        -0x57t
        -0x41t
        -0x2ct
        -0x66t
        0x7et
        -0x3bt
        0x39t
        0x67t
        -0x2t
        0x76t
        -0x63t
        0x43t
        -0x59t
        -0x1ft
        -0x30t
        -0xbt
        0x68t
        -0xet
        0x1bt
        0x34t
        0x70t
        0x5t
        -0x5dt
        -0x76t
        -0x2bt
        0x79t
        -0x7at
        -0x58t
        0x30t
        -0x3at
        0x51t
        0x4bt
        0x1et
        -0x5at
        0x27t
        -0xat
        0x35t
        -0x2et
        0x6et
        0x24t
        0x16t
        -0x7et
        0x5ft
        -0x26t
        -0x1at
        0x75t
        -0x5et
        -0x11t
        0x2ct
        -0x4et
        0x1ct
        -0x61t
        0x5dt
        0x6ft
        -0x80t
        0xat
        0x72t
        0x44t
        -0x65t
        0x6ct
        -0x70t
        0xbt
        0x5bt
        0x33t
        0x7dt
        0x5at
        0x52t
        -0xdt
        0x61t
        -0x5ft
        -0x9t
        -0x50t
        -0x2at
        0x3ft
        0x7ct
        0x6dt
        -0x13t
        0x14t
        -0x20t
        -0x5bt
        0x3dt
        0x22t
        -0x4dt
        -0x8t
        -0x77t
        -0x22t
        0x71t
        0x1at
        -0x51t
        -0x46t
        -0x4bt
        -0x7ft
    .end array-data

    :array_2
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x68t
        -0x67t
        0x1bt
        -0x79t
        -0x47t
        0x21t
        0x78t
        0x50t
        0x39t
        -0x25t
        -0x1ft
        0x72t
        0x9t
        0x62t
        0x3ct
        0x3et
        0x7et
        0x5et
        -0x72t
        -0xft
        -0x60t
        -0x34t
        -0x5dt
        0x2at
        0x1dt
        -0x5t
        -0x4at
        -0x2at
        0x20t
        -0x3ct
        -0x73t
        -0x7ft
        0x65t
        -0xbt
        -0x77t
        -0x35t
        -0x63t
        0x77t
        -0x3at
        0x57t
        0x43t
        0x56t
        0x17t
        -0x2ct
        0x40t
        0x1at
        0x4dt
        -0x40t
        0x63t
        0x6ct
        -0x1dt
        -0x49t
        -0x38t
        0x64t
        0x6at
        0x53t
        -0x56t
        0x38t
        -0x68t
        0xct
        -0xct
        -0x65t
        -0x13t
        0x7ft
        0x22t
        0x76t
        -0x51t
        -0x23t
        0x3at
        0xbt
        0x58t
        0x67t
        -0x78t
        0x6t
        -0x3dt
        0x35t
        0xdt
        0x1t
        -0x75t
        -0x74t
        -0x3et
        -0x1at
        0x5ft
        0x2t
        0x24t
        0x75t
        -0x6dt
        0x66t
        0x1et
        -0x1bt
        -0x1et
        0x54t
        -0x28t
        0x10t
        -0x32t
        0x7at
        -0x18t
        0x8t
        0x2ct
        0x12t
        -0x69t
        0x32t
        -0x55t
        -0x4ct
        0x27t
        0xat
        0x23t
        -0x21t
        -0x11t
        -0x36t
        -0x27t
        -0x48t
        -0x6t
        -0x24t
        0x31t
        0x6bt
        -0x2ft
        -0x53t
        0x19t
        0x49t
        -0x43t
        0x51t
        -0x6at
        -0x12t
        -0x1ct
        -0x58t
        0x41t
        -0x26t
        -0x1t
        -0x33t
        0x55t
        -0x7at
        0x36t
        -0x42t
        0x61t
        0x52t
        -0x8t
        -0x45t
        0xet
        -0x7et
        0x48t
        0x69t
        -0x66t
        -0x20t
        0x47t
        -0x62t
        0x5ct
        0x4t
        0x4bt
        0x34t
        0x15t
        0x79t
        0x26t
        -0x59t
        -0x22t
        0x29t
        -0x52t
        -0x6et
        -0x29t
        -0x7ct
        -0x17t
        -0x2et
        -0x46t
        0x5dt
        -0xdt
        -0x3bt
        -0x50t
        -0x41t
        -0x5ct
        0x3bt
        0x71t
        0x44t
        0x46t
        0x2bt
        -0x4t
        -0x15t
        0x6ft
        -0x2bt
        -0xat
        0x14t
        -0x2t
        0x7ct
        0x70t
        0x5at
        0x7dt
        -0x3t
        0x2ft
        0x18t
        -0x7dt
        0x16t
        -0x5bt
        -0x6ft
        0x1ft
        0x5t
        -0x6bt
        0x74t
        -0x57t
        -0x3ft
        0x5bt
        0x4at
        -0x7bt
        0x6dt
        0x13t
        0x7t
        0x4ft
        0x4et
        0x45t
        -0x4et
        0xft
        -0x37t
        0x1ct
        -0x5at
        -0x44t
        -0x14t
        0x73t
        -0x70t
        0x7bt
        -0x31t
        0x59t
        -0x71t
        -0x5ft
        -0x7t
        0x2dt
        -0xet
        -0x4ft
        0x0t
        -0x6ct
        0x37t
        -0x61t
        -0x30t
        0x2et
        -0x64t
        0x6et
        0x28t
        0x3ft
        -0x80t
        -0x10t
        0x3dt
        -0x2dt
        0x25t
        -0x76t
        -0x4bt
        -0x19t
        0x42t
        -0x4dt
        -0x39t
        -0x16t
        -0x9t
        0x4ct
        0x11t
        0x33t
        0x3t
        -0x5et
        -0x54t
        0x60t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 153
    return-void
.end method

.method protected static A([B)V
    .locals 34
    .param p0, "z"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .local v1, "x0":B
    const/4 v2, 0x1

    aget-byte v3, p0, v2

    .local v3, "x1":B
    const/4 v4, 0x2

    aget-byte v5, p0, v4

    .local v5, "x2":B
    const/4 v6, 0x3

    aget-byte v7, p0, v6

    .local v7, "x3":B
    const/4 v8, 0x4

    aget-byte v9, p0, v8

    .local v9, "x4":B
    const/4 v10, 0x5

    aget-byte v11, p0, v10

    .local v11, "x5":B
    const/4 v12, 0x6

    aget-byte v13, p0, v12

    .local v13, "x6":B
    const/4 v14, 0x7

    aget-byte v15, p0, v14

    .local v15, "x7":B
    const/16 v16, 0x8

    aget-byte v17, p0, v16

    .line 222
    .local v17, "x8":B
    const/16 v18, 0x9

    aget-byte v19, p0, v18

    .local v19, "x9":B
    const/16 v20, 0xa

    aget-byte v21, p0, v20

    .local v21, "x10":B
    const/16 v22, 0xb

    aget-byte v23, p0, v22

    .local v23, "x11":B
    const/16 v24, 0xc

    aget-byte v25, p0, v24

    .local v25, "x12":B
    const/16 v26, 0xd

    aget-byte v27, p0, v26

    .local v27, "x13":B
    const/16 v28, 0xe

    aget-byte v29, p0, v28

    .local v29, "x14":B
    const/16 v30, 0xf

    aget-byte v31, p0, v30

    .line 224
    .local v31, "x15":B
    xor-int v32, v7, v9

    xor-int v32, v32, v13

    xor-int v32, v32, v17

    xor-int v32, v32, v19

    xor-int v32, v32, v27

    const/16 v33, 0x0

    xor-int v0, v32, v29

    int-to-byte v0, v0

    aput-byte v0, p0, v33

    .line 225
    xor-int v0, v5, v11

    xor-int/2addr v0, v15

    xor-int v0, v0, v17

    xor-int v0, v0, v19

    xor-int v0, v0, v25

    xor-int v0, v0, v31

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 226
    xor-int v0, v3, v9

    xor-int/2addr v0, v13

    xor-int v0, v0, v21

    xor-int v0, v0, v23

    xor-int v0, v0, v25

    xor-int v0, v0, v31

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    .line 227
    xor-int v0, v1, v11

    xor-int/2addr v0, v15

    xor-int v0, v0, v21

    xor-int v0, v0, v23

    xor-int v0, v0, v27

    xor-int v0, v0, v29

    int-to-byte v0, v0

    aput-byte v0, p0, v6

    .line 228
    xor-int v0, v1, v5

    xor-int/2addr v0, v11

    xor-int v0, v0, v17

    xor-int v0, v0, v23

    xor-int v0, v0, v29

    xor-int v0, v0, v31

    int-to-byte v0, v0

    aput-byte v0, p0, v8

    .line 229
    xor-int v0, v3, v7

    xor-int/2addr v0, v9

    xor-int v0, v0, v19

    xor-int v0, v0, v21

    xor-int v0, v0, v29

    xor-int v0, v0, v31

    int-to-byte v0, v0

    aput-byte v0, p0, v10

    .line 230
    xor-int v0, v1, v5

    xor-int/2addr v0, v15

    xor-int v0, v0, v19

    xor-int v0, v0, v21

    xor-int v0, v0, v25

    xor-int v0, v0, v27

    int-to-byte v0, v0

    aput-byte v0, p0, v12

    .line 231
    xor-int v0, v3, v7

    xor-int/2addr v0, v13

    xor-int v0, v0, v17

    xor-int v0, v0, v23

    xor-int v0, v0, v25

    xor-int v0, v0, v27

    int-to-byte v0, v0

    aput-byte v0, p0, v14

    .line 232
    xor-int v0, v1, v3

    xor-int/2addr v0, v9

    xor-int/2addr v0, v15

    xor-int v0, v0, v21

    xor-int v0, v0, v27

    xor-int v0, v0, v31

    int-to-byte v0, v0

    aput-byte v0, p0, v16

    .line 233
    xor-int v0, v1, v3

    xor-int/2addr v0, v11

    xor-int/2addr v0, v13

    xor-int v0, v0, v23

    xor-int v0, v0, v25

    xor-int v0, v0, v29

    int-to-byte v0, v0

    aput-byte v0, p0, v18

    .line 234
    xor-int v0, v5, v7

    xor-int/2addr v0, v11

    xor-int/2addr v0, v13

    xor-int v0, v0, v17

    xor-int v0, v0, v27

    xor-int v0, v0, v31

    int-to-byte v0, v0

    aput-byte v0, p0, v20

    .line 235
    xor-int v0, v5, v7

    xor-int/2addr v0, v9

    xor-int/2addr v0, v15

    xor-int v0, v0, v19

    xor-int v0, v0, v25

    xor-int v0, v0, v29

    int-to-byte v0, v0

    aput-byte v0, p0, v22

    .line 236
    xor-int v0, v3, v5

    xor-int/2addr v0, v13

    xor-int/2addr v0, v15

    xor-int v0, v0, v19

    xor-int v0, v0, v23

    xor-int v0, v0, v25

    int-to-byte v0, v0

    aput-byte v0, p0, v24

    .line 237
    xor-int v0, v1, v7

    xor-int/2addr v0, v13

    xor-int/2addr v0, v15

    xor-int v0, v0, v17

    xor-int v0, v0, v21

    xor-int v0, v0, v27

    int-to-byte v0, v0

    aput-byte v0, p0, v26

    .line 238
    xor-int v0, v1, v7

    xor-int/2addr v0, v9

    xor-int/2addr v0, v11

    xor-int v0, v0, v19

    xor-int v0, v0, v23

    xor-int v0, v0, v29

    int-to-byte v0, v0

    aput-byte v0, p0, v28

    .line 239
    xor-int v0, v3, v5

    xor-int/2addr v0, v9

    xor-int/2addr v0, v11

    xor-int v0, v0, v17

    xor-int v0, v0, v21

    xor-int v0, v0, v31

    int-to-byte v0, v0

    aput-byte v0, p0, v30

    .line 240
    return-void
.end method

.method protected static FE([B[B)V
    .locals 0
    .param p0, "D"    # [B
    .param p1, "RK"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "D",
            "RK"
        }
    .end annotation

    .line 244
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 245
    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SL2([B)V

    .line 246
    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->A([B)V

    .line 247
    return-void
.end method

.method protected static FO([B[B)V
    .locals 0
    .param p0, "D"    # [B
    .param p1, "RK"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "D",
            "RK"
        }
    .end annotation

    .line 251
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 252
    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SL1([B)V

    .line 253
    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->A([B)V

    .line 254
    return-void
.end method

.method protected static SB1(B)B
    .locals 2
    .param p0, "x"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 369
    sget-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB2(B)B
    .locals 2
    .param p0, "x"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 374
    sget-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB3(B)B
    .locals 2
    .param p0, "x"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 379
    sget-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB4(B)B
    .locals 2
    .param p0, "x"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 384
    sget-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SL1([B)V
    .locals 2
    .param p0, "z"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 389
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 390
    const/4 v0, 0x1

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 391
    const/4 v0, 0x2

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 392
    const/4 v0, 0x3

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 393
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 394
    const/4 v0, 0x5

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 395
    const/4 v0, 0x6

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 396
    const/4 v0, 0x7

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 397
    const/16 v0, 0x8

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 398
    const/16 v0, 0x9

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 399
    const/16 v0, 0xa

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 400
    const/16 v0, 0xb

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 401
    const/16 v0, 0xc

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 402
    const/16 v0, 0xd

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 403
    const/16 v0, 0xe

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 404
    const/16 v0, 0xf

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 405
    return-void
.end method

.method protected static SL2([B)V
    .locals 2
    .param p0, "z"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 409
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 410
    const/4 v0, 0x1

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 411
    const/4 v0, 0x2

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 412
    const/4 v0, 0x3

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 413
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 414
    const/4 v0, 0x5

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 415
    const/4 v0, 0x6

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 416
    const/4 v0, 0x7

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 417
    const/16 v0, 0x8

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 418
    const/16 v0, 0x9

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 419
    const/16 v0, 0xa

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 420
    const/16 v0, 0xb

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 421
    const/16 v0, 0xc

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 422
    const/16 v0, 0xd

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 423
    const/16 v0, 0xe

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 424
    const/16 v0, 0xf

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 425
    return-void
.end method

.method private bitsOfSecurity()I
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    array-length v0, v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    .line 435
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    array-length v0, v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    .line 436
    :cond_0
    const/16 v0, 0xc0

    goto :goto_0

    .line 437
    :cond_1
    const/16 v0, 0x80

    .line 434
    :goto_0
    return v0
.end method

.method protected static keySchedule(Z[B)[[B
    .locals 21
    .param p0, "forEncryption"    # Z
    .param p1, "K"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "K"
        }
    .end annotation

    .line 258
    move-object/from16 v0, p1

    array-length v1, v0

    .line 259
    .local v1, "keyLen":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v3, 0x20

    if-gt v1, v3, :cond_2

    and-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_2

    .line 264
    ushr-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    .line 266
    .local v3, "keyLenIdx":I
    sget-object v5, Lorg/bouncycastle/crypto/engines/ARIAEngine;->C:[[B

    aget-object v5, v5, v3

    .line 267
    .local v5, "CK1":[B
    sget-object v6, Lorg/bouncycastle/crypto/engines/ARIAEngine;->C:[[B

    add-int/lit8 v7, v3, 0x1

    const/4 v8, 0x3

    rem-int/2addr v7, v8

    aget-object v6, v6, v7

    .line 268
    .local v6, "CK2":[B
    sget-object v7, Lorg/bouncycastle/crypto/engines/ARIAEngine;->C:[[B

    add-int/lit8 v9, v3, 0x2

    rem-int/2addr v9, v8

    aget-object v7, v7, v9

    .line 270
    .local v7, "CK3":[B
    new-array v9, v2, [B

    .local v9, "KL":[B
    new-array v10, v2, [B

    .line 271
    .local v10, "KR":[B
    const/4 v11, 0x0

    invoke-static {v0, v11, v9, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    add-int/lit8 v12, v1, -0x10

    invoke-static {v0, v2, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    new-array v12, v2, [B

    .line 275
    .local v12, "W0":[B
    new-array v13, v2, [B

    .line 276
    .local v13, "W1":[B
    new-array v14, v2, [B

    .line 277
    .local v14, "W2":[B
    new-array v15, v2, [B

    .line 279
    .local v15, "W3":[B
    invoke-static {v9, v11, v12, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    invoke-static {v12, v11, v13, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    invoke-static {v13, v5}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 283
    invoke-static {v13, v10}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 285
    invoke-static {v13, v11, v14, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    invoke-static {v14, v6}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FE([B[B)V

    .line 287
    invoke-static {v14, v12}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 289
    invoke-static {v14, v11, v15, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    invoke-static {v15, v7}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 291
    invoke-static {v15, v13}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 293
    mul-int/lit8 v16, v3, 0x2

    const/16 v17, 0x10

    const/16 v2, 0xc

    const/16 v18, 0x3

    add-int/lit8 v8, v16, 0xc

    .line 294
    .local v8, "numRounds":I
    add-int/lit8 v16, v8, 0x1

    const/16 v19, 0x0

    new-array v11, v4, [I

    const/16 v20, 0x1

    aput v17, v11, v20

    aput v16, v11, v19

    const/16 v16, 0x2

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 296
    .local v4, "rks":[[B
    aget-object v11, v4, v19

    const/16 v19, 0xc

    const/16 v2, 0x13

    invoke-static {v11, v12, v13, v2}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 297
    aget-object v11, v4, v20

    invoke-static {v11, v13, v14, v2}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 298
    aget-object v11, v4, v16

    invoke-static {v11, v14, v15, v2}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 299
    aget-object v11, v4, v18

    invoke-static {v11, v15, v12, v2}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 301
    const/4 v2, 0x4

    aget-object v2, v4, v2

    const/16 v11, 0x1f

    invoke-static {v2, v12, v13, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 302
    const/4 v2, 0x5

    aget-object v2, v4, v2

    invoke-static {v2, v13, v14, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 303
    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-static {v2, v14, v15, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 304
    const/4 v2, 0x7

    aget-object v2, v4, v2

    invoke-static {v2, v15, v12, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 306
    const/16 v2, 0x8

    aget-object v2, v4, v2

    const/16 v11, 0x43

    invoke-static {v2, v12, v13, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 307
    const/16 v2, 0x9

    aget-object v2, v4, v2

    invoke-static {v2, v13, v14, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 308
    const/16 v2, 0xa

    aget-object v2, v4, v2

    invoke-static {v2, v14, v15, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 309
    const/16 v2, 0xb

    aget-object v2, v4, v2

    invoke-static {v2, v15, v12, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 311
    aget-object v2, v4, v19

    const/16 v11, 0x61

    invoke-static {v2, v12, v13, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 312
    const/16 v2, 0xc

    if-le v8, v2, :cond_0

    .line 314
    const/16 v2, 0xd

    aget-object v2, v4, v2

    invoke-static {v2, v13, v14, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 315
    const/16 v16, 0xe

    aget-object v2, v4, v16

    invoke-static {v2, v14, v15, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 316
    const/16 v2, 0xe

    if-le v8, v2, :cond_0

    .line 318
    const/16 v2, 0xf

    aget-object v2, v4, v2

    invoke-static {v2, v15, v12, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 320
    aget-object v2, v4, v17

    const/16 v11, 0x6d

    invoke-static {v2, v12, v13, v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 324
    :cond_0
    if-nez p0, :cond_1

    .line 326
    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->reverseKeys([[B)V

    .line 328
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 330
    aget-object v11, v4, v2

    invoke-static {v11}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->A([B)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v2    # "i":I
    :cond_1
    return-object v4

    .line 261
    .end local v3    # "keyLenIdx":I
    .end local v4    # "rks":[[B
    .end local v5    # "CK1":[B
    .end local v6    # "CK2":[B
    .end local v7    # "CK3":[B
    .end local v8    # "numRounds":I
    .end local v9    # "KL":[B
    .end local v10    # "KR":[B
    .end local v12    # "W0":[B
    .end local v13    # "W1":[B
    .end local v14    # "W2":[B
    .end local v15    # "W3":[B
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key length not 128/192/256 bits."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static keyScheduleRound([B[B[BI)V
    .locals 8
    .param p0, "rk"    # [B
    .param p1, "w"    # [B
    .param p2, "wr"    # [B
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rk",
            "w",
            "wr",
            "n"
        }
    .end annotation

    .line 339
    ushr-int/lit8 v0, p3, 0x3

    .local v0, "off":I
    and-int/lit8 v1, p3, 0x7

    .local v1, "right":I
    rsub-int/lit8 v2, v1, 0x8

    .line 341
    .local v2, "left":I
    rsub-int/lit8 v3, v0, 0xf

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    .line 343
    .local v3, "hi":I
    const/4 v4, 0x0

    .local v4, "to":I
    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 345
    sub-int v5, v4, v0

    and-int/lit8 v5, v5, 0xf

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    .line 347
    .local v5, "lo":I
    shl-int v6, v3, v2

    ushr-int v7, v5, v1

    or-int/2addr v6, v7

    .line 348
    .local v6, "b":I
    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    .line 350
    int-to-byte v7, v6

    aput-byte v7, p0, v4

    .line 352
    move v3, v5

    .line 343
    .end local v5    # "lo":I
    .end local v6    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 354
    .end local v4    # "to":I
    :cond_0
    return-void
.end method

.method protected static reverseKeys([[B)V
    .locals 6
    .param p0, "keys"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 358
    array-length v0, p0

    .local v0, "length":I
    div-int/lit8 v1, v0, 0x2

    .local v1, "limit":I
    add-int/lit8 v2, v0, -0x1

    .line 359
    .local v2, "last":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 361
    aget-object v4, p0, v3

    .line 362
    .local v4, "t":[B
    sub-int v5, v2, v3

    aget-object v5, p0, v5

    aput-object v5, p0, v3

    .line 363
    sub-int v5, v2, v3

    aput-object v4, p0, v5

    .line 359
    .end local v4    # "t":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected static xor([B[B)V
    .locals 1
    .param p0, "z"    # [B
    .param p1, "x"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "z",
            "x"
        }
    .end annotation

    .line 429
    const/16 v0, 0x10

    invoke-static {v0, p1, p0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 430
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, "ARIA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 175
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
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

    .line 157
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 163
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->forEncryption:Z

    .line 164
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keySchedule(Z[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    .line 165
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->bitsOfSecurity()I

    move-result v2

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 166
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 160
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to ARIA init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    if-eqz v0, :cond_3

    .line 185
    array-length v0, p1

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_2

    .line 189
    array-length v0, p3

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1

    .line 194
    new-array v0, v1, [B

    .line 195
    .local v0, "z":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x3

    .line 198
    .local v4, "rounds":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 200
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget-object v3, v5, v3

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 201
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .local v5, "i":I
    aget-object v3, v3, v6

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FE([B[B)V

    move v3, v5

    goto :goto_0

    .line 204
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget-object v3, v5, v3

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 205
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget-object v3, v3, v6

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 206
    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SL2([B)V

    .line 207
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    aget-object v3, v3, v5

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 209
    invoke-static {v0, v2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    return v1

    .line 191
    .end local v0    # "z":[B
    .end local v4    # "rounds":I
    .end local v5    # "i":I
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ARIA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 217
    return-void
.end method
