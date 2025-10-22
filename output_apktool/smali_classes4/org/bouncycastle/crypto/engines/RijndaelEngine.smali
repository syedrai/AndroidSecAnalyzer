.class public Lorg/bouncycastle/crypto/engines/RijndaelEngine;
.super Ljava/lang/Object;
.source "RijndaelEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final MAXKC:I = 0x40

.field private static final MAXROUNDS:I = 0xe

.field private static final S:[B

.field private static final Si:[B

.field private static final aLogtable:[B

.field private static final logtable:[B

.field private static final rcon:[I

.field static shifts0:[[B

.field static shifts1:[[B


# instance fields
.field private A0:J

.field private A1:J

.field private A2:J

.field private A3:J

.field private BC:I

.field private BC_MASK:J

.field private ROUNDS:I

.field private blockBits:I

.field private forEncryption:Z

.field private shifts0SC:[B

.field private shifts1SC:[B

.field private workingKey:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    .line 59
    const/16 v0, 0x1ff

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    .line 94
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    .line 113
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    .line 132
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    .line 135
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_5

    new-array v2, v0, [B

    fill-array-data v2, :array_6

    new-array v3, v0, [B

    fill-array-data v3, :array_7

    new-array v4, v0, [B

    fill-array-data v4, :array_8

    new-array v5, v0, [B

    fill-array-data v5, :array_9

    const/4 v6, 0x5

    new-array v7, v6, [[B

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v2, 0x2

    aput-object v3, v7, v2

    const/4 v3, 0x3

    aput-object v4, v7, v3

    aput-object v5, v7, v0

    sput-object v7, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    .line 144
    new-array v4, v0, [B

    fill-array-data v4, :array_a

    new-array v5, v0, [B

    fill-array-data v5, :array_b

    new-array v7, v0, [B

    fill-array-data v7, :array_c

    new-array v9, v0, [B

    fill-array-data v9, :array_d

    new-array v10, v0, [B

    fill-array-data v10, :array_e

    new-array v6, v6, [[B

    aput-object v4, v6, v8

    aput-object v5, v6, v1

    aput-object v7, v6, v2

    aput-object v9, v6, v3

    aput-object v10, v6, v0

    sput-object v6, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x19t
        0x1t
        0x32t
        0x2t
        0x1at
        -0x3at
        0x4bt
        -0x39t
        0x1bt
        0x68t
        0x33t
        -0x12t
        -0x21t
        0x3t
        0x64t
        0x4t
        -0x20t
        0xet
        0x34t
        -0x73t
        -0x7ft
        -0x11t
        0x4ct
        0x71t
        0x8t
        -0x38t
        -0x8t
        0x69t
        0x1ct
        -0x3ft
        0x7dt
        -0x3et
        0x1dt
        -0x4bt
        -0x7t
        -0x47t
        0x27t
        0x6at
        0x4dt
        -0x1ct
        -0x5at
        0x72t
        -0x66t
        -0x37t
        0x9t
        0x78t
        0x65t
        0x2ft
        -0x76t
        0x5t
        0x21t
        0xft
        -0x1ft
        0x24t
        0x12t
        -0x10t
        -0x7et
        0x45t
        0x35t
        -0x6dt
        -0x26t
        -0x72t
        -0x6at
        -0x71t
        -0x25t
        -0x43t
        0x36t
        -0x30t
        -0x32t
        -0x6ct
        0x13t
        0x5ct
        -0x2et
        -0xft
        0x40t
        0x46t
        -0x7dt
        0x38t
        0x66t
        -0x23t
        -0x3t
        0x30t
        -0x41t
        0x6t
        -0x75t
        0x62t
        -0x4dt
        0x25t
        -0x1et
        -0x68t
        0x22t
        -0x78t
        -0x6ft
        0x10t
        0x7et
        0x6et
        0x48t
        -0x3dt
        -0x5dt
        -0x4at
        0x1et
        0x42t
        0x3at
        0x6bt
        0x28t
        0x54t
        -0x6t
        -0x7bt
        0x3dt
        -0x46t
        0x2bt
        0x79t
        0xat
        0x15t
        -0x65t
        -0x61t
        0x5et
        -0x36t
        0x4et
        -0x2ct
        -0x54t
        -0x1bt
        -0xdt
        0x73t
        -0x59t
        0x57t
        -0x51t
        0x58t
        -0x58t
        0x50t
        -0xct
        -0x16t
        -0x2at
        0x74t
        0x4ft
        -0x52t
        -0x17t
        -0x2bt
        -0x19t
        -0x1at
        -0x53t
        -0x18t
        0x2ct
        -0x29t
        0x75t
        0x7at
        -0x15t
        0x16t
        0xbt
        -0xbt
        0x59t
        -0x35t
        0x5ft
        -0x50t
        -0x64t
        -0x57t
        0x51t
        -0x60t
        0x7ft
        0xct
        -0xat
        0x6ft
        0x17t
        -0x3ct
        0x49t
        -0x14t
        -0x28t
        0x43t
        0x1ft
        0x2dt
        -0x5ct
        0x76t
        0x7bt
        -0x49t
        -0x34t
        -0x45t
        0x3et
        0x5at
        -0x5t
        0x60t
        -0x4ft
        -0x7at
        0x3bt
        0x52t
        -0x5ft
        0x6ct
        -0x56t
        0x55t
        0x29t
        -0x63t
        -0x69t
        -0x4et
        -0x79t
        -0x70t
        0x61t
        -0x42t
        -0x24t
        -0x4t
        -0x44t
        -0x6bt
        -0x31t
        -0x33t
        0x37t
        0x3ft
        0x5bt
        -0x2ft
        0x53t
        0x39t
        -0x7ct
        0x3ct
        0x41t
        -0x5et
        0x6dt
        0x47t
        0x14t
        0x2at
        -0x62t
        0x5dt
        0x56t
        -0xet
        -0x2dt
        -0x55t
        0x44t
        0x11t
        -0x6et
        -0x27t
        0x23t
        0x20t
        0x2et
        -0x77t
        -0x4ct
        0x7ct
        -0x48t
        0x26t
        0x77t
        -0x67t
        -0x1dt
        -0x5bt
        0x67t
        0x4at
        -0x13t
        -0x22t
        -0x3bt
        0x31t
        -0x2t
        0x18t
        0xdt
        0x63t
        -0x74t
        -0x80t
        -0x40t
        -0x9t
        0x70t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        -0x1t
        0x1at
        0x2et
        0x72t
        -0x6at
        -0x5ft
        -0x8t
        0x13t
        0x35t
        0x5ft
        -0x1ft
        0x38t
        0x48t
        -0x28t
        0x73t
        -0x6bt
        -0x5ct
        -0x9t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        -0x56t
        -0x1bt
        0x34t
        0x5ct
        -0x1ct
        0x37t
        0x59t
        -0x15t
        0x26t
        0x6at
        -0x42t
        -0x27t
        0x70t
        -0x70t
        -0x55t
        -0x1at
        0x31t
        0x53t
        -0xbt
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        -0x34t
        0x4ft
        -0x2ft
        0x68t
        -0x48t
        -0x2dt
        0x6et
        -0x4et
        -0x33t
        0x4ct
        -0x2ct
        0x67t
        -0x57t
        -0x20t
        0x3bt
        0x4dt
        -0x29t
        0x62t
        -0x5at
        -0xft
        0x8t
        0x18t
        0x28t
        0x78t
        -0x78t
        -0x7dt
        -0x62t
        -0x47t
        -0x30t
        0x6bt
        -0x43t
        -0x24t
        0x7ft
        -0x7ft
        -0x68t
        -0x4dt
        -0x32t
        0x49t
        -0x25t
        0x76t
        -0x66t
        -0x4bt
        -0x3ct
        0x57t
        -0x7t
        0x10t
        0x30t
        0x50t
        -0x10t
        0xbt
        0x1dt
        0x27t
        0x69t
        -0x45t
        -0x2at
        0x61t
        -0x5dt
        -0x2t
        0x19t
        0x2bt
        0x7dt
        -0x79t
        -0x6et
        -0x53t
        -0x14t
        0x2ft
        0x71t
        -0x6dt
        -0x52t
        -0x17t
        0x20t
        0x60t
        -0x60t
        -0x5t
        0x16t
        0x3at
        0x4et
        -0x2et
        0x6dt
        -0x49t
        -0x3et
        0x5dt
        -0x19t
        0x32t
        0x56t
        -0x6t
        0x15t
        0x3ft
        0x41t
        -0x3dt
        0x5et
        -0x1et
        0x3dt
        0x47t
        -0x37t
        0x40t
        -0x40t
        0x5bt
        -0x13t
        0x2ct
        0x74t
        -0x64t
        -0x41t
        -0x26t
        0x75t
        -0x61t
        -0x46t
        -0x2bt
        0x64t
        -0x54t
        -0x11t
        0x2at
        0x7et
        -0x7et
        -0x63t
        -0x44t
        -0x21t
        0x7at
        -0x72t
        -0x77t
        -0x80t
        -0x65t
        -0x4at
        -0x3ft
        0x58t
        -0x18t
        0x23t
        0x65t
        -0x51t
        -0x16t
        0x25t
        0x6ft
        -0x4ft
        -0x38t
        0x43t
        -0x3bt
        0x54t
        -0x4t
        0x1ft
        0x21t
        0x63t
        -0x5bt
        -0xct
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        -0x67t
        -0x50t
        -0x35t
        0x46t
        -0x36t
        0x45t
        -0x31t
        0x4at
        -0x22t
        0x79t
        -0x75t
        -0x7at
        -0x6ft
        -0x58t
        -0x1dt
        0x3et
        0x42t
        -0x3at
        0x51t
        -0xdt
        0xet
        0x12t
        0x36t
        0x5at
        -0x12t
        0x29t
        0x7bt
        -0x73t
        -0x74t
        -0x71t
        -0x76t
        -0x7bt
        -0x6ct
        -0x59t
        -0xet
        0xdt
        0x17t
        0x39t
        0x4bt
        -0x23t
        0x7ct
        -0x7ct
        -0x69t
        -0x5et
        -0x3t
        0x1ct
        0x24t
        0x6ct
        -0x4ct
        -0x39t
        0x52t
        -0xat
        0x1t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        -0x1t
        0x1at
        0x2et
        0x72t
        -0x6at
        -0x5ft
        -0x8t
        0x13t
        0x35t
        0x5ft
        -0x1ft
        0x38t
        0x48t
        -0x28t
        0x73t
        -0x6bt
        -0x5ct
        -0x9t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        -0x56t
        -0x1bt
        0x34t
        0x5ct
        -0x1ct
        0x37t
        0x59t
        -0x15t
        0x26t
        0x6at
        -0x42t
        -0x27t
        0x70t
        -0x70t
        -0x55t
        -0x1at
        0x31t
        0x53t
        -0xbt
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        -0x34t
        0x4ft
        -0x2ft
        0x68t
        -0x48t
        -0x2dt
        0x6et
        -0x4et
        -0x33t
        0x4ct
        -0x2ct
        0x67t
        -0x57t
        -0x20t
        0x3bt
        0x4dt
        -0x29t
        0x62t
        -0x5at
        -0xft
        0x8t
        0x18t
        0x28t
        0x78t
        -0x78t
        -0x7dt
        -0x62t
        -0x47t
        -0x30t
        0x6bt
        -0x43t
        -0x24t
        0x7ft
        -0x7ft
        -0x68t
        -0x4dt
        -0x32t
        0x49t
        -0x25t
        0x76t
        -0x66t
        -0x4bt
        -0x3ct
        0x57t
        -0x7t
        0x10t
        0x30t
        0x50t
        -0x10t
        0xbt
        0x1dt
        0x27t
        0x69t
        -0x45t
        -0x2at
        0x61t
        -0x5dt
        -0x2t
        0x19t
        0x2bt
        0x7dt
        -0x79t
        -0x6et
        -0x53t
        -0x14t
        0x2ft
        0x71t
        -0x6dt
        -0x52t
        -0x17t
        0x20t
        0x60t
        -0x60t
        -0x5t
        0x16t
        0x3at
        0x4et
        -0x2et
        0x6dt
        -0x49t
        -0x3et
        0x5dt
        -0x19t
        0x32t
        0x56t
        -0x6t
        0x15t
        0x3ft
        0x41t
        -0x3dt
        0x5et
        -0x1et
        0x3dt
        0x47t
        -0x37t
        0x40t
        -0x40t
        0x5bt
        -0x13t
        0x2ct
        0x74t
        -0x64t
        -0x41t
        -0x26t
        0x75t
        -0x61t
        -0x46t
        -0x2bt
        0x64t
        -0x54t
        -0x11t
        0x2at
        0x7et
        -0x7et
        -0x63t
        -0x44t
        -0x21t
        0x7at
        -0x72t
        -0x77t
        -0x80t
        -0x65t
        -0x4at
        -0x3ft
        0x58t
        -0x18t
        0x23t
        0x65t
        -0x51t
        -0x16t
        0x25t
        0x6ft
        -0x4ft
        -0x38t
        0x43t
        -0x3bt
        0x54t
        -0x4t
        0x1ft
        0x21t
        0x63t
        -0x5bt
        -0xct
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        -0x67t
        -0x50t
        -0x35t
        0x46t
        -0x36t
        0x45t
        -0x31t
        0x4at
        -0x22t
        0x79t
        -0x75t
        -0x7at
        -0x6ft
        -0x58t
        -0x1dt
        0x3et
        0x42t
        -0x3at
        0x51t
        -0xdt
        0xet
        0x12t
        0x36t
        0x5at
        -0x12t
        0x29t
        0x7bt
        -0x73t
        -0x74t
        -0x71t
        -0x76t
        -0x7bt
        -0x6ct
        -0x59t
        -0xet
        0xdt
        0x17t
        0x39t
        0x4bt
        -0x23t
        0x7ct
        -0x7ct
        -0x69t
        -0x5et
        -0x3t
        0x1ct
        0x24t
        0x6ct
        -0x4ct
        -0x39t
        0x52t
        -0xat
        0x1t
    .end array-data

    :array_2
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

    :array_3
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

    :array_4
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x20t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x8t
        0x18t
        0x20t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x18t
        0x10t
        0x8t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x20t
        0x18t
        0x10t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x28t
        0x20t
        0x18t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x30t
        0x28t
        0x18t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x38t
        0x28t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 503
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;-><init>(I)V

    .line 504
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "blockBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockBits"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    sparse-switch p1, :sswitch_data_0

    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown blocksize to Rijndael"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :sswitch_0
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 542
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 543
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 544
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    .line 545
    goto :goto_0

    .line 535
    :sswitch_1
    const/16 v0, 0x38

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 536
    const-wide v0, 0xffffffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 537
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 538
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    .line 539
    goto :goto_0

    .line 529
    :sswitch_2
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 530
    const-wide v0, 0xffffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 531
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 532
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    .line 533
    goto :goto_0

    .line 523
    :sswitch_3
    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 524
    const-wide v0, 0xffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 525
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 526
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    .line 527
    goto :goto_0

    .line 517
    :sswitch_4
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 518
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 519
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 520
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    .line 521
    nop

    .line 550
    :goto_0
    iput p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    .line 551
    return-void

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xc0 -> :sswitch_2
        0xe0 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private InvMixColumn()V
    .locals 18

    .line 332
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .local v3, "r3":J
    move-wide v5, v1

    .local v5, "r2":J
    move-wide v7, v1

    .line 333
    .local v1, "r0":J
    .local v7, "r1":J
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    iget v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v9, v10, :cond_4

    .line 335
    iget-wide v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v10, v9

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v11, v10

    .line 336
    .local v11, "a0":I
    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v14, v9

    and-long/2addr v14, v12

    long-to-int v10, v14

    .line 337
    .local v10, "a1":I
    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v9

    and-long/2addr v14, v12

    long-to-int v15, v14

    .line 338
    .local v15, "a2":I
    move-wide/from16 v16, v12

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v12, v9

    and-long v12, v12, v16

    long-to-int v13, v12

    .line 343
    .local v13, "a3":I
    if-eqz v11, :cond_0

    sget-object v14, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v12, v11, 0xff

    aget-byte v12, v14, v12

    and-int/lit16 v12, v12, 0xff

    goto :goto_1

    :cond_0
    const/4 v12, -0x1

    .line 344
    .end local v11    # "a0":I
    .local v12, "a0":I
    :goto_1
    if-eqz v10, :cond_1

    sget-object v11, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v14, v10, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    goto :goto_2

    :cond_1
    const/4 v11, -0x1

    .line 345
    .end local v10    # "a1":I
    .local v11, "a1":I
    :goto_2
    if-eqz v15, :cond_2

    sget-object v10, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v14, v15, 0xff

    aget-byte v10, v10, v14

    and-int/lit16 v10, v10, 0xff

    goto :goto_3

    :cond_2
    const/4 v10, -0x1

    .line 346
    .end local v15    # "a2":I
    .local v10, "a2":I
    :goto_3
    if-eqz v13, :cond_3

    sget-object v14, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v15, v13, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    move/from16 v16, v14

    goto :goto_4

    :cond_3
    const/16 v16, -0x1

    :goto_4
    move/from16 v13, v16

    .line 348
    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v14

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v15

    xor-int/2addr v14, v15

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v15

    xor-int/2addr v14, v15

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v15

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v9

    or-long/2addr v1, v14

    .line 350
    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v14

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v15

    xor-int/2addr v14, v15

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v15

    xor-int/2addr v14, v15

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v15

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v9

    or-long/2addr v7, v14

    .line 352
    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v14

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v15

    xor-int/2addr v14, v15

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v15

    xor-int/2addr v14, v15

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v15

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v9

    or-long/2addr v5, v14

    .line 354
    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v14

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v15

    xor-int/2addr v14, v15

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v15

    xor-int/2addr v14, v15

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v15

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v9

    or-long/2addr v3, v14

    .line 333
    .end local v10    # "a2":I
    .end local v11    # "a1":I
    .end local v12    # "a0":I
    .end local v13    # "a3":I
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_0

    .line 357
    .end local v9    # "j":I
    :cond_4
    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 358
    iput-wide v7, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 359
    iput-wide v5, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 360
    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 361
    return-void
.end method

.method private KeyAddition([J)V
    .locals 4
    .param p1, "rk"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rk"
        }
    .end annotation

    .line 241
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 242
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 243
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 244
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 245
    return-void
.end method

.method private MixColumn()V
    .locals 18

    .line 300
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .local v3, "r3":J
    move-wide v5, v1

    .local v5, "r2":J
    move-wide v7, v1

    .line 302
    .local v1, "r0":J
    .local v7, "r1":J
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    iget v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v9, v10, :cond_0

    .line 304
    iget-wide v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v10, v9

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v11, v10

    .line 305
    .local v11, "a0":I
    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v14, v9

    and-long/2addr v14, v12

    long-to-int v10, v14

    .line 306
    .local v10, "a1":I
    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v9

    and-long/2addr v14, v12

    long-to-int v15, v14

    .line 307
    .local v15, "a2":I
    move-wide/from16 v16, v12

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v12, v9

    and-long v12, v12, v16

    long-to-int v13, v12

    .line 309
    .local v13, "a3":I
    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v12

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v14

    xor-int/2addr v12, v14

    xor-int/2addr v12, v15

    xor-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    move-wide/from16 v16, v3

    .end local v3    # "r3":J
    .local v16, "r3":J
    int-to-long v3, v12

    shl-long/2addr v3, v9

    or-long/2addr v1, v3

    .line 311
    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v3

    invoke-direct {v0, v15}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v13

    xor-int/2addr v3, v11

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v9

    or-long/2addr v7, v3

    .line 313
    invoke-direct {v0, v15}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v3

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v11

    xor-int/2addr v3, v10

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v9

    or-long/2addr v5, v3

    .line 315
    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v3

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v10

    xor-int/2addr v3, v15

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v9

    or-long v3, v16, v3

    .line 302
    .end local v10    # "a1":I
    .end local v11    # "a0":I
    .end local v13    # "a3":I
    .end local v15    # "a2":I
    .end local v16    # "r3":J
    .restart local v3    # "r3":J
    add-int/lit8 v9, v9, 0x8

    goto :goto_0

    .line 318
    .end local v9    # "j":I
    :cond_0
    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 319
    iput-wide v7, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 320
    iput-wide v5, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 321
    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 322
    return-void
.end method

.method private ShiftRow([B)V
    .locals 3
    .param p1, "shiftsSC"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shiftsSC"
        }
    .end annotation

    .line 261
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 262
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 263
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 264
    return-void
.end method

.method private Substitution([B)V
    .locals 2
    .param p1, "box"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "box"
        }
    .end annotation

    .line 287
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 288
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 289
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 290
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 291
    return-void
.end method

.method private applyS(J[B)J
    .locals 7
    .param p1, "r"    # J
    .param p3, "box"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "box"
        }
    .end annotation

    .line 270
    const-wide/16 v0, 0x0

    .line 272
    .local v0, "res":J
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v2, v3, :cond_0

    .line 274
    shr-long v3, p1, v2

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v4, v3

    aget-byte v3, p3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v2

    or-long/2addr v0, v3

    .line 272
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 277
    .end local v2    # "j":I
    :cond_0
    return-wide v0
.end method

.method private decryptBlock([[J)V
    .locals 2
    .param p1, "rk"    # [[J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rk"
        }
    .end annotation

    .line 709
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 710
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    .line 711
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    .line 716
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "r":I
    :goto_0
    if-lez v0, :cond_0

    .line 718
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 719
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->InvMixColumn()V

    .line 720
    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    .line 721
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    .line 716
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 727
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 728
    return-void
.end method

.method private encryptBlock([[J)V
    .locals 2
    .param p1, "rk"    # [[J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rk"
        }
    .end annotation

    .line 671
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 676
    const/4 v0, 0x1

    .local v0, "r":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    if-ge v0, v1, :cond_0

    .line 678
    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    .line 679
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    .line 680
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->MixColumn()V

    .line 681
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_0
    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    .line 688
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    .line 689
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 690
    return-void
.end method

.method private generateWorkingKey([B)[[J
    .locals 22
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 372
    .local v2, "rconpointer":I
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x8

    .line 373
    .local v3, "keyBits":I
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/16 v7, 0x40

    aput v7, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    aput v8, v5, v7

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    .line 374
    .local v5, "tk":[[B
    new-array v4, v4, [I

    aput v8, v4, v6

    const/16 v9, 0xf

    aput v9, v4, v7

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    .line 376
    .local v4, "W":[[J
    sparse-switch v3, :sswitch_data_0

    .line 394
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "Key length not 128/160/192/224/256 bits."

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :sswitch_0
    const/16 v9, 0x8

    .line 392
    .local v9, "KC":I
    goto :goto_0

    .line 388
    .end local v9    # "KC":I
    :sswitch_1
    const/4 v9, 0x7

    .line 389
    .restart local v9    # "KC":I
    goto :goto_0

    .line 385
    .end local v9    # "KC":I
    :sswitch_2
    const/4 v9, 0x6

    .line 386
    .restart local v9    # "KC":I
    goto :goto_0

    .line 382
    .end local v9    # "KC":I
    :sswitch_3
    const/4 v9, 0x5

    .line 383
    .restart local v9    # "KC":I
    goto :goto_0

    .line 379
    .end local v9    # "KC":I
    :sswitch_4
    const/4 v9, 0x4

    .line 380
    .restart local v9    # "KC":I
    nop

    .line 397
    :goto_0
    iget v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    const/4 v11, 0x6

    if-lt v3, v10, :cond_0

    .line 399
    add-int/lit8 v10, v9, 0x6

    iput v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    goto :goto_1

    .line 403
    :cond_0
    iget v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v11

    iput v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    .line 409
    :goto_1
    const/4 v10, 0x0

    .line 411
    .local v10, "index":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v13, v1

    if-ge v12, v13, :cond_1

    .line 413
    rem-int/lit8 v13, v12, 0x4

    aget-object v13, v5, v13

    div-int/lit8 v14, v12, 0x4

    add-int/lit8 v15, v10, 0x1

    .end local v10    # "index":I
    .local v15, "index":I
    aget-byte v10, v1, v10

    aput-byte v10, v13, v14

    .line 411
    add-int/lit8 v12, v12, 0x1

    move v10, v15

    goto :goto_2

    .line 416
    .end local v12    # "i":I
    .end local v15    # "index":I
    .restart local v10    # "index":I
    :cond_1
    const/4 v12, 0x0

    .line 421
    .local v12, "t":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v9, :cond_3

    iget v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/2addr v14, v6

    iget v15, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v15, v15, 0x8

    mul-int v14, v14, v15

    if-ge v12, v14, :cond_3

    .line 423
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    if-ge v14, v8, :cond_2

    .line 425
    iget v15, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v15, v15, 0x8

    div-int v15, v12, v15

    aget-object v15, v4, v15

    aget-wide v16, v15, v14

    aget-object v18, v5, v14

    const/16 v19, 0x1

    aget-byte v6, v18, v13

    and-int/lit16 v6, v6, 0xff

    move/from16 v20, v12

    .end local v12    # "t":I
    .local v20, "t":I
    int-to-long v11, v6

    mul-int/lit8 v6, v20, 0x8

    const/16 v21, 0x0

    iget v7, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    rem-int/2addr v6, v7

    shl-long v6, v11, v6

    or-long v6, v16, v6

    aput-wide v6, v15, v14

    .line 423
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v20

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x6

    goto :goto_4

    .end local v20    # "t":I
    .restart local v12    # "t":I
    :cond_2
    move/from16 v20, v12

    const/16 v19, 0x1

    const/16 v21, 0x0

    .line 421
    .end local v12    # "t":I
    .end local v14    # "i":I
    .restart local v20    # "t":I
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v20, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x6

    .end local v20    # "t":I
    .restart local v12    # "t":I
    goto :goto_3

    :cond_3
    move/from16 v20, v12

    const/16 v19, 0x1

    const/16 v21, 0x0

    .line 433
    .end local v12    # "t":I
    .end local v13    # "j":I
    .restart local v20    # "t":I
    move/from16 v12, v20

    .end local v20    # "t":I
    .restart local v12    # "t":I
    :goto_5
    iget v6, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v6, v6, 0x1

    iget v7, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    mul-int v6, v6, v7

    if-ge v12, v6, :cond_f

    .line 435
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v8, :cond_4

    .line 437
    aget-object v7, v5, v6

    aget-byte v11, v7, v21

    sget-object v13, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    add-int/lit8 v14, v6, 0x1

    rem-int/2addr v14, v8

    aget-object v14, v5, v14

    add-int/lit8 v15, v9, -0x1

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    xor-int/2addr v11, v13

    int-to-byte v11, v11

    aput-byte v11, v7, v21

    .line 435
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 439
    .end local v6    # "i":I
    :cond_4
    aget-object v6, v5, v21

    aget-byte v7, v6, v21

    sget-object v11, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    add-int/lit8 v13, v2, 0x1

    .end local v2    # "rconpointer":I
    .local v13, "rconpointer":I
    aget v2, v11, v2

    xor-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v6, v21

    .line 441
    const/4 v6, 0x6

    if-gt v9, v6, :cond_7

    .line 443
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_7
    if-ge v2, v9, :cond_6

    .line 445
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8
    if-ge v7, v8, :cond_5

    .line 447
    aget-object v11, v5, v7

    aget-byte v14, v11, v2

    aget-object v15, v5, v7

    add-int/lit8 v16, v2, -0x1

    aget-byte v15, v15, v16

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v11, v2

    .line 445
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 443
    .end local v7    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .end local v2    # "j":I
    :cond_6
    goto :goto_e

    .line 453
    :cond_7
    const/4 v2, 0x1

    .restart local v2    # "j":I
    :goto_9
    if-ge v2, v8, :cond_9

    .line 455
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a
    if-ge v7, v8, :cond_8

    .line 457
    aget-object v11, v5, v7

    aget-byte v14, v11, v2

    aget-object v15, v5, v7

    add-int/lit8 v16, v2, -0x1

    aget-byte v15, v15, v16

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v11, v2

    .line 455
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 453
    .end local v7    # "i":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 460
    .end local v2    # "j":I
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v8, :cond_a

    .line 462
    aget-object v7, v5, v2

    aget-byte v11, v7, v8

    sget-object v14, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    aget-object v15, v5, v2

    const/16 v16, 0x3

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    xor-int/2addr v11, v14

    int-to-byte v11, v11

    aput-byte v11, v7, v8

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 464
    .end local v2    # "i":I
    :cond_a
    const/4 v2, 0x5

    .local v2, "j":I
    :goto_c
    if-ge v2, v9, :cond_c

    .line 466
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_d
    if-ge v7, v8, :cond_b

    .line 468
    aget-object v11, v5, v7

    aget-byte v14, v11, v2

    aget-object v15, v5, v7

    add-int/lit8 v16, v2, -0x1

    aget-byte v15, v15, v16

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v11, v2

    .line 466
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 464
    .end local v7    # "i":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 476
    .end local v2    # "j":I
    :cond_c
    :goto_e
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_f
    if-ge v2, v9, :cond_e

    iget v7, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    iget v11, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v11, v11, 0x8

    mul-int v7, v7, v11

    if-ge v12, v7, :cond_e

    .line 478
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_10
    if-ge v7, v8, :cond_d

    .line 480
    iget v11, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v11, v11, 0x8

    div-int v11, v12, v11

    aget-object v11, v4, v11

    aget-wide v14, v11, v7

    aget-object v16, v5, v7

    aget-byte v6, v16, v2

    and-int/lit16 v6, v6, 0xff

    move/from16 v17, v9

    .end local v9    # "KC":I
    .local v17, "KC":I
    int-to-long v8, v6

    mul-int/lit8 v6, v12, 0x8

    iget v1, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    rem-int/2addr v6, v1

    shl-long/2addr v8, v6

    or-long/2addr v8, v14

    aput-wide v8, v11, v7

    .line 478
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v9, v17

    const/4 v6, 0x6

    const/4 v8, 0x4

    goto :goto_10

    .end local v17    # "KC":I
    .restart local v9    # "KC":I
    :cond_d
    move/from16 v17, v9

    .line 476
    .end local v7    # "i":I
    .end local v9    # "KC":I
    .restart local v17    # "KC":I
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v6, 0x6

    const/4 v8, 0x4

    goto :goto_f

    .end local v17    # "KC":I
    .restart local v9    # "KC":I
    :cond_e
    move/from16 v17, v9

    .end local v2    # "j":I
    .end local v9    # "KC":I
    .restart local v17    # "KC":I
    move-object/from16 v1, p1

    move v2, v13

    move/from16 v9, v17

    const/4 v8, 0x4

    goto/16 :goto_5

    .line 485
    .end local v13    # "rconpointer":I
    .end local v17    # "KC":I
    .local v2, "rconpointer":I
    .restart local v9    # "KC":I
    :cond_f
    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xc0 -> :sswitch_2
        0xe0 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private mul0x2(I)B
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 160
    if-eqz p1, :cond_0

    .line 162
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x19

    aget-byte v0, v0, v1

    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private mul0x3(I)B
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 173
    if-eqz p1, :cond_0

    .line 175
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private mul0x9(I)B
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 186
    if-ltz p1, :cond_0

    .line 188
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xc7

    aget-byte v0, v0, v1

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private mul0xb(I)B
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 199
    if-ltz p1, :cond_0

    .line 201
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit8 v1, p1, 0x68

    aget-byte v0, v0, v1

    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private mul0xd(I)B
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 212
    if-ltz p1, :cond_0

    .line 214
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xee

    aget-byte v0, v0, v1

    return v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private mul0xe(I)B
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 225
    if-ltz p1, :cond_0

    .line 227
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xdf

    aget-byte v0, v0, v1

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private packBlock([BI)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "off"
        }
    .end annotation

    .line 652
    move v0, p2

    .line 654
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v1, v2, :cond_0

    .line 656
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p1, v0

    .line 657
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p1, v2

    .line 658
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p1, v0

    .line 659
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p1, v2

    .line 654
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 661
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method private shift(JI)J
    .locals 4
    .param p1, "r"    # J
    .param p3, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "shift"
        }
    .end annotation

    .line 251
    ushr-long v0, p1, p3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    sub-int/2addr v2, p3

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private unpackBlock([BI)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "off"
        }
    .end annotation

    .line 632
    move v0, p2

    .line 634
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 635
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 636
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 637
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 639
    const/16 v1, 0x8

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v1, v2, :cond_0

    .line 641
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 642
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "index":I
    .restart local v0    # "index":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 643
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .restart local v4    # "index":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 644
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "index":I
    .restart local v0    # "index":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 639
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 646
    .end local v1    # "j":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 579
    const-string v0, "Rijndael"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 584
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
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

    .line 565
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 567
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 568
    .local v0, "key":[B
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->generateWorkingKey([B)[[J

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    .line 569
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    .line 570
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x8

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 571
    return-void

    .line 574
    .end local v0    # "key":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to Rijndael init - "

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
    .locals 2
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

    .line 593
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    if-eqz v0, :cond_3

    .line 598
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 603
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 608
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    .line 611
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->encryptBlock([[J)V

    .line 612
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    goto :goto_0

    .line 616
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    .line 617
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->decryptBlock([[J)V

    .line 618
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    .line 621
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 605
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rijndael engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 626
    return-void
.end method
