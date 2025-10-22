.class public Lorg/bouncycastle/crypto/engines/DSTU7624Engine;
.super Ljava/lang/Object;
.source "DSTU7624Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final ROUNDS_128:I = 0xa

.field private static final ROUNDS_256:I = 0xe

.field private static final ROUNDS_512:I = 0x12

.field private static final S0:[B

.field private static final S1:[B

.field private static final S2:[B

.field private static final S3:[B

.field private static final T0:[B

.field private static final T1:[B

.field private static final T2:[B

.field private static final T3:[B


# instance fields
.field private forEncryption:Z

.field private internalState:[J

.field private roundKeys:[[J

.field private roundsAmount:I

.field private wordsInBlock:I

.field private wordsInKey:I

.field private workingKey:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 952
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    .line 982
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    .line 1012
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    .line 1042
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    .line 1072
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    .line 1102
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    .line 1132
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    .line 1162
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x58t
        0x43t
        0x5ft
        0x6t
        0x6bt
        0x75t
        0x6ct
        0x59t
        0x71t
        -0x21t
        -0x79t
        -0x6bt
        0x17t
        -0x10t
        -0x28t
        0x9t
        0x6dt
        -0xdt
        0x1dt
        -0x35t
        -0x37t
        0x4dt
        0x2ct
        -0x51t
        0x79t
        -0x20t
        -0x69t
        -0x3t
        0x6ft
        0x4bt
        0x45t
        0x39t
        0x3et
        -0x23t
        -0x5dt
        0x4ft
        -0x4ct
        -0x4at
        -0x66t
        0xet
        0x1ft
        -0x41t
        0x15t
        -0x1ft
        0x49t
        -0x2et
        -0x6dt
        -0x3at
        -0x6et
        0x72t
        -0x62t
        0x61t
        -0x2ft
        0x63t
        -0x6t
        -0x12t
        -0xct
        0x19t
        -0x2bt
        -0x53t
        0x58t
        -0x5ct
        -0x45t
        -0x5ft
        -0x24t
        -0xet
        -0x7dt
        0x37t
        0x42t
        -0x1ct
        0x7at
        0x32t
        -0x64t
        -0x34t
        -0x55t
        0x4at
        -0x71t
        0x6et
        0x4t
        0x27t
        0x2et
        -0x19t
        -0x1et
        0x5at
        -0x6at
        0x16t
        0x23t
        0x2bt
        -0x3et
        0x65t
        0x66t
        0xft
        -0x44t
        -0x57t
        0x47t
        0x41t
        0x34t
        0x48t
        -0x4t
        -0x49t
        0x6at
        -0x78t
        -0x5bt
        0x53t
        -0x7at
        -0x7t
        0x5bt
        -0x25t
        0x38t
        0x7bt
        -0x3dt
        0x1et
        0x22t
        0x33t
        0x24t
        0x28t
        0x36t
        -0x39t
        -0x4et
        0x3bt
        -0x72t
        0x77t
        -0x46t
        -0xbt
        0x14t
        -0x61t
        0x8t
        0x55t
        -0x65t
        0x4ct
        -0x2t
        0x60t
        0x5ct
        -0x26t
        0x18t
        0x46t
        -0x33t
        0x7dt
        0x21t
        -0x50t
        0x3ft
        0x1bt
        -0x77t
        -0x1t
        -0x15t
        -0x7ct
        0x69t
        0x3at
        -0x63t
        -0x29t
        -0x2dt
        0x70t
        0x67t
        0x40t
        -0x4bt
        -0x22t
        0x5dt
        0x30t
        -0x6ft
        -0x4ft
        0x78t
        0x11t
        0x1t
        -0x1bt
        0x0t
        0x68t
        -0x68t
        -0x60t
        -0x3bt
        0x2t
        -0x5at
        0x74t
        0x2dt
        0xbt
        -0x5et
        0x76t
        -0x4dt
        -0x42t
        -0x32t
        -0x43t
        -0x52t
        -0x17t
        -0x76t
        0x31t
        0x1ct
        -0x14t
        -0xft
        -0x67t
        -0x6ct
        -0x56t
        -0xat
        0x26t
        0x2ft
        -0x11t
        -0x18t
        -0x74t
        0x35t
        0x3t
        -0x2ct
        0x7ft
        -0x5t
        0x5t
        -0x3ft
        0x5et
        -0x70t
        0x20t
        0x3dt
        -0x7et
        -0x9t
        -0x16t
        0xat
        0xdt
        0x7et
        -0x8t
        0x50t
        0x1at
        -0x3ct
        0x7t
        0x57t
        -0x48t
        0x3ct
        0x62t
        -0x1dt
        -0x38t
        -0x54t
        0x52t
        0x64t
        0x10t
        -0x30t
        -0x27t
        0x13t
        0xct
        0x12t
        0x29t
        0x51t
        -0x47t
        -0x31t
        -0x2at
        0x73t
        -0x73t
        -0x7ft
        0x54t
        -0x40t
        -0x13t
        0x4et
        0x44t
        -0x59t
        0x2at
        -0x7bt
        0x25t
        -0x1at
        -0x36t
        0x7ct
        -0x75t
        0x56t
        -0x80t
    .end array-data

    :array_1
    .array-data 1
        -0x32t
        -0x45t
        -0x15t
        -0x6et
        -0x16t
        -0x35t
        0x13t
        -0x3ft
        -0x17t
        0x3at
        -0x2at
        -0x4et
        -0x2et
        -0x70t
        0x17t
        -0x8t
        0x42t
        0x15t
        0x56t
        -0x4ct
        0x65t
        0x1ct
        -0x78t
        0x43t
        -0x3bt
        0x5ct
        0x36t
        -0x46t
        -0xbt
        0x57t
        0x67t
        -0x73t
        0x31t
        -0xat
        0x64t
        0x58t
        -0x62t
        -0xct
        0x22t
        -0x56t
        0x75t
        0xft
        0x2t
        -0x4ft
        -0x21t
        0x6dt
        0x73t
        0x4dt
        0x7ct
        0x26t
        0x2et
        -0x9t
        0x8t
        0x5dt
        0x44t
        0x3et
        -0x61t
        0x14t
        -0x38t
        -0x52t
        0x54t
        0x10t
        -0x28t
        -0x44t
        0x1at
        0x6bt
        0x69t
        -0xdt
        -0x43t
        0x33t
        -0x55t
        -0x6t
        -0x2ft
        -0x65t
        0x68t
        0x4et
        0x16t
        -0x6bt
        -0x6ft
        -0x12t
        0x4ct
        0x63t
        -0x72t
        0x5bt
        -0x34t
        0x3ct
        0x19t
        -0x5ft
        -0x7ft
        0x49t
        0x7bt
        -0x27t
        0x6ft
        0x37t
        0x60t
        -0x36t
        -0x19t
        0x2bt
        0x48t
        -0x3t
        -0x6at
        0x45t
        -0x4t
        0x41t
        0x12t
        0xdt
        0x79t
        -0x1bt
        -0x77t
        -0x74t
        -0x1dt
        0x20t
        0x30t
        -0x24t
        -0x49t
        0x6ct
        0x4at
        -0x4bt
        0x3ft
        -0x69t
        -0x2ct
        0x62t
        0x2dt
        0x6t
        -0x5ct
        -0x5bt
        -0x7dt
        0x5ft
        0x2at
        -0x26t
        -0x37t
        0x0t
        0x7et
        -0x5et
        0x55t
        -0x41t
        0x11t
        -0x2bt
        -0x64t
        -0x31t
        0xet
        0xat
        0x3dt
        0x51t
        0x7dt
        -0x6dt
        0x1bt
        -0x2t
        -0x3ct
        0x47t
        0x9t
        -0x7at
        0xbt
        -0x71t
        -0x63t
        0x6at
        0x7t
        -0x47t
        -0x50t
        -0x68t
        0x18t
        0x32t
        0x71t
        0x4bt
        -0x11t
        0x3bt
        0x70t
        -0x60t
        -0x1ct
        0x40t
        -0x1t
        -0x3dt
        -0x57t
        -0x1at
        0x78t
        -0x7t
        -0x75t
        0x46t
        -0x80t
        0x1et
        0x38t
        -0x1ft
        -0x48t
        -0x58t
        -0x20t
        0xct
        0x23t
        0x76t
        0x1dt
        0x25t
        0x24t
        0x5t
        -0xft
        0x6et
        -0x6ct
        0x28t
        -0x66t
        -0x7ct
        -0x18t
        -0x5dt
        0x4ft
        0x77t
        -0x2dt
        -0x7bt
        -0x1et
        0x52t
        -0xet
        -0x7et
        0x50t
        0x7at
        0x2ft
        0x74t
        0x53t
        -0x4dt
        0x61t
        -0x51t
        0x39t
        0x35t
        -0x22t
        -0x33t
        0x1ft
        -0x67t
        -0x54t
        -0x53t
        0x72t
        0x2ct
        -0x23t
        -0x30t
        -0x79t
        -0x42t
        0x5et
        -0x5at
        -0x14t
        0x4t
        -0x3at
        0x3t
        0x34t
        -0x5t
        -0x25t
        0x59t
        -0x4at
        -0x3et
        0x1t
        -0x10t
        0x5at
        -0x13t
        -0x59t
        0x66t
        0x21t
        0x7ft
        -0x76t
        0x27t
        -0x39t
        -0x40t
        0x29t
        -0x29t
    .end array-data

    :array_2
    .array-data 1
        -0x6dt
        -0x27t
        -0x66t
        -0x4bt
        -0x68t
        0x22t
        0x45t
        -0x4t
        -0x46t
        0x6at
        -0x21t
        0x2t
        -0x61t
        -0x24t
        0x51t
        0x59t
        0x4at
        0x17t
        0x2bt
        -0x3et
        -0x6ct
        -0xct
        -0x45t
        -0x5dt
        0x62t
        -0x1ct
        0x71t
        -0x2ct
        -0x33t
        0x70t
        0x16t
        -0x1ft
        0x49t
        0x3ct
        -0x40t
        -0x28t
        0x5ct
        -0x65t
        -0x53t
        -0x7bt
        0x53t
        -0x5ft
        0x7at
        -0x38t
        0x2dt
        -0x20t
        -0x2ft
        0x72t
        -0x5at
        0x2ct
        -0x3ct
        -0x1dt
        0x76t
        0x78t
        -0x49t
        -0x4ct
        0x9t
        0x3bt
        0xet
        0x41t
        0x4ct
        -0x22t
        -0x4et
        -0x70t
        0x25t
        -0x5bt
        -0x29t
        0x3t
        0x11t
        0x0t
        -0x3dt
        0x2et
        -0x6et
        -0x11t
        0x4et
        0x12t
        -0x63t
        0x7dt
        -0x35t
        0x35t
        0x10t
        -0x2bt
        0x4ft
        -0x62t
        0x4dt
        -0x57t
        0x55t
        -0x3at
        -0x30t
        0x7bt
        0x18t
        -0x69t
        -0x2dt
        0x36t
        -0x1at
        0x48t
        0x56t
        -0x7ft
        -0x71t
        0x77t
        -0x34t
        -0x64t
        -0x47t
        -0x1et
        -0x54t
        -0x48t
        0x2ft
        0x15t
        -0x5ct
        0x7ct
        -0x26t
        0x38t
        0x1et
        0xbt
        0x5t
        -0x2at
        0x14t
        0x6et
        0x6ct
        0x7et
        0x66t
        -0x3t
        -0x4ft
        -0x1bt
        0x60t
        -0x51t
        0x5et
        0x33t
        -0x79t
        -0x37t
        -0x10t
        0x5dt
        0x6dt
        0x3ft
        -0x78t
        -0x73t
        -0x39t
        -0x9t
        0x1dt
        -0x17t
        -0x14t
        -0x13t
        -0x80t
        0x29t
        0x27t
        -0x31t
        -0x67t
        -0x58t
        0x50t
        0xft
        0x37t
        0x24t
        0x28t
        0x30t
        -0x6bt
        -0x2et
        0x3et
        0x5bt
        0x40t
        -0x7dt
        -0x4dt
        0x69t
        0x57t
        0x1ft
        0x7t
        0x1ct
        -0x76t
        -0x44t
        0x20t
        -0x15t
        -0x32t
        -0x72t
        -0x55t
        -0x12t
        0x31t
        -0x5et
        0x73t
        -0x7t
        -0x36t
        0x3at
        0x1at
        -0x5t
        0xdt
        -0x3ft
        -0x2t
        -0x6t
        -0xet
        0x6ft
        -0x43t
        -0x6at
        -0x23t
        0x43t
        0x52t
        -0x4at
        0x8t
        -0xdt
        -0x52t
        -0x42t
        0x19t
        -0x77t
        0x32t
        0x26t
        -0x50t
        -0x16t
        0x4bt
        0x64t
        -0x7ct
        -0x7et
        0x6bt
        -0xbt
        0x79t
        -0x41t
        0x1t
        0x5ft
        0x75t
        0x63t
        0x1bt
        0x23t
        0x3dt
        0x68t
        0x2at
        0x65t
        -0x18t
        -0x6ft
        -0xat
        -0x1t
        0x13t
        0x58t
        -0xft
        0x47t
        0xat
        0x7ft
        -0x3bt
        -0x59t
        -0x19t
        0x61t
        0x5at
        0x6t
        0x46t
        0x44t
        0x42t
        0x4t
        -0x60t
        -0x25t
        0x39t
        -0x7at
        0x54t
        -0x56t
        -0x74t
        0x34t
        0x21t
        -0x75t
        -0x8t
        0xct
        0x74t
        0x67t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        -0x73t
        -0x36t
        0x4dt
        0x73t
        0x4bt
        0x4et
        0x2at
        -0x2ct
        0x52t
        0x26t
        -0x4dt
        0x54t
        0x1et
        0x19t
        0x1ft
        0x22t
        0x3t
        0x46t
        0x3dt
        0x2dt
        0x4at
        0x53t
        -0x7dt
        0x13t
        -0x76t
        -0x49t
        -0x2bt
        0x25t
        0x79t
        -0xbt
        -0x43t
        0x58t
        0x2ft
        0xdt
        0x2t
        -0x13t
        0x51t
        -0x62t
        0x11t
        -0xet
        0x3et
        0x55t
        0x5et
        -0x2ft
        0x16t
        0x3ct
        0x66t
        0x70t
        0x5dt
        -0xdt
        0x45t
        0x40t
        -0x34t
        -0x18t
        -0x6ct
        0x56t
        0x8t
        -0x32t
        0x1at
        0x3at
        -0x2et
        -0x1ft
        -0x21t
        -0x4bt
        0x38t
        0x6et
        0xet
        -0x1bt
        -0xct
        -0x7t
        -0x7at
        -0x17t
        0x4ft
        -0x2at
        -0x7bt
        0x23t
        -0x31t
        0x32t
        -0x67t
        0x31t
        0x14t
        -0x52t
        -0x12t
        -0x38t
        0x48t
        -0x2dt
        0x30t
        -0x5ft
        -0x6et
        0x41t
        -0x4ft
        0x18t
        -0x3ct
        0x2ct
        0x71t
        0x72t
        0x44t
        0x15t
        -0x3t
        0x37t
        -0x42t
        0x5ft
        -0x56t
        -0x65t
        -0x78t
        -0x28t
        -0x55t
        -0x77t
        -0x64t
        -0x6t
        0x60t
        -0x16t
        -0x44t
        0x62t
        0xct
        0x24t
        -0x5at
        -0x58t
        -0x14t
        0x67t
        0x20t
        -0x25t
        0x7ct
        0x28t
        -0x23t
        -0x54t
        0x5bt
        0x34t
        0x7et
        0x10t
        -0xft
        0x7bt
        -0x71t
        0x63t
        -0x60t
        0x5t
        -0x66t
        0x43t
        0x77t
        0x21t
        -0x41t
        0x27t
        0x9t
        -0x3dt
        -0x61t
        -0x4at
        -0x29t
        0x29t
        -0x3et
        -0x15t
        -0x40t
        -0x5ct
        -0x75t
        -0x74t
        0x1dt
        -0x5t
        -0x1t
        -0x3ft
        -0x4et
        -0x69t
        0x2et
        -0x8t
        0x65t
        -0xat
        0x75t
        0x7t
        0x4t
        0x49t
        0x33t
        -0x1ct
        -0x27t
        -0x47t
        -0x30t
        0x42t
        -0x39t
        0x6ct
        -0x70t
        0x0t
        -0x72t
        0x6ft
        0x50t
        0x1t
        -0x3bt
        -0x26t
        0x47t
        0x3ft
        -0x33t
        0x69t
        -0x5et
        -0x1et
        0x7at
        -0x59t
        -0x3at
        -0x6dt
        0xft
        0xat
        0x6t
        -0x1at
        0x2bt
        -0x6at
        -0x5dt
        0x1ct
        -0x51t
        0x6at
        0x12t
        -0x7ct
        0x39t
        -0x19t
        -0x50t
        -0x7et
        -0x9t
        -0x2t
        -0x63t
        -0x79t
        0x5ct
        -0x7ft
        0x35t
        -0x22t
        -0x4ct
        -0x5bt
        -0x4t
        -0x80t
        -0x11t
        -0x35t
        -0x45t
        0x6bt
        0x76t
        -0x46t
        0x5at
        0x7dt
        0x78t
        0xbt
        -0x6bt
        -0x1dt
        -0x53t
        0x74t
        -0x68t
        0x3bt
        0x36t
        0x64t
        0x6dt
        -0x24t
        -0x10t
        0x59t
        -0x57t
        0x4ct
        0x17t
        0x7ft
        -0x6ft
        -0x48t
        -0x37t
        0x57t
        0x1bt
        -0x20t
        0x61t
    .end array-data

    :array_4
    .array-data 1
        -0x5ct
        -0x5et
        -0x57t
        -0x3bt
        0x4et
        -0x37t
        0x3t
        -0x27t
        0x7et
        0xft
        -0x2et
        -0x53t
        -0x19t
        -0x2dt
        0x27t
        0x5bt
        -0x1dt
        -0x5ft
        -0x18t
        -0x1at
        0x7ct
        0x2at
        0x55t
        0xct
        -0x7at
        0x39t
        -0x29t
        -0x73t
        -0x48t
        0x12t
        0x6ft
        0x28t
        -0x33t
        -0x76t
        0x70t
        0x56t
        0x72t
        -0x7t
        -0x41t
        0x4ft
        0x73t
        -0x17t
        -0x9t
        0x57t
        0x16t
        -0x54t
        0x50t
        -0x40t
        -0x63t
        -0x49t
        0x47t
        0x71t
        0x60t
        -0x3ct
        0x74t
        0x43t
        0x6ct
        0x1ft
        -0x6dt
        0x77t
        -0x24t
        -0x32t
        0x20t
        -0x74t
        -0x67t
        0x5ft
        0x44t
        0x1t
        -0xbt
        0x1et
        -0x79t
        0x5et
        0x61t
        0x2ct
        0x4bt
        0x1dt
        -0x7ft
        0x15t
        -0xct
        0x23t
        -0x2at
        -0x16t
        -0x1ft
        0x67t
        -0xft
        0x7ft
        -0x2t
        -0x26t
        0x3ct
        0x7t
        0x53t
        0x6at
        -0x7ct
        -0x64t
        -0x35t
        0x2t
        -0x7dt
        0x33t
        -0x23t
        0x35t
        -0x1et
        0x59t
        0x5at
        -0x68t
        -0x5bt
        -0x6et
        0x64t
        0x4t
        0x6t
        0x10t
        0x4dt
        0x1ct
        -0x69t
        0x8t
        0x31t
        -0x12t
        -0x55t
        0x5t
        -0x51t
        0x79t
        -0x60t
        0x18t
        0x46t
        0x6dt
        -0x4t
        -0x77t
        -0x2ct
        -0x39t
        -0x1t
        -0x10t
        -0x31t
        0x42t
        -0x6ft
        -0x8t
        0x68t
        0xat
        0x65t
        -0x72t
        -0x4at
        -0x3t
        -0x3dt
        -0x11t
        0x78t
        0x4ct
        -0x34t
        -0x62t
        0x30t
        0x2et
        -0x44t
        0xbt
        0x54t
        0x1at
        -0x5at
        -0x45t
        0x26t
        -0x80t
        0x48t
        -0x6ct
        0x32t
        0x7dt
        -0x59t
        0x3ft
        -0x52t
        0x22t
        0x3dt
        0x66t
        -0x56t
        -0xat
        0x0t
        0x5dt
        -0x43t
        0x4at
        -0x20t
        0x3bt
        -0x4ct
        0x17t
        -0x75t
        -0x61t
        0x76t
        -0x50t
        0x24t
        -0x66t
        0x25t
        0x63t
        -0x25t
        -0x15t
        0x7at
        0x3et
        0x5ct
        -0x4dt
        -0x4ft
        0x29t
        -0xet
        -0x36t
        0x58t
        0x6et
        -0x28t
        -0x58t
        0x2ft
        0x75t
        -0x21t
        0x14t
        -0x5t
        0x13t
        0x49t
        -0x78t
        -0x4et
        -0x14t
        -0x1ct
        0x34t
        0x2dt
        -0x6at
        -0x3at
        0x3at
        -0x13t
        -0x6bt
        0xet
        -0x1bt
        -0x7bt
        0x6bt
        0x40t
        0x21t
        -0x65t
        0x9t
        0x19t
        0x2bt
        0x52t
        -0x22t
        0x45t
        -0x5dt
        -0x6t
        0x51t
        -0x3et
        -0x4bt
        -0x2ft
        -0x70t
        -0x47t
        -0xdt
        0x37t
        -0x3ft
        0xdt
        -0x46t
        0x41t
        0x11t
        0x38t
        0x7bt
        -0x42t
        -0x30t
        -0x2bt
        0x69t
        0x36t
        -0x38t
        0x62t
        0x1bt
        -0x7et
        -0x71t
    .end array-data

    :array_5
    .array-data 1
        -0x7dt
        -0xet
        0x2at
        -0x15t
        -0x17t
        -0x41t
        0x7bt
        -0x64t
        0x34t
        -0x6at
        -0x73t
        -0x68t
        -0x47t
        0x69t
        -0x74t
        0x29t
        0x3dt
        -0x78t
        0x68t
        0x6t
        0x39t
        0x11t
        0x4ct
        0xet
        -0x60t
        0x56t
        0x40t
        -0x6et
        0x15t
        -0x44t
        -0x4dt
        -0x24t
        0x6ft
        -0x8t
        0x26t
        -0x46t
        -0x42t
        -0x43t
        0x31t
        -0x5t
        -0x3dt
        -0x2t
        -0x80t
        0x61t
        -0x1ft
        0x7at
        0x32t
        -0x2et
        0x70t
        0x20t
        -0x5ft
        0x45t
        -0x14t
        -0x27t
        0x1at
        0x5dt
        -0x4ct
        -0x28t
        0x9t
        -0x5bt
        0x55t
        -0x72t
        0x37t
        0x76t
        -0x57t
        0x67t
        0x10t
        0x17t
        0x36t
        0x65t
        -0x4ft
        -0x6bt
        0x62t
        0x59t
        0x74t
        -0x5dt
        0x50t
        0x2ft
        0x4bt
        -0x38t
        -0x30t
        -0x71t
        -0x33t
        -0x2ct
        0x3ct
        -0x7at
        0x12t
        0x1dt
        0x23t
        -0x11t
        -0xct
        0x53t
        0x19t
        0x35t
        -0x1at
        0x7ft
        0x5et
        -0x2at
        0x79t
        0x51t
        0x22t
        0x14t
        -0x9t
        0x1et
        0x4at
        0x42t
        -0x65t
        0x41t
        0x73t
        0x2dt
        -0x3ft
        0x5ct
        -0x5at
        -0x5et
        -0x20t
        0x2et
        -0x2dt
        0x28t
        -0x45t
        -0x37t
        -0x52t
        0x6at
        -0x2ft
        0x5at
        0x30t
        -0x70t
        -0x7ct
        -0x7t
        -0x4et
        0x58t
        -0x31t
        0x7et
        -0x3bt
        -0x35t
        -0x69t
        -0x1ct
        0x16t
        0x6ct
        -0x6t
        -0x50t
        0x6dt
        0x1ft
        0x52t
        -0x67t
        0xdt
        0x4et
        0x3t
        -0x6ft
        -0x3et
        0x4dt
        0x64t
        0x77t
        -0x61t
        -0x23t
        -0x3ct
        0x49t
        -0x76t
        -0x66t
        0x24t
        0x38t
        -0x59t
        0x57t
        -0x7bt
        -0x39t
        0x7ct
        0x7dt
        -0x19t
        -0xat
        -0x49t
        -0x54t
        0x27t
        0x46t
        -0x22t
        -0x21t
        0x3bt
        -0x29t
        -0x62t
        0x2bt
        0xbt
        -0x2bt
        0x13t
        0x75t
        -0x10t
        0x72t
        -0x4at
        -0x63t
        0x1bt
        0x1t
        0x3ft
        0x44t
        -0x1bt
        -0x79t
        -0x3t
        0x7t
        -0xft
        -0x55t
        -0x6ct
        0x18t
        -0x16t
        -0x4t
        0x3at
        -0x7et
        0x5ft
        0x5t
        0x54t
        -0x25t
        0x0t
        -0x75t
        -0x1dt
        0x48t
        0xct
        -0x36t
        0x78t
        -0x77t
        0xat
        -0x1t
        0x3et
        0x5bt
        -0x7ft
        -0x12t
        0x71t
        -0x1et
        -0x26t
        0x2ct
        -0x48t
        -0x4bt
        -0x34t
        0x6et
        -0x58t
        0x6bt
        -0x53t
        0x60t
        -0x3at
        0x8t
        0x4t
        0x2t
        -0x18t
        -0xbt
        0x4ft
        -0x5ct
        -0xdt
        -0x40t
        -0x32t
        0x43t
        0x25t
        0x1ct
        0x21t
        0x33t
        0xft
        -0x51t
        0x47t
        -0x13t
        0x66t
        0x63t
        -0x6dt
        -0x56t
    .end array-data

    :array_6
    .array-data 1
        0x45t
        -0x2ct
        0xbt
        0x43t
        -0xft
        0x72t
        -0x13t
        -0x5ct
        -0x3et
        0x38t
        -0x1at
        0x71t
        -0x3t
        -0x4at
        0x3at
        -0x6bt
        0x50t
        0x44t
        0x4bt
        -0x1et
        0x74t
        0x6bt
        0x1et
        0x11t
        0x5at
        -0x3at
        -0x4ct
        -0x28t
        -0x5bt
        -0x76t
        0x70t
        -0x5dt
        -0x58t
        -0x6t
        0x5t
        -0x27t
        -0x69t
        0x40t
        -0x37t
        -0x70t
        -0x68t
        -0x71t
        -0x24t
        0x12t
        0x31t
        0x2ct
        0x47t
        0x6at
        -0x67t
        -0x52t
        -0x38t
        0x7ft
        -0x7t
        0x4ft
        0x5dt
        -0x6at
        0x6ft
        -0xct
        -0x4dt
        0x39t
        0x21t
        -0x26t
        -0x64t
        -0x7bt
        -0x62t
        0x3bt
        -0x10t
        -0x41t
        -0x11t
        0x6t
        -0x12t
        -0x1bt
        0x5ft
        0x20t
        0x10t
        -0x34t
        0x3ct
        0x54t
        0x4at
        0x52t
        -0x6ct
        0xet
        -0x40t
        0x28t
        -0xat
        0x56t
        0x60t
        -0x5et
        -0x1dt
        0xft
        -0x14t
        -0x63t
        0x24t
        -0x7dt
        0x7et
        -0x2bt
        0x7ct
        -0x15t
        0x18t
        -0x29t
        -0x33t
        -0x23t
        0x78t
        -0x1t
        -0x25t
        -0x5ft
        0x9t
        -0x30t
        0x76t
        -0x7ct
        0x75t
        -0x45t
        0x1dt
        0x1at
        0x2ft
        -0x50t
        -0x2t
        -0x2at
        0x34t
        0x63t
        0x35t
        -0x2et
        0x2at
        0x59t
        0x6dt
        0x4dt
        0x77t
        -0x19t
        -0x72t
        0x61t
        -0x31t
        -0x61t
        -0x32t
        0x27t
        -0xbt
        -0x80t
        -0x7at
        -0x39t
        -0x5at
        -0x5t
        -0x8t
        -0x79t
        -0x55t
        0x62t
        0x3ft
        -0x21t
        0x48t
        0x0t
        0x14t
        -0x66t
        -0x43t
        0x5bt
        0x4t
        -0x6et
        0x2t
        0x25t
        0x65t
        0x4ct
        0x53t
        0xct
        -0xet
        0x29t
        -0x51t
        0x17t
        0x6ct
        0x41t
        0x30t
        -0x17t
        -0x6dt
        0x55t
        -0x9t
        -0x54t
        0x68t
        0x26t
        -0x3ct
        0x7dt
        -0x36t
        0x7at
        0x3et
        -0x60t
        0x37t
        0x3t
        -0x3ft
        0x36t
        0x69t
        0x66t
        0x8t
        0x16t
        -0x59t
        -0x44t
        -0x3bt
        -0x2dt
        0x22t
        -0x49t
        0x13t
        0x46t
        0x32t
        -0x18t
        0x57t
        -0x78t
        0x2bt
        -0x7ft
        -0x4et
        0x4et
        0x64t
        0x1ct
        -0x56t
        -0x6ft
        0x58t
        0x2et
        -0x65t
        0x5ct
        0x1bt
        0x51t
        0x73t
        0x42t
        0x23t
        0x1t
        0x6et
        -0xdt
        0xdt
        -0x42t
        0x3dt
        0xat
        0x2dt
        0x1ft
        0x67t
        0x33t
        0x19t
        0x7bt
        0x5et
        -0x16t
        -0x22t
        -0x75t
        -0x35t
        -0x57t
        -0x74t
        -0x73t
        -0x53t
        0x49t
        -0x7et
        -0x1ct
        -0x46t
        -0x3dt
        0x15t
        -0x2ft
        -0x20t
        -0x77t
        -0x4t
        -0x4ft
        -0x47t
        -0x4bt
        0x7t
        0x79t
        -0x48t
        -0x1ft
    .end array-data

    :array_7
    .array-data 1
        -0x4et
        -0x4at
        0x23t
        0x11t
        -0x59t
        -0x78t
        -0x3bt
        -0x5at
        0x39t
        -0x71t
        -0x3ct
        -0x18t
        0x73t
        0x22t
        0x43t
        -0x3dt
        -0x7et
        0x27t
        -0x33t
        0x18t
        0x51t
        0x62t
        0x2dt
        -0x9t
        0x5ct
        0xet
        0x3bt
        -0x3t
        -0x36t
        -0x65t
        0xdt
        0xft
        0x79t
        -0x74t
        0x10t
        0x4ct
        0x74t
        0x1ct
        0xat
        -0x72t
        0x7ct
        -0x6ct
        0x7t
        -0x39t
        0x5et
        0x14t
        -0x5ft
        0x21t
        0x57t
        0x50t
        0x4et
        -0x57t
        -0x80t
        -0x27t
        -0x11t
        0x64t
        0x41t
        -0x31t
        0x3ct
        -0x12t
        0x2et
        0x13t
        0x29t
        -0x46t
        0x34t
        0x5at
        -0x52t
        -0x76t
        0x61t
        0x33t
        0x12t
        -0x47t
        0x55t
        -0x58t
        0x15t
        0x5t
        -0xat
        0x3t
        0x6t
        0x49t
        -0x4bt
        0x25t
        0x9t
        0x16t
        0xct
        0x2at
        0x38t
        -0x4t
        0x20t
        -0xct
        -0x1bt
        0x7ft
        -0x29t
        0x31t
        0x2bt
        0x66t
        0x6ft
        -0x1t
        0x72t
        -0x7at
        -0x10t
        -0x5dt
        0x2ft
        0x78t
        0x0t
        -0x44t
        -0x34t
        -0x1et
        -0x50t
        -0xft
        0x42t
        -0x4ct
        0x30t
        0x5ft
        0x60t
        0x4t
        -0x14t
        -0x5bt
        -0x1dt
        -0x75t
        -0x19t
        0x1dt
        -0x41t
        -0x7ct
        0x7bt
        -0x1at
        -0x7ft
        -0x8t
        -0x22t
        -0x28t
        -0x2et
        0x17t
        -0x32t
        0x4bt
        0x47t
        -0x2at
        0x69t
        0x6ct
        0x19t
        -0x67t
        -0x66t
        0x1t
        -0x4dt
        -0x7bt
        -0x4ft
        -0x7t
        0x59t
        -0x3et
        0x37t
        -0x17t
        -0x38t
        -0x60t
        -0x13t
        0x4ft
        -0x77t
        0x68t
        0x6dt
        -0x2bt
        0x26t
        -0x6ft
        -0x79t
        0x58t
        -0x43t
        -0x37t
        -0x68t
        -0x24t
        0x75t
        -0x40t
        0x76t
        -0xbt
        0x67t
        0x6bt
        0x7et
        -0x15t
        0x52t
        -0x35t
        -0x2ft
        0x5bt
        -0x61t
        0xbt
        -0x25t
        0x40t
        -0x6et
        0x1at
        -0x6t
        -0x54t
        -0x1ct
        -0x1ft
        0x71t
        0x1ft
        0x65t
        -0x73t
        -0x69t
        -0x62t
        -0x6bt
        -0x70t
        0x5dt
        -0x49t
        -0x3ft
        -0x51t
        0x54t
        -0x5t
        0x2t
        -0x20t
        0x35t
        -0x45t
        0x3at
        0x4dt
        -0x53t
        0x2ct
        0x3dt
        0x56t
        0x8t
        0x1bt
        0x4at
        -0x6dt
        0x6at
        -0x55t
        -0x48t
        0x7at
        -0xet
        0x7dt
        -0x26t
        0x3ft
        -0x2t
        0x3et
        -0x42t
        -0x16t
        -0x56t
        0x44t
        -0x3at
        -0x30t
        0x36t
        0x48t
        0x70t
        -0x6at
        0x77t
        0x24t
        0x53t
        -0x21t
        -0xdt
        -0x7dt
        0x28t
        0x32t
        0x45t
        0x1et
        -0x5ct
        -0x2dt
        -0x5et
        0x46t
        0x6et
        -0x64t
        -0x23t
        0x63t
        -0x2ct
        -0x63t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "blockBitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockBitLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    :goto_0
    ushr-int/lit8 v0, p1, 0x6

    iput v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    .line 54
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    .line 55
    return-void
.end method

.method private addRoundKey(I)V
    .locals 7
    .param p1, "round"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v0, v0, p1

    .line 234
    .local v0, "roundKey":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_0

    .line 236
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v1

    aget-wide v5, v0, v1

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private decryptBlock_128([BI[BI)V
    .locals 33
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

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v3

    .line 420
    .local v3, "c0":J
    add-int/lit8 v5, p2, 0x8

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v7

    .line 422
    .local v7, "c1":J
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    iget v9, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    aget-object v5, v5, v9

    .line 423
    .local v5, "roundKey":[J
    const/4 v9, 0x0

    aget-wide v10, v5, v9

    sub-long/2addr v3, v10

    .line 424
    const/4 v10, 0x1

    aget-wide v11, v5, v10

    sub-long/2addr v7, v11

    .line 426
    iget v11, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    .line 428
    .local v11, "round":I
    :goto_0
    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumnInv(J)J

    move-result-wide v3

    .line 429
    invoke-static {v7, v8}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumnInv(J)J

    move-result-wide v7

    .line 431
    long-to-int v12, v3

    .local v12, "lo0":I
    const/16 v13, 0x20

    ushr-long v14, v3, v13

    long-to-int v15, v14

    .line 432
    .local v15, "hi0":I
    long-to-int v14, v7

    const/16 v16, 0x0

    const/16 v17, 0x1

    .local v14, "lo1":I
    ushr-long v9, v7, v13

    long-to-int v10, v9

    .line 435
    .local v10, "hi1":I
    sget-object v9, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    const/16 v18, 0x20

    and-int/lit16 v13, v12, 0xff

    aget-byte v9, v9, v13

    .line 436
    .local v9, "t0":B
    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    move-wide/from16 v19, v3

    .end local v3    # "c0":J
    .local v19, "c0":J
    ushr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v13, v3

    .line 437
    .local v3, "t1":B
    sget-object v4, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v4, v4, v13

    .line 438
    .local v4, "t2":B
    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v21, v12, 0x18

    aget-byte v13, v13, v21

    .line 439
    .local v13, "t3":B
    move-object/from16 v21, v5

    .end local v5    # "roundKey":[J
    .local v21, "roundKey":[J
    and-int/lit16 v5, v9, 0xff

    move/from16 v22, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int v5, v22, v5

    move/from16 v22, v3

    .end local v3    # "t1":B
    .local v22, "t1":B
    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v5, v13, 0x18

    or-int/2addr v3, v5

    .line 440
    .end local v12    # "lo0":I
    .local v3, "lo0":I
    sget-object v5, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v12, v10, 0xff

    aget-byte v5, v5, v12

    .line 441
    .local v5, "t4":B
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    move/from16 v23, v4

    .end local v4    # "t2":B
    .local v23, "t2":B
    ushr-int/lit8 v4, v10, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v12, v4

    .line 442
    .local v4, "t5":B
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v6, v10, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v12, v6

    .line 443
    .local v6, "t6":B
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v24, v10, 0x18

    aget-byte v12, v12, v24

    .line 444
    .local v12, "t7":B
    move-wide/from16 v24, v7

    .end local v7    # "c1":J
    .local v24, "c1":J
    and-int/lit16 v7, v5, 0xff

    and-int/lit16 v8, v4, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    and-int/lit16 v8, v6, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v12, 0x18

    or-int/2addr v7, v8

    .line 445
    .end local v10    # "hi1":I
    .local v7, "hi1":I
    move v10, v4

    move v8, v5

    .end local v4    # "t5":B
    .end local v5    # "t4":B
    .local v8, "t4":B
    .local v10, "t5":B
    int-to-long v4, v3

    const-wide v26, 0xffffffffL

    and-long v4, v4, v26

    move/from16 v28, v3

    move-wide/from16 v29, v4

    .end local v3    # "lo0":I
    .local v28, "lo0":I
    int-to-long v3, v7

    shl-long v3, v3, v18

    or-long v3, v29, v3

    .line 449
    .end local v6    # "t6":B
    .end local v8    # "t4":B
    .end local v9    # "t0":B
    .end local v10    # "t5":B
    .end local v12    # "t7":B
    .end local v13    # "t3":B
    .end local v19    # "c0":J
    .end local v22    # "t1":B
    .end local v23    # "t2":B
    .local v3, "c0":J
    sget-object v5, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v6, v14, 0xff

    aget-byte v5, v5, v6

    .line 450
    .local v5, "t0":B
    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v8, v14, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v6, v6, v8

    .line 451
    .local v6, "t1":B
    sget-object v8, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v9, v14, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    .line 452
    .local v8, "t2":B
    sget-object v9, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v10, v14, 0x18

    aget-byte v9, v9, v10

    .line 453
    .local v9, "t3":B
    and-int/lit16 v10, v5, 0xff

    and-int/lit16 v12, v6, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    and-int/lit16 v12, v8, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v10, v12

    shl-int/lit8 v12, v9, 0x18

    or-int/2addr v10, v12

    .line 454
    .end local v14    # "lo1":I
    .local v10, "lo1":I
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v13, v15, 0xff

    aget-byte v12, v12, v13

    .line 455
    .local v12, "t4":B
    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v14, v15, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    .line 456
    .local v13, "t5":B
    sget-object v14, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    move-wide/from16 v19, v3

    .end local v3    # "c0":J
    .restart local v19    # "c0":J
    ushr-int/lit8 v3, v15, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v14, v3

    .line 457
    .local v3, "t6":B
    sget-object v4, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v14, v15, 0x18

    aget-byte v4, v4, v14

    .line 458
    .local v4, "t7":B
    and-int/lit16 v14, v12, 0xff

    move/from16 v22, v4

    .end local v4    # "t7":B
    .local v22, "t7":B
    and-int/lit16 v4, v13, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v14

    and-int/lit16 v14, v3, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v4, v14

    shl-int/lit8 v14, v22, 0x18

    or-int/2addr v4, v14

    .line 459
    .end local v15    # "hi0":I
    .local v4, "hi0":I
    int-to-long v14, v10

    and-long v14, v14, v26

    move/from16 v23, v5

    move/from16 v26, v6

    .end local v5    # "t0":B
    .end local v6    # "t1":B
    .local v23, "t0":B
    .local v26, "t1":B
    int-to-long v5, v4

    shl-long v5, v5, v18

    or-long/2addr v5, v14

    .line 462
    .end local v3    # "t6":B
    .end local v8    # "t2":B
    .end local v9    # "t3":B
    .end local v12    # "t4":B
    .end local v13    # "t5":B
    .end local v22    # "t7":B
    .end local v23    # "t0":B
    .end local v24    # "c1":J
    .end local v26    # "t1":B
    .local v5, "c1":J
    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_0

    .line 464
    nop

    .line 472
    .end local v4    # "hi0":I
    .end local v7    # "hi1":I
    .end local v10    # "lo1":I
    .end local v11    # "round":I
    .end local v28    # "lo0":I
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v3, v3, v16

    .line 473
    .end local v21    # "roundKey":[J
    .local v3, "roundKey":[J
    aget-wide v7, v3, v16

    sub-long v7, v19, v7

    .line 474
    .end local v19    # "c0":J
    .local v7, "c0":J
    aget-wide v9, v3, v17

    sub-long/2addr v5, v9

    .line 476
    invoke-static {v7, v8, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 477
    add-int/lit8 v4, v2, 0x8

    invoke-static {v5, v6, v1, v4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 478
    return-void

    .line 467
    .end local v3    # "roundKey":[J
    .restart local v4    # "hi0":I
    .local v7, "hi1":I
    .restart local v10    # "lo1":I
    .restart local v11    # "round":I
    .restart local v19    # "c0":J
    .restart local v21    # "roundKey":[J
    .restart local v28    # "lo0":I
    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v3, v3, v11

    .line 468
    .end local v21    # "roundKey":[J
    .restart local v3    # "roundKey":[J
    aget-wide v8, v3, v16

    xor-long v8, v19, v8

    .line 469
    .end local v19    # "c0":J
    .local v8, "c0":J
    aget-wide v12, v3, v17

    xor-long/2addr v5, v12

    .line 470
    .end local v4    # "hi0":I
    .end local v7    # "hi1":I
    .end local v10    # "lo1":I
    .end local v28    # "lo0":I
    move-wide/from16 v31, v5

    move-object v5, v3

    move-wide v3, v8

    move-wide/from16 v7, v31

    move-object/from16 v6, p1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method private encryptBlock_128([BI[BI)V
    .locals 33
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

    .line 482
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v3

    .line 483
    .local v3, "c0":J
    add-int/lit8 v5, p2, 0x8

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v7

    .line 485
    .local v7, "c1":J
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    const/4 v9, 0x0

    aget-object v5, v5, v9

    .line 486
    .local v5, "roundKey":[J
    aget-wide v10, v5, v9

    add-long/2addr v3, v10

    .line 487
    const/4 v10, 0x1

    aget-wide v11, v5, v10

    add-long/2addr v7, v11

    .line 489
    const/4 v11, 0x0

    .line 491
    .local v11, "round":I
    :goto_0
    long-to-int v12, v3

    .local v12, "lo0":I
    const/16 v13, 0x20

    ushr-long v14, v3, v13

    long-to-int v15, v14

    .line 492
    .local v15, "hi0":I
    long-to-int v14, v7

    const/16 v16, 0x0

    const/16 v17, 0x1

    .local v14, "lo1":I
    ushr-long v9, v7, v13

    long-to-int v10, v9

    .line 495
    .local v10, "hi1":I
    sget-object v9, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    const/16 v18, 0x20

    and-int/lit16 v13, v12, 0xff

    aget-byte v9, v9, v13

    .line 496
    .local v9, "t0":B
    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    move-wide/from16 v19, v3

    .end local v3    # "c0":J
    .local v19, "c0":J
    ushr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v13, v3

    .line 497
    .local v3, "t1":B
    sget-object v4, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v4, v4, v13

    .line 498
    .local v4, "t2":B
    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v21, v12, 0x18

    aget-byte v13, v13, v21

    .line 499
    .local v13, "t3":B
    move-object/from16 v21, v5

    .end local v5    # "roundKey":[J
    .local v21, "roundKey":[J
    and-int/lit16 v5, v9, 0xff

    move/from16 v22, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int v5, v22, v5

    move/from16 v22, v3

    .end local v3    # "t1":B
    .local v22, "t1":B
    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v5, v13, 0x18

    or-int/2addr v3, v5

    .line 500
    .end local v12    # "lo0":I
    .local v3, "lo0":I
    sget-object v5, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v12, v10, 0xff

    aget-byte v5, v5, v12

    .line 501
    .local v5, "t4":B
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    move/from16 v23, v4

    .end local v4    # "t2":B
    .local v23, "t2":B
    ushr-int/lit8 v4, v10, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v12, v4

    .line 502
    .local v4, "t5":B
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v6, v10, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v12, v6

    .line 503
    .local v6, "t6":B
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v24, v10, 0x18

    aget-byte v12, v12, v24

    .line 504
    .local v12, "t7":B
    move-wide/from16 v24, v7

    .end local v7    # "c1":J
    .local v24, "c1":J
    and-int/lit16 v7, v5, 0xff

    and-int/lit16 v8, v4, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    and-int/lit16 v8, v6, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v12, 0x18

    or-int/2addr v7, v8

    .line 505
    .end local v10    # "hi1":I
    .local v7, "hi1":I
    move v10, v4

    move v8, v5

    .end local v4    # "t5":B
    .end local v5    # "t4":B
    .local v8, "t4":B
    .local v10, "t5":B
    int-to-long v4, v3

    const-wide v26, 0xffffffffL

    and-long v4, v4, v26

    move/from16 v28, v3

    move-wide/from16 v29, v4

    .end local v3    # "lo0":I
    .local v28, "lo0":I
    int-to-long v3, v7

    shl-long v3, v3, v18

    or-long v3, v29, v3

    .line 509
    .end local v6    # "t6":B
    .end local v8    # "t4":B
    .end local v9    # "t0":B
    .end local v10    # "t5":B
    .end local v12    # "t7":B
    .end local v13    # "t3":B
    .end local v19    # "c0":J
    .end local v22    # "t1":B
    .end local v23    # "t2":B
    .local v3, "c0":J
    sget-object v5, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v6, v14, 0xff

    aget-byte v5, v5, v6

    .line 510
    .local v5, "t0":B
    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v8, v14, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v6, v6, v8

    .line 511
    .local v6, "t1":B
    sget-object v8, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v9, v14, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    .line 512
    .local v8, "t2":B
    sget-object v9, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v10, v14, 0x18

    aget-byte v9, v9, v10

    .line 513
    .local v9, "t3":B
    and-int/lit16 v10, v5, 0xff

    and-int/lit16 v12, v6, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    and-int/lit16 v12, v8, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v10, v12

    shl-int/lit8 v12, v9, 0x18

    or-int/2addr v10, v12

    .line 514
    .end local v14    # "lo1":I
    .local v10, "lo1":I
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v13, v15, 0xff

    aget-byte v12, v12, v13

    .line 515
    .local v12, "t4":B
    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v14, v15, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    .line 516
    .local v13, "t5":B
    sget-object v14, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    move-wide/from16 v19, v3

    .end local v3    # "c0":J
    .restart local v19    # "c0":J
    ushr-int/lit8 v3, v15, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v14, v3

    .line 517
    .local v3, "t6":B
    sget-object v4, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v14, v15, 0x18

    aget-byte v4, v4, v14

    .line 518
    .local v4, "t7":B
    and-int/lit16 v14, v12, 0xff

    move/from16 v22, v4

    .end local v4    # "t7":B
    .local v22, "t7":B
    and-int/lit16 v4, v13, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v14

    and-int/lit16 v14, v3, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v4, v14

    shl-int/lit8 v14, v22, 0x18

    or-int/2addr v4, v14

    .line 519
    .end local v15    # "hi0":I
    .local v4, "hi0":I
    int-to-long v14, v10

    and-long v14, v14, v26

    move/from16 v23, v5

    move/from16 v26, v6

    .end local v5    # "t0":B
    .end local v6    # "t1":B
    .local v23, "t0":B
    .local v26, "t1":B
    int-to-long v5, v4

    shl-long v5, v5, v18

    or-long/2addr v5, v14

    .line 522
    .end local v3    # "t6":B
    .end local v8    # "t2":B
    .end local v9    # "t3":B
    .end local v12    # "t4":B
    .end local v13    # "t5":B
    .end local v22    # "t7":B
    .end local v23    # "t0":B
    .end local v24    # "c1":J
    .end local v26    # "t1":B
    .local v5, "c1":J
    invoke-static/range {v19 .. v20}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumn(J)J

    move-result-wide v8

    .line 523
    .end local v19    # "c0":J
    .local v8, "c0":J
    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumn(J)J

    move-result-wide v5

    .line 525
    add-int/lit8 v11, v11, 0x1

    iget v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v11, v3, :cond_0

    .line 527
    nop

    .line 535
    .end local v4    # "hi0":I
    .end local v7    # "hi1":I
    .end local v10    # "lo1":I
    .end local v11    # "round":I
    .end local v28    # "lo0":I
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    iget v4, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    aget-object v3, v3, v4

    .line 536
    .end local v21    # "roundKey":[J
    .local v3, "roundKey":[J
    aget-wide v10, v3, v16

    add-long/2addr v8, v10

    .line 537
    aget-wide v10, v3, v17

    add-long/2addr v5, v10

    .line 539
    invoke-static {v8, v9, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 540
    add-int/lit8 v4, v2, 0x8

    invoke-static {v5, v6, v1, v4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 541
    return-void

    .line 530
    .end local v3    # "roundKey":[J
    .restart local v4    # "hi0":I
    .restart local v7    # "hi1":I
    .restart local v10    # "lo1":I
    .restart local v11    # "round":I
    .restart local v21    # "roundKey":[J
    .restart local v28    # "lo0":I
    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v3, v3, v11

    .line 531
    .end local v21    # "roundKey":[J
    .restart local v3    # "roundKey":[J
    aget-wide v12, v3, v16

    xor-long/2addr v8, v12

    .line 532
    aget-wide v12, v3, v17

    xor-long/2addr v5, v12

    .line 533
    .end local v4    # "hi0":I
    .end local v7    # "hi1":I
    .end local v10    # "lo1":I
    .end local v28    # "lo0":I
    move-wide/from16 v31, v5

    move-object v5, v3

    move-wide v3, v8

    move-wide/from16 v7, v31

    move-object/from16 v6, p1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method private invShiftRows()V
    .locals 38

    .line 655
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    const-wide v2, 0xffffffff0000L

    const-wide v4, -0x100000000L

    const-wide v6, -0xffff00010000L

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 718
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :sswitch_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v12, v1, v11

    .local v12, "c0":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v14, v1, v10

    .local v14, "c1":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v16, v1, v9

    .local v16, "c2":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v18, v1, v8

    .line 688
    .local v18, "c3":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v20, 0x4

    aget-wide v21, v1, v20

    .local v21, "c4":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v23, 0x5

    aget-wide v24, v1, v23

    .local v24, "c5":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v26, 0x6

    aget-wide v27, v1, v26

    .local v27, "c6":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v29, 0x7

    aget-wide v30, v1, v29

    .line 691
    .local v30, "c7":J
    xor-long v32, v12, v14

    const-wide v34, -0xff00ff00ff0100L    # -5.82767264895205E303

    and-long v32, v32, v34

    .local v32, "d":J
    xor-long v12, v12, v32

    xor-long v14, v14, v32

    .line 692
    xor-long v36, v16, v18

    and-long v32, v36, v34

    xor-long v16, v16, v32

    xor-long v18, v18, v32

    .line 693
    xor-long v36, v21, v24

    and-long v32, v36, v34

    xor-long v21, v21, v32

    xor-long v24, v24, v32

    .line 694
    xor-long v36, v27, v30

    and-long v32, v36, v34

    xor-long v27, v27, v32

    xor-long v30, v30, v32

    .line 696
    xor-long v34, v12, v16

    and-long v32, v34, v6

    xor-long v12, v12, v32

    xor-long v16, v16, v32

    .line 697
    xor-long v34, v14, v18

    const-wide v36, 0xffff0000ffff00L

    and-long v32, v34, v36

    xor-long v14, v14, v32

    xor-long v18, v18, v32

    .line 698
    xor-long v34, v21, v27

    and-long v6, v34, v6

    .end local v32    # "d":J
    .local v6, "d":J
    xor-long v21, v21, v6

    xor-long v27, v27, v6

    .line 699
    xor-long v32, v24, v30

    and-long v6, v32, v36

    xor-long v24, v24, v6

    xor-long v30, v30, v6

    .line 701
    xor-long v32, v12, v21

    and-long v4, v32, v4

    .end local v6    # "d":J
    .local v4, "d":J
    xor-long v6, v12, v4

    .end local v12    # "c0":J
    .local v6, "c0":J
    xor-long v12, v21, v4

    .line 702
    .end local v21    # "c4":J
    .local v12, "c4":J
    xor-long v21, v14, v24

    const-wide v32, 0xffffffff000000L

    and-long v4, v21, v32

    xor-long/2addr v14, v4

    xor-long v21, v24, v4

    .line 703
    .end local v24    # "c5":J
    .local v21, "c5":J
    xor-long v24, v16, v27

    and-long v2, v24, v2

    .end local v4    # "d":J
    .local v2, "d":J
    xor-long v4, v16, v2

    .end local v16    # "c2":J
    .local v4, "c2":J
    xor-long v16, v27, v2

    .line 704
    .end local v27    # "c6":J
    .local v16, "c6":J
    xor-long v24, v18, v30

    const-wide v27, 0xffffffff00L

    and-long v1, v24, v27

    .end local v2    # "d":J
    .local v1, "d":J
    xor-long v18, v18, v1

    xor-long v24, v30, v1

    .line 706
    .end local v30    # "c7":J
    .local v24, "c7":J
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v6, v3, v11

    .line 707
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v14, v3, v10

    .line 708
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v4, v3, v9

    .line 709
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v18, v3, v8

    .line 710
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v12, v3, v20

    .line 711
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v21, v3, v23

    .line 712
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v16, v3, v26

    .line 713
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v24, v3, v29

    .line 714
    goto :goto_0

    .line 670
    .end local v1    # "d":J
    .end local v4    # "c2":J
    .end local v6    # "c0":J
    .end local v12    # "c4":J
    .end local v14    # "c1":J
    .end local v16    # "c6":J
    .end local v18    # "c3":J
    .end local v21    # "c5":J
    .end local v24    # "c7":J
    :sswitch_1
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v12, v1, v11

    .local v12, "c0":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v14, v1, v10

    .restart local v14    # "c1":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v16, v1, v9

    .local v16, "c2":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v18, v1, v8

    .line 673
    .restart local v18    # "c3":J
    xor-long v20, v12, v14

    and-long v20, v20, v6

    .local v20, "d":J
    xor-long v12, v12, v20

    xor-long v14, v14, v20

    .line 674
    xor-long v22, v16, v18

    and-long v6, v22, v6

    .end local v20    # "d":J
    .local v6, "d":J
    xor-long v16, v16, v6

    xor-long v18, v18, v6

    .line 676
    xor-long v20, v12, v16

    and-long v4, v20, v4

    .end local v6    # "d":J
    .local v4, "d":J
    xor-long v6, v12, v4

    .end local v12    # "c0":J
    .local v6, "c0":J
    xor-long v12, v16, v4

    .line 677
    .end local v16    # "c2":J
    .local v12, "c2":J
    xor-long v16, v14, v18

    and-long v2, v16, v2

    .end local v4    # "d":J
    .restart local v2    # "d":J
    xor-long v4, v14, v2

    .end local v14    # "c1":J
    .local v4, "c1":J
    xor-long v14, v18, v2

    .line 679
    .end local v18    # "c3":J
    .local v14, "c3":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v6, v1, v11

    .line 680
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v4, v1, v10

    .line 681
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v12, v1, v9

    .line 682
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v14, v1, v8

    .line 683
    goto :goto_0

    .line 659
    .end local v2    # "d":J
    .end local v4    # "c1":J
    .end local v6    # "c0":J
    .end local v12    # "c2":J
    .end local v14    # "c3":J
    :sswitch_2
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v11

    .local v2, "c0":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v1, v10

    .line 662
    .local v6, "c1":J
    xor-long v8, v2, v6

    and-long/2addr v4, v8

    .local v4, "d":J
    xor-long/2addr v2, v4

    xor-long/2addr v6, v4

    .line 664
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v2, v1, v11

    .line 665
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v6, v1, v10

    .line 666
    nop

    .line 721
    .end local v2    # "c0":J
    .end local v4    # "d":J
    .end local v6    # "c1":J
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private invSubBytes()V
    .locals 19

    .line 565
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_0

    .line 567
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v1

    .line 568
    .local v3, "u":J
    long-to-int v2, v3

    .local v2, "lo":I
    const/16 v5, 0x20

    ushr-long v6, v3, v5

    long-to-int v7, v6

    .line 569
    .local v7, "hi":I
    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v8, v2, 0xff

    aget-byte v6, v6, v8

    .line 570
    .local v6, "t0":B
    sget-object v8, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v9, v2, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    .line 571
    .local v8, "t1":B
    sget-object v9, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v10, v2, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    .line 572
    .local v9, "t2":B
    sget-object v10, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v11, v2, 0x18

    aget-byte v10, v10, v11

    .line 573
    .local v10, "t3":B
    and-int/lit16 v11, v6, 0xff

    and-int/lit16 v12, v8, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    and-int/lit16 v12, v9, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v10, 0x18

    or-int v2, v11, v12

    .line 574
    sget-object v11, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v12, v7, 0xff

    aget-byte v11, v11, v12

    .line 575
    .local v11, "t4":B
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    .line 576
    .local v12, "t5":B
    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v14, v7, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    .line 577
    .local v13, "t6":B
    sget-object v14, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v15, v7, 0x18

    aget-byte v14, v14, v15

    .line 578
    .local v14, "t7":B
    and-int/lit16 v15, v11, 0xff

    const/16 v16, 0x20

    and-int/lit16 v5, v12, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v15

    and-int/lit16 v15, v13, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v5, v15

    shl-int/lit8 v15, v14, 0x18

    or-int/2addr v5, v15

    .line 579
    .end local v7    # "hi":I
    .local v5, "hi":I
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    move v15, v1

    .end local v1    # "i":I
    .local v15, "i":I
    int-to-long v0, v2

    const-wide v17, 0xffffffffL

    and-long v0, v0, v17

    move-wide/from16 v17, v0

    int-to-long v0, v5

    shl-long v0, v0, v16

    or-long v0, v17, v0

    aput-wide v0, v7, v15

    .line 565
    .end local v2    # "lo":I
    .end local v3    # "u":J
    .end local v5    # "hi":I
    .end local v6    # "t0":B
    .end local v8    # "t1":B
    .end local v9    # "t2":B
    .end local v10    # "t3":B
    .end local v11    # "t4":B
    .end local v12    # "t5":B
    .end local v13    # "t6":B
    .end local v14    # "t7":B
    add-int/lit8 v1, v15, 0x1

    move-object/from16 v0, p0

    .end local v15    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 581
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static mixColumn(J)J
    .locals 11
    .param p0, "c"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 751
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v0

    .line 754
    .local v0, "x1":J
    const/16 v2, 0x8

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v2

    xor-long/2addr v2, p0

    .line 755
    .local v2, "u":J
    const/16 v4, 0x10

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v4

    xor-long/2addr v2, v4

    .line 756
    const/16 v4, 0x30

    invoke-static {v4, p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v5

    xor-long/2addr v2, v5

    .line 758
    xor-long v5, v2, p0

    xor-long/2addr v5, v0

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX2(J)J

    move-result-wide v5

    .line 760
    .local v5, "v":J
    const/16 v7, 0x20

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v7

    xor-long/2addr v7, v2

    const/16 v9, 0x28

    invoke-static {v9, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v9

    xor-long/2addr v7, v9

    invoke-static {v4, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v9

    xor-long/2addr v7, v9

    return-wide v7
.end method

.method private static mixColumnInv(J)J
    .locals 28
    .param p0, "c"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 818
    move-wide/from16 v0, p0

    move-wide/from16 v2, p0

    .line 819
    .local v2, "u0":J
    const/16 v4, 0x8

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v4

    xor-long/2addr v2, v4

    .line 820
    const/16 v4, 0x20

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v5

    xor-long/2addr v2, v5

    .line 821
    const/16 v5, 0x30

    invoke-static {v5, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v6

    xor-long/2addr v2, v6

    .line 823
    xor-long v6, v2, v0

    .line 825
    .local v6, "t":J
    invoke-static {v5, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v8

    .line 826
    .local v8, "c48":J
    const/16 v5, 0x38

    invoke-static {v5, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v10

    .line 828
    .local v10, "c56":J
    xor-long v12, v6, v10

    .line 829
    .local v12, "u7":J
    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v14

    .line 830
    .local v14, "u6":J
    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v16

    xor-long v14, v14, v16

    .line 831
    const/16 v5, 0x10

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v16

    xor-long v16, v16, v0

    .line 832
    .local v16, "u5":J
    invoke-static {v14, v15}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v18

    xor-long v4, v18, v0

    move-wide/from16 v18, v8

    .end local v8    # "c48":J
    .local v18, "c48":J
    const/16 v8, 0x28

    invoke-static {v8, v4, v5}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v4

    xor-long v4, v16, v4

    .line 833
    .end local v16    # "u5":J
    .local v4, "u5":J
    xor-long v16, v6, v18

    .line 834
    .local v16, "u4":J
    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v21

    xor-long v16, v16, v21

    .line 835
    const/16 v9, 0x10

    invoke-static {v9, v2, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v20

    .line 836
    .local v20, "u3":J
    invoke-static/range {v16 .. v17}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v22

    xor-long v20, v20, v22

    .line 837
    const/16 v9, 0x18

    invoke-static {v9, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v22

    xor-long v22, v6, v22

    xor-long v22, v22, v18

    xor-long v22, v22, v10

    .line 838
    .local v22, "u2":J
    invoke-static/range {v20 .. v21}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v24

    xor-long v22, v22, v24

    .line 839
    const/16 v9, 0x20

    invoke-static {v9, v6, v7}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v24

    xor-long v24, v24, v0

    xor-long v24, v24, v10

    .line 840
    .local v24, "u1":J
    invoke-static/range {v22 .. v23}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v26

    xor-long v0, v24, v26

    .line 841
    .end local v24    # "u1":J
    .local v0, "u1":J
    invoke-static {v8, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v8

    xor-long/2addr v2, v8

    .line 843
    return-wide v2
.end method

.method private mixColumns()V
    .locals 5

    .line 765
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    .line 767
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumn(J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    .end local v0    # "col":I
    :cond_0
    return-void
.end method

.method private mixColumnsInv()V
    .locals 5

    .line 848
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    .line 850
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumnInv(J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    .end local v0    # "col":I
    :cond_0
    return-void
.end method

.method private static mulX(J)J
    .locals 6
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 856
    const-wide v0, 0x7f7f7f7f7f7f7f7fL    # 1.3824172084878715E306

    and-long/2addr v0, p0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, p0

    const/4 v4, 0x7

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x1d

    mul-long v2, v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static mulX2(J)J
    .locals 7
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 861
    const-wide v0, 0x3f3f3f3f3f3f3f3fL    # 4.767922794117647E-4

    and-long/2addr v0, p0

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, p0

    const/4 v4, 0x6

    ushr-long/2addr v2, v4

    const-wide/16 v5, 0x1d

    mul-long v2, v2, v5

    xor-long/2addr v0, v2

    const-wide v2, 0x4040404040404040L    # 32.501960784313724

    and-long/2addr v2, p0

    ushr-long/2addr v2, v4

    mul-long v2, v2, v5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static rotate(IJ)J
    .locals 4
    .param p0, "n"    # I
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "x"
        }
    .end annotation

    .line 905
    ushr-long v0, p1, p0

    neg-int v2, p0

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private rotateLeft([J[J)V
    .locals 31
    .param p1, "x"    # [J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 910
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x28

    const/16 v7, 0x18

    sparse-switch v1, :sswitch_data_0

    .line 944
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :sswitch_0
    aget-wide v8, p1, v5

    .local v8, "x0":J
    aget-wide v10, p1, v4

    .local v10, "x1":J
    aget-wide v12, p1, v3

    .local v12, "x2":J
    aget-wide v14, p1, v2

    .line 931
    .local v14, "x3":J
    const/4 v1, 0x4

    aget-wide v16, p1, v1

    .local v16, "x4":J
    const/16 v18, 0x5

    aget-wide v19, p1, v18

    .local v19, "x5":J
    const/16 v21, 0x6

    aget-wide v22, p1, v21

    .local v22, "x6":J
    const/16 v24, 0x7

    aget-wide v25, p1, v24

    .line 932
    .local v25, "x7":J
    ushr-long v27, v12, v7

    shl-long v29, v14, v6

    or-long v27, v27, v29

    aput-wide v27, p2, v5

    .line 933
    ushr-long v27, v14, v7

    shl-long v29, v16, v6

    or-long v27, v27, v29

    aput-wide v27, p2, v4

    .line 934
    ushr-long v4, v16, v7

    shl-long v27, v19, v6

    or-long v4, v4, v27

    aput-wide v4, p2, v3

    .line 935
    ushr-long v3, v19, v7

    shl-long v27, v22, v6

    or-long v3, v3, v27

    aput-wide v3, p2, v2

    .line 936
    ushr-long v2, v22, v7

    shl-long v4, v25, v6

    or-long/2addr v2, v4

    aput-wide v2, p2, v1

    .line 937
    ushr-long v1, v25, v7

    shl-long v3, v8, v6

    or-long/2addr v1, v3

    aput-wide v1, p2, v18

    .line 938
    ushr-long v1, v8, v7

    shl-long v3, v10, v6

    or-long/2addr v1, v3

    aput-wide v1, p2, v21

    .line 939
    ushr-long v1, v10, v7

    shl-long v3, v12, v6

    or-long/2addr v1, v3

    aput-wide v1, p2, v24

    .line 940
    goto :goto_0

    .line 921
    .end local v8    # "x0":J
    .end local v10    # "x1":J
    .end local v12    # "x2":J
    .end local v14    # "x3":J
    .end local v16    # "x4":J
    .end local v19    # "x5":J
    .end local v22    # "x6":J
    .end local v25    # "x7":J
    :sswitch_1
    aget-wide v8, p1, v5

    .restart local v8    # "x0":J
    aget-wide v10, p1, v4

    .restart local v10    # "x1":J
    aget-wide v12, p1, v3

    .restart local v12    # "x2":J
    aget-wide v14, p1, v2

    .line 922
    .restart local v14    # "x3":J
    ushr-long v16, v10, v7

    shl-long v18, v12, v6

    or-long v16, v16, v18

    aput-wide v16, p2, v5

    .line 923
    ushr-long v16, v12, v7

    shl-long v18, v14, v6

    or-long v16, v16, v18

    aput-wide v16, p2, v4

    .line 924
    ushr-long v4, v14, v7

    shl-long v16, v8, v6

    or-long v4, v4, v16

    aput-wide v4, p2, v3

    .line 925
    ushr-long v3, v8, v7

    shl-long v5, v10, v6

    or-long/2addr v3, v5

    aput-wide v3, p2, v2

    .line 926
    goto :goto_0

    .line 914
    .end local v8    # "x0":J
    .end local v10    # "x1":J
    .end local v12    # "x2":J
    .end local v14    # "x3":J
    :sswitch_2
    aget-wide v1, p1, v5

    .local v1, "x0":J
    aget-wide v6, p1, v4

    .line 915
    .local v6, "x1":J
    const/16 v3, 0x38

    ushr-long v8, v1, v3

    const/16 v10, 0x8

    shl-long v11, v6, v10

    or-long/2addr v8, v11

    aput-wide v8, p2, v5

    .line 916
    ushr-long v8, v6, v3

    shl-long v10, v1, v10

    or-long/2addr v8, v10

    aput-wide v8, p2, v4

    .line 917
    nop

    .line 947
    .end local v1    # "x0":J
    .end local v6    # "x1":J
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private shiftRows()V
    .locals 36

    .line 585
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    const-wide v2, 0xffffffff0000L

    const-wide v4, -0x100000000L

    const-wide v6, -0xffff00010000L

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 648
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    :sswitch_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v12, v1, v11

    .local v12, "c0":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v14, v1, v10

    .local v14, "c1":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v16, v1, v9

    .local v16, "c2":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v18, v1, v8

    .line 618
    .local v18, "c3":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v20, 0x4

    aget-wide v21, v1, v20

    .local v21, "c4":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v23, 0x5

    aget-wide v24, v1, v23

    .local v24, "c5":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v26, 0x6

    aget-wide v27, v1, v26

    .local v27, "c6":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v29, 0x7

    aget-wide v30, v1, v29

    .line 621
    .local v30, "c7":J
    xor-long v32, v12, v21

    and-long v4, v32, v4

    .local v4, "d":J
    xor-long/2addr v12, v4

    xor-long v21, v21, v4

    .line 622
    xor-long v32, v14, v24

    const-wide v34, 0xffffffff000000L

    and-long v4, v32, v34

    xor-long/2addr v14, v4

    xor-long v24, v24, v4

    .line 623
    xor-long v32, v16, v27

    and-long v2, v32, v2

    .end local v4    # "d":J
    .local v2, "d":J
    xor-long v4, v16, v2

    .end local v16    # "c2":J
    .local v4, "c2":J
    xor-long v16, v27, v2

    .line 624
    .end local v27    # "c6":J
    .local v16, "c6":J
    xor-long v27, v18, v30

    const-wide v32, 0xffffffff00L

    and-long v1, v27, v32

    .end local v2    # "d":J
    .local v1, "d":J
    xor-long v18, v18, v1

    xor-long v27, v30, v1

    .line 626
    .end local v30    # "c7":J
    .local v27, "c7":J
    xor-long v30, v12, v4

    and-long v1, v30, v6

    xor-long/2addr v12, v1

    xor-long/2addr v4, v1

    .line 627
    xor-long v30, v14, v18

    const-wide v32, 0xffff0000ffff00L

    and-long v1, v30, v32

    xor-long/2addr v14, v1

    xor-long v18, v18, v1

    .line 628
    xor-long v30, v21, v16

    and-long v1, v30, v6

    xor-long v6, v21, v1

    .end local v21    # "c4":J
    .local v6, "c4":J
    xor-long v16, v16, v1

    .line 629
    xor-long v21, v24, v27

    and-long v1, v21, v32

    xor-long v21, v24, v1

    .end local v24    # "c5":J
    .local v21, "c5":J
    xor-long v24, v27, v1

    .line 631
    .end local v27    # "c7":J
    .local v24, "c7":J
    xor-long v27, v12, v14

    const-wide v30, -0xff00ff00ff0100L    # -5.82767264895205E303

    and-long v1, v27, v30

    xor-long/2addr v12, v1

    xor-long/2addr v14, v1

    .line 632
    xor-long v27, v4, v18

    and-long v1, v27, v30

    xor-long/2addr v4, v1

    xor-long v18, v18, v1

    .line 633
    xor-long v27, v6, v21

    and-long v1, v27, v30

    xor-long/2addr v6, v1

    xor-long v21, v21, v1

    .line 634
    xor-long v27, v16, v24

    and-long v1, v27, v30

    xor-long v16, v16, v1

    xor-long v24, v24, v1

    .line 636
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v12, v3, v11

    .line 637
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v14, v3, v10

    .line 638
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v4, v3, v9

    .line 639
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v18, v3, v8

    .line 640
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v6, v3, v20

    .line 641
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v21, v3, v23

    .line 642
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v16, v3, v26

    .line 643
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v24, v3, v29

    .line 644
    goto :goto_0

    .line 600
    .end local v1    # "d":J
    .end local v4    # "c2":J
    .end local v6    # "c4":J
    .end local v12    # "c0":J
    .end local v14    # "c1":J
    .end local v16    # "c6":J
    .end local v18    # "c3":J
    .end local v21    # "c5":J
    .end local v24    # "c7":J
    :sswitch_1
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v12, v1, v11

    .restart local v12    # "c0":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v14, v1, v10

    .restart local v14    # "c1":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v16, v1, v9

    .local v16, "c2":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v18, v1, v8

    .line 603
    .restart local v18    # "c3":J
    xor-long v20, v12, v16

    and-long v4, v20, v4

    .local v4, "d":J
    xor-long/2addr v12, v4

    xor-long v16, v16, v4

    .line 604
    xor-long v20, v14, v18

    and-long v2, v20, v2

    .end local v4    # "d":J
    .restart local v2    # "d":J
    xor-long v4, v14, v2

    .end local v14    # "c1":J
    .local v4, "c1":J
    xor-long v14, v18, v2

    .line 606
    .end local v18    # "c3":J
    .local v14, "c3":J
    xor-long v18, v12, v4

    and-long v1, v18, v6

    .end local v2    # "d":J
    .restart local v1    # "d":J
    xor-long/2addr v12, v1

    xor-long/2addr v4, v1

    .line 607
    xor-long v18, v16, v14

    and-long v1, v18, v6

    xor-long v6, v16, v1

    .end local v16    # "c2":J
    .local v6, "c2":J
    xor-long/2addr v14, v1

    .line 609
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v12, v3, v11

    .line 610
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v4, v3, v10

    .line 611
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v6, v3, v9

    .line 612
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v14, v3, v8

    .line 613
    goto :goto_0

    .line 589
    .end local v1    # "d":J
    .end local v4    # "c1":J
    .end local v6    # "c2":J
    .end local v12    # "c0":J
    .end local v14    # "c3":J
    :sswitch_2
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v11

    .local v2, "c0":J
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v1, v10

    .line 592
    .local v6, "c1":J
    xor-long v8, v2, v6

    and-long/2addr v4, v8

    .local v4, "d":J
    xor-long/2addr v2, v4

    xor-long/2addr v6, v4

    .line 594
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v2, v1, v11

    .line 595
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v6, v1, v10

    .line 596
    nop

    .line 651
    .end local v2    # "c0":J
    .end local v4    # "d":J
    .end local v6    # "c1":J
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private subBytes()V
    .locals 19

    .line 545
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_0

    .line 547
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v1

    .line 548
    .local v3, "u":J
    long-to-int v2, v3

    .local v2, "lo":I
    const/16 v5, 0x20

    ushr-long v6, v3, v5

    long-to-int v7, v6

    .line 549
    .local v7, "hi":I
    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v8, v2, 0xff

    aget-byte v6, v6, v8

    .line 550
    .local v6, "t0":B
    sget-object v8, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v9, v2, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    .line 551
    .local v8, "t1":B
    sget-object v9, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v10, v2, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    .line 552
    .local v9, "t2":B
    sget-object v10, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v11, v2, 0x18

    aget-byte v10, v10, v11

    .line 553
    .local v10, "t3":B
    and-int/lit16 v11, v6, 0xff

    and-int/lit16 v12, v8, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    and-int/lit16 v12, v9, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v10, 0x18

    or-int v2, v11, v12

    .line 554
    sget-object v11, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v12, v7, 0xff

    aget-byte v11, v11, v12

    .line 555
    .local v11, "t4":B
    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    .line 556
    .local v12, "t5":B
    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v14, v7, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    .line 557
    .local v13, "t6":B
    sget-object v14, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v15, v7, 0x18

    aget-byte v14, v14, v15

    .line 558
    .local v14, "t7":B
    and-int/lit16 v15, v11, 0xff

    const/16 v16, 0x20

    and-int/lit16 v5, v12, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v15

    and-int/lit16 v15, v13, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v5, v15

    shl-int/lit8 v15, v14, 0x18

    or-int/2addr v5, v15

    .line 559
    .end local v7    # "hi":I
    .local v5, "hi":I
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    move v15, v1

    .end local v1    # "i":I
    .local v15, "i":I
    int-to-long v0, v2

    const-wide v17, 0xffffffffL

    and-long v0, v0, v17

    move-wide/from16 v17, v0

    int-to-long v0, v5

    shl-long v0, v0, v16

    or-long v0, v17, v0

    aput-wide v0, v7, v15

    .line 545
    .end local v2    # "lo":I
    .end local v3    # "u":J
    .end local v5    # "hi":I
    .end local v6    # "t0":B
    .end local v8    # "t1":B
    .end local v9    # "t2":B
    .end local v10    # "t3":B
    .end local v11    # "t4":B
    .end local v12    # "t5":B
    .end local v13    # "t6":B
    .end local v14    # "t7":B
    add-int/lit8 v1, v15, 0x1

    move-object/from16 v0, p0

    .end local v15    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 561
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private subRoundKey(I)V
    .locals 7
    .param p1, "round"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v0, v0, p1

    .line 243
    .local v0, "roundKey":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_0

    .line 245
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v1

    aget-wide v5, v0, v1

    sub-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private workingKeyExpandEven([J[J)V
    .locals 13
    .param p1, "workingKey"    # [J
    .param p2, "tempKey"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workingKey",
            "tempKey"
        }
    .end annotation

    .line 310
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    new-array v0, v0, [J

    .line 311
    .local v0, "initialData":[J
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v1, v1, [J

    .line 313
    .local v1, "tempRoundKey":[J
    const/4 v2, 0x0

    .line 315
    .local v2, "round":I
    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    const-wide v5, 0x1000100010001L

    .line 321
    .local v5, "tmv":J
    :goto_0
    const/4 v3, 0x0

    .local v3, "wordIndex":I
    :goto_1
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_0

    .line 323
    aget-wide v7, p2, v3

    add-long/2addr v7, v5

    aput-wide v7, v1, v3

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    .end local v3    # "wordIndex":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "wordIndex":I
    :goto_2
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_1

    .line 328
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v0, v3

    aget-wide v10, v1, v3

    add-long/2addr v8, v10

    aput-wide v8, v7, v3

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 331
    .end local v3    # "wordIndex":I
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    .line 332
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    .line 333
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    .line 335
    const/4 v3, 0x0

    .restart local v3    # "wordIndex":I
    :goto_3
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_2

    .line 337
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v3

    aget-wide v10, v1, v3

    xor-long/2addr v8, v10

    aput-wide v8, v7, v3

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 340
    .end local v3    # "wordIndex":I
    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    .line 341
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    .line 342
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    .line 344
    const/4 v3, 0x0

    .restart local v3    # "wordIndex":I
    :goto_4
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_3

    .line 346
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v3

    aget-wide v10, v1, v3

    add-long/2addr v8, v10

    aput-wide v8, v7, v3

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 349
    .end local v3    # "wordIndex":I
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v7, v7, v2

    iget v8, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v3, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v3, v2, :cond_4

    .line 353
    goto/16 :goto_9

    .line 356
    :cond_4
    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    const/4 v8, 0x1

    if-eq v3, v7, :cond_9

    .line 358
    add-int/lit8 v2, v2, 0x2

    .line 359
    shl-long/2addr v5, v8

    .line 361
    const/4 v3, 0x0

    .restart local v3    # "wordIndex":I
    :goto_5
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_5

    .line 363
    aget-wide v9, p2, v3

    add-long/2addr v9, v5

    aput-wide v9, v1, v3

    .line 361
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 366
    .end local v3    # "wordIndex":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "wordIndex":I
    :goto_6
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_6

    .line 368
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v9, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    add-int/2addr v9, v3

    aget-wide v9, v0, v9

    aget-wide v11, v1, v3

    add-long/2addr v9, v11

    aput-wide v9, v7, v3

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 371
    .end local v3    # "wordIndex":I
    :cond_6
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    .line 372
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    .line 373
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    .line 375
    const/4 v3, 0x0

    .restart local v3    # "wordIndex":I
    :goto_7
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_7

    .line 377
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v9, v7, v3

    aget-wide v11, v1, v3

    xor-long/2addr v9, v11

    aput-wide v9, v7, v3

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 380
    .end local v3    # "wordIndex":I
    :cond_7
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    .line 381
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    .line 382
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    .line 384
    const/4 v3, 0x0

    .restart local v3    # "wordIndex":I
    :goto_8
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_8

    .line 386
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v9, v7, v3

    aget-wide v11, v1, v3

    add-long/2addr v9, v11

    aput-wide v9, v7, v3

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 389
    .end local v3    # "wordIndex":I
    :cond_8
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v7, v7, v2

    iget v9, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v3, v4, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v3, v2, :cond_9

    .line 393
    nop

    .line 407
    :goto_9
    return-void

    .line 397
    :cond_9
    add-int/lit8 v2, v2, 0x2

    .line 398
    shl-long/2addr v5, v8

    .line 400
    aget-wide v9, v0, v4

    .line 401
    .local v9, "temp":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_a
    array-length v7, v0

    if-ge v3, v7, :cond_a

    .line 403
    add-int/lit8 v7, v3, -0x1

    aget-wide v11, v0, v3

    aput-wide v11, v0, v7

    .line 401
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 405
    .end local v3    # "i":I
    :cond_a
    array-length v3, v0

    sub-int/2addr v3, v8

    aput-wide v9, v0, v3

    .line 406
    .end local v9    # "temp":J
    goto/16 :goto_0
.end method

.method private workingKeyExpandKT([J[J)V
    .locals 9
    .param p1, "workingKey"    # [J
    .param p2, "tempKeys"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workingKey",
            "tempKeys"
        }
    .end annotation

    .line 260
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v0, v0, [J

    .line 261
    .local v0, "k0":[J
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v1, v1, [J

    .line 263
    .local v1, "k1":[J
    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    .line 264
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iget v6, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 266
    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    if-ne v2, v4, :cond_0

    .line 268
    array-length v2, v0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    array-length v2, v1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 273
    :cond_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    :goto_0
    const/4 v2, 0x0

    .local v2, "wordIndex":I
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 280
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v5, v4, v2

    aget-wide v7, v0, v2

    add-long/2addr v5, v7

    aput-wide v5, v4, v2

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 283
    .end local v2    # "wordIndex":I
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    .line 284
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    .line 285
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    .line 287
    const/4 v2, 0x0

    .restart local v2    # "wordIndex":I
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 289
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v5, v4, v2

    aget-wide v7, v1, v2

    xor-long/2addr v5, v7

    aput-wide v5, v4, v2

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 292
    .end local v2    # "wordIndex":I
    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    .line 293
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    .line 294
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    .line 296
    const/4 v2, 0x0

    .restart local v2    # "wordIndex":I
    :goto_3
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 298
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v5, v4, v2

    aget-wide v7, v0, v2

    add-long/2addr v5, v7

    aput-wide v5, v4, v2

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 301
    .end local v2    # "wordIndex":I
    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    .line 302
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    .line 303
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    .line 305
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v2, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    return-void
.end method

.method private workingKeyExpandOdd()V
    .locals 3

    .line 411
    const/4 v0, 0x1

    .local v0, "roundIndex":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ge v0, v1, :cond_0

    .line 413
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotateLeft([J[J)V

    .line 411
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 415
    .end local v0    # "roundIndex":I
    :cond_0
    return-void
.end method

.method private xorRoundKey(I)V
    .locals 7
    .param p1, "round"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v0, v0, p1

    .line 252
    .local v0, "roundKey":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_0

    .line 254
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v1

    aget-wide v5, v0, v1

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "DSTU7624"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    shl-int/lit8 v0, v0, 0x3

    return v0
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

    .line 60
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_6

    .line 65
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->forEncryption:Z

    .line 67
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 68
    .local v0, "keyBytes":[B
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x3

    .line 69
    .local v1, "keyBitLength":I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    shl-int/lit8 v2, v2, 0x6

    .line 71
    .local v2, "blockBitLength":I
    const/16 v3, 0x80

    const/16 v4, 0x100

    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_1

    const/16 v5, 0x200

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "unsupported key length: only 128/256/512 are allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_3

    mul-int/lit8 v5, v2, 0x2

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported key length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_3
    :goto_1
    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    .line 95
    :sswitch_0
    const/16 v3, 0x12

    iput v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    .line 96
    new-instance v3, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v3, v5, v4, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 96
    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    goto :goto_2

    .line 90
    :sswitch_1
    const/16 v3, 0xe

    iput v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    .line 91
    new-instance v3, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 92
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v3, v5, v4, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 91
    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 93
    goto :goto_2

    .line 85
    :sswitch_2
    const/16 v4, 0xa

    iput v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    .line 86
    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 87
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v4, v5, v3, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 86
    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 88
    nop

    .line 101
    :goto_2
    ushr-int/lit8 v3, v1, 0x6

    iput v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    .line 104
    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [[J

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    .line 105
    const/4 v3, 0x0

    .local v3, "roundKeyIndex":I
    :goto_3
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 107
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    iget v5, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v5, v5, [J

    aput-object v5, v4, v3

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 110
    .end local v3    # "roundKeyIndex":I
    :cond_4
    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    new-array v3, v3, [J

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    .line 112
    array-length v3, v0

    ushr-int/lit8 v4, v1, 0x3

    if-ne v3, v4, :cond_5

    .line 118
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 120
    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v3, v3, [J

    .line 123
    .local v3, "tempKeys":[J
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandKT([J[J)V

    .line 124
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandEven([J[J)V

    .line 125
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandOdd()V

    .line 126
    return-void

    .line 114
    .end local v3    # "tempKeys":[J
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid key parameter passed to DSTU7624Engine init"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v0    # "keyBytes":[B
    .end local v1    # "keyBitLength":I
    .end local v2    # "blockBitLength":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter passed to DSTU7624Engine init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 151
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_3

    .line 156
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->forEncryption:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    packed-switch v0, :pswitch_data_0

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 169
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->addRoundKey(I)V

    .line 170
    const/4 v0, 0x0

    .local v0, "round":I
    goto :goto_0

    .line 163
    .end local v0    # "round":I
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->encryptBlock_128([BI[BI)V

    .line 164
    goto :goto_2

    .line 172
    .restart local v0    # "round":I
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    .line 173
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    .line 174
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    .line 176
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v0, v1, :cond_0

    .line 178
    nop

    .line 183
    .end local v0    # "round":I
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->addRoundKey(I)V

    .line 184
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 185
    goto :goto_2

    .line 181
    .restart local v0    # "round":I
    :cond_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->xorRoundKey(I)V

    goto :goto_0

    .line 192
    .end local v0    # "round":I
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    packed-switch v0, :pswitch_data_1

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 202
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subRoundKey(I)V

    .line 203
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    .restart local v0    # "round":I
    goto :goto_1

    .line 196
    .end local v0    # "round":I
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->decryptBlock_128([BI[BI)V

    .line 197
    goto :goto_2

    .line 205
    .restart local v0    # "round":I
    :goto_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumnsInv()V

    .line 206
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->invShiftRows()V

    .line 207
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->invSubBytes()V

    .line 209
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 211
    nop

    .line 216
    .end local v0    # "round":I
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subRoundKey(I)V

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 223
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    return v0

    .line 214
    .restart local v0    # "round":I
    :cond_2
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->xorRoundKey(I)V

    goto :goto_1

    .line 153
    .end local v0    # "round":I
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSTU7624Engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 229
    return-void
.end method
