.class public Lorg/bouncycastle/crypto/digests/DSTU7564Digest;
.super Ljava/lang/Object;
.source "DSTU7564Digest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final NB_1024:I = 0x10

.field private static final NB_512:I = 0x8

.field private static final NR_1024:I = 0xe

.field private static final NR_512:I = 0xa

.field private static final S0:[B

.field private static final S1:[B

.field private static final S2:[B

.field private static final S3:[B


# instance fields
.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private columns:I

.field private hashSize:I

.field private inputBlocks:J

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private rounds:I

.field private state:[J

.field private tempState1:[J

.field private tempState2:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 464
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S0:[B

    .line 494
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S1:[B

    .line 524
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S2:[B

    .line 554
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S3:[B

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
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "hashSizeBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashSizeBits"
        }
    .end annotation

    .line 83
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 84
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 4
    .param p1, "hashSizeBits"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashSizeBits",
            "purpose"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 90
    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v1, 0x180

    if-eq p1, v1, :cond_1

    const/16 v1, 0x200

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hash size is not recommended. Use 256/384/512 instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    :goto_0
    ushr-int/lit8 v1, p1, 0x3

    iput v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    .line 99
    if-le p1, v0, :cond_2

    .line 101
    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    .line 102
    const/16 v0, 0xe

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    goto :goto_1

    .line 106
    :cond_2
    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    .line 107
    const/16 v0, 0xa

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    .line 110
    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    .line 112
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 115
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    .line 116
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    .line 118
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    .line 120
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/bouncycastle/crypto/digests/DSTU7564Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 52
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->copyIn(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V

    .line 54
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 55
    return-void
.end method

.method private P([J)V
    .locals 6
    .param p1, "s"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 263
    const/4 v0, 0x0

    .local v0, "round":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v0, v1, :cond_1

    .line 265
    int-to-long v1, v0

    .line 268
    .local v1, "rc":J
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v4, :cond_0

    .line 270
    aget-wide v4, p1, v3

    xor-long/2addr v4, v1

    aput-wide v4, p1, v3

    .line 271
    const-wide/16 v4, 0x10

    add-long/2addr v1, v4

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 274
    .end local v3    # "col":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->shiftRows([J)V

    .line 275
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->subBytes([J)V

    .line 276
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->mixColumns([J)V

    .line 263
    .end local v1    # "rc":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "round":I
    :cond_1
    return-void
.end method

.method private Q([J)V
    .locals 6
    .param p1, "s"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    .local v0, "round":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v0, v1, :cond_1

    .line 285
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x4

    xor-int/2addr v1, v0

    int-to-long v1, v1

    const/16 v3, 0x38

    shl-long/2addr v1, v3

    const-wide v3, 0xf0f0f0f0f0f0f3L    # 3.860005775059271E-304

    or-long/2addr v1, v3

    .line 287
    .local v1, "rc":J
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v4, :cond_0

    .line 289
    aget-wide v4, p1, v3

    add-long/2addr v4, v1

    aput-wide v4, p1, v3

    .line 290
    const-wide/high16 v4, 0x1000000000000000L

    sub-long/2addr v1, v4

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    .end local v3    # "col":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->shiftRows([J)V

    .line 294
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->subBytes([J)V

    .line 295
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->mixColumns([J)V

    .line 282
    .end local v1    # "rc":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "round":I
    :cond_1
    return-void
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V
    .locals 4
    .param p1, "digest"    # Lorg/bouncycastle/crypto/digests/DSTU7564Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 59
    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    .line 60
    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    .line 62
    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    .line 63
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    iget v1, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 70
    :cond_0
    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    .line 71
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    .line 72
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    .line 73
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    .line 74
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    .line 77
    :goto_0
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    .line 78
    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 79
    return-void
.end method

.method private static mixColumn(J)J
    .locals 14
    .param p0, "c"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 328
    const-wide v0, 0x7f7f7f7f7f7f7f7fL    # 1.3824172084878715E306

    and-long/2addr v0, p0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, p0, v2

    const/4 v6, 0x7

    ushr-long/2addr v4, v6

    const-wide/16 v6, 0x1d

    mul-long v4, v4, v6

    xor-long/2addr v0, v4

    .line 331
    .local v0, "x1":J
    const/16 v4, 0x8

    invoke-static {v4, p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v4

    xor-long/2addr v4, p0

    .line 332
    .local v4, "u":J
    const/16 v8, 0x10

    invoke-static {v8, v4, v5}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v8

    xor-long/2addr v4, v8

    .line 333
    const/16 v8, 0x30

    invoke-static {v8, p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v9

    xor-long/2addr v4, v9

    .line 335
    xor-long v9, v4, p0

    xor-long/2addr v9, v0

    .line 338
    .local v9, "v":J
    const-wide v11, 0x3f3f3f3f3f3f3f3fL    # 4.767922794117647E-4

    and-long/2addr v11, v9

    const/4 v13, 0x2

    shl-long/2addr v11, v13

    and-long/2addr v2, v9

    const/4 v13, 0x6

    ushr-long/2addr v2, v13

    mul-long v2, v2, v6

    xor-long/2addr v2, v11

    const-wide v11, 0x4040404040404040L    # 32.501960784313724

    and-long/2addr v11, v9

    ushr-long/2addr v11, v13

    mul-long v11, v11, v6

    xor-long/2addr v2, v11

    .line 340
    .end local v9    # "v":J
    .local v2, "v":J
    const/16 v6, 0x20

    invoke-static {v6, v2, v3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v6

    xor-long/2addr v6, v4

    const/16 v9, 0x28

    invoke-static {v9, v0, v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v9

    xor-long/2addr v6, v9

    invoke-static {v8, v0, v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v8

    xor-long/2addr v6, v8

    return-wide v6
.end method

.method private mixColumns([J)V
    .locals 3
    .param p1, "s"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v1, :cond_0

    .line 347
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->mixColumn(J)J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "col":I
    :cond_0
    return-void
.end method

.method private processBlock([BI)V
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff"
        }
    .end annotation

    .line 242
    move v0, p2

    .line 243
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v1, v2, :cond_0

    .line 245
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    .line 246
    .local v2, "word":J
    add-int/lit8 v0, v0, 0x8

    .line 248
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    aget-wide v6, v5, v1

    xor-long/2addr v6, v2

    aput-wide v6, v4, v1

    .line 249
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    aput-wide v2, v4, v1

    .line 243
    .end local v2    # "word":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "col":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->P([J)V

    .line 253
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->Q([J)V

    .line 255
    const/4 v1, 0x0

    .restart local v1    # "col":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v1, v2, :cond_1

    .line 257
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    aget-wide v3, v2, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    aget-wide v6, v5, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    aget-wide v8, v5, v1

    xor-long/2addr v6, v8

    xor-long/2addr v3, v6

    aput-wide v3, v2, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    .end local v1    # "col":I
    :cond_1
    return-void
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

    .line 353
    ushr-long v0, p1, p0

    neg-int v2, p0

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private shiftRows([J)V
    .locals 65
    .param p1, "s"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 358
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    const-wide v2, 0xffffffff000000L

    const-wide v4, -0x100000000L

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide v14, 0xffff0000ffff00L

    const-wide v16, -0xffff00010000L

    const-wide v18, -0xff00ff00ff0100L    # -5.82767264895205E303

    sparse-switch v1, :sswitch_data_0

    .line 439
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unsupported state size: only 512/1024 are allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :sswitch_0
    aget-wide v20, p1, v13

    .local v20, "c00":J
    aget-wide v22, p1, v12

    .local v22, "c01":J
    aget-wide v24, p1, v11

    .local v24, "c02":J
    aget-wide v26, p1, v10

    .line 388
    .local v26, "c03":J
    aget-wide v28, p1, v9

    .local v28, "c04":J
    aget-wide v30, p1, v8

    .local v30, "c05":J
    aget-wide v32, p1, v7

    .local v32, "c06":J
    aget-wide v34, p1, v6

    .line 389
    .local v34, "c07":J
    const/16 v1, 0x8

    aget-wide v36, p1, v1

    .local v36, "c08":J
    const/16 v38, 0x9

    aget-wide v39, p1, v38

    .local v39, "c09":J
    const/16 v41, 0xa

    aget-wide v42, p1, v41

    .local v42, "c10":J
    const/16 v44, 0xb

    aget-wide v45, p1, v44

    .line 390
    .local v45, "c11":J
    const/16 v47, 0xc

    aget-wide v48, p1, v47

    .local v48, "c12":J
    const/16 v50, 0xd

    aget-wide v51, p1, v50

    .local v51, "c13":J
    const/16 v53, 0xe

    aget-wide v54, p1, v53

    .local v54, "c14":J
    const/16 v56, 0xf

    aget-wide v57, p1, v56

    .line 395
    .local v57, "c15":J
    xor-long v59, v20, v36

    const-wide/high16 v61, -0x100000000000000L

    and-long v59, v59, v61

    .local v59, "d":J
    xor-long v20, v20, v59

    xor-long v36, v36, v59

    .line 396
    xor-long v63, v22, v39

    and-long v59, v63, v61

    xor-long v22, v22, v59

    xor-long v39, v39, v59

    .line 397
    xor-long v61, v24, v42

    const-wide/high16 v63, -0x1000000000000L

    and-long v59, v61, v63

    xor-long v24, v24, v59

    xor-long v42, v42, v59

    .line 398
    xor-long v61, v26, v45

    const-wide v63, -0x10000000000L

    and-long v59, v61, v63

    xor-long v26, v26, v59

    xor-long v45, v45, v59

    .line 399
    xor-long v61, v28, v48

    and-long v4, v61, v4

    .end local v59    # "d":J
    .local v4, "d":J
    xor-long v28, v28, v4

    xor-long v48, v48, v4

    .line 400
    xor-long v59, v30, v51

    and-long v2, v59, v2

    .end local v4    # "d":J
    .local v2, "d":J
    xor-long v4, v30, v2

    .end local v30    # "c05":J
    .local v4, "c05":J
    xor-long v30, v51, v2

    .line 401
    .end local v51    # "c13":J
    .local v30, "c13":J
    xor-long v51, v32, v54

    const-wide v59, 0xffffffffff0000L

    and-long v2, v51, v59

    xor-long v32, v32, v2

    xor-long v51, v54, v2

    .line 402
    .end local v54    # "c14":J
    .local v51, "c14":J
    xor-long v54, v34, v57

    const-wide v59, 0xffffffffffff00L

    and-long v2, v54, v59

    xor-long v34, v34, v2

    xor-long v54, v57, v2

    .line 404
    .end local v57    # "c15":J
    .local v54, "c15":J
    xor-long v57, v20, v28

    const-wide v59, 0xffffff00000000L

    and-long v2, v57, v59

    xor-long v20, v20, v2

    xor-long v28, v28, v2

    .line 405
    xor-long v57, v22, v4

    const-wide/32 v59, -0x1000000

    and-long v2, v57, v59

    xor-long v22, v22, v2

    xor-long/2addr v4, v2

    .line 406
    xor-long v57, v24, v32

    const-wide v59, -0xff000000010000L

    and-long v2, v57, v59

    xor-long v24, v24, v2

    xor-long v32, v32, v2

    .line 407
    xor-long v57, v26, v34

    const-wide v59, -0xffff0000000100L    # -5.48746345455236E303

    and-long v2, v57, v59

    xor-long v26, v26, v2

    xor-long v34, v34, v2

    .line 408
    xor-long v57, v36, v48

    const-wide v59, 0xffffff00000000L

    and-long v2, v57, v59

    xor-long v36, v36, v2

    xor-long v48, v48, v2

    .line 409
    xor-long v57, v39, v30

    const-wide/32 v59, -0x1000000

    and-long v2, v57, v59

    xor-long v39, v39, v2

    xor-long v30, v30, v2

    .line 410
    xor-long v57, v42, v51

    const-wide v59, -0xff000000010000L

    and-long v2, v57, v59

    xor-long v42, v42, v2

    xor-long v51, v51, v2

    .line 411
    xor-long v57, v45, v54

    const-wide v59, -0xffff0000000100L    # -5.48746345455236E303

    and-long v2, v57, v59

    xor-long v45, v45, v2

    xor-long v54, v54, v2

    .line 413
    xor-long v57, v20, v24

    and-long v2, v57, v16

    xor-long v20, v20, v2

    xor-long v24, v24, v2

    .line 414
    xor-long v57, v22, v26

    and-long v2, v57, v14

    xor-long v22, v22, v2

    xor-long v26, v26, v2

    .line 415
    xor-long v57, v28, v32

    and-long v2, v57, v16

    xor-long v28, v28, v2

    xor-long v32, v32, v2

    .line 416
    xor-long v57, v4, v34

    and-long v2, v57, v14

    xor-long/2addr v4, v2

    xor-long v34, v34, v2

    .line 417
    xor-long v57, v36, v42

    and-long v2, v57, v16

    xor-long v36, v36, v2

    xor-long v42, v42, v2

    .line 418
    xor-long v57, v39, v45

    and-long v2, v57, v14

    xor-long v39, v39, v2

    xor-long v45, v45, v2

    .line 419
    xor-long v57, v48, v51

    and-long v2, v57, v16

    xor-long v16, v48, v2

    .end local v48    # "c12":J
    .local v16, "c12":J
    xor-long v48, v51, v2

    .line 420
    .end local v51    # "c14":J
    .local v48, "c14":J
    xor-long v51, v30, v54

    and-long v2, v51, v14

    xor-long v14, v30, v2

    .end local v30    # "c13":J
    .local v14, "c13":J
    xor-long v30, v54, v2

    .line 422
    .end local v54    # "c15":J
    .local v30, "c15":J
    xor-long v51, v20, v22

    and-long v2, v51, v18

    xor-long v20, v20, v2

    xor-long v22, v22, v2

    .line 423
    xor-long v51, v24, v26

    and-long v2, v51, v18

    xor-long v24, v24, v2

    xor-long v26, v26, v2

    .line 424
    xor-long v51, v28, v4

    and-long v2, v51, v18

    xor-long v28, v28, v2

    xor-long/2addr v4, v2

    .line 425
    xor-long v51, v32, v34

    and-long v2, v51, v18

    xor-long v32, v32, v2

    xor-long v34, v34, v2

    .line 426
    xor-long v51, v36, v39

    and-long v2, v51, v18

    xor-long v36, v36, v2

    xor-long v39, v39, v2

    .line 427
    xor-long v51, v42, v45

    and-long v2, v51, v18

    xor-long v42, v42, v2

    xor-long v45, v45, v2

    .line 428
    xor-long v51, v16, v14

    and-long v2, v51, v18

    xor-long v16, v16, v2

    xor-long/2addr v14, v2

    .line 429
    xor-long v51, v48, v30

    and-long v2, v51, v18

    xor-long v18, v48, v2

    .end local v48    # "c14":J
    .local v18, "c14":J
    xor-long v30, v30, v2

    .line 431
    aput-wide v20, p1, v13

    aput-wide v22, p1, v12

    aput-wide v24, p1, v11

    aput-wide v26, p1, v10

    .line 432
    aput-wide v28, p1, v9

    aput-wide v4, p1, v8

    aput-wide v32, p1, v7

    aput-wide v34, p1, v6

    .line 433
    aput-wide v36, p1, v1

    aput-wide v39, p1, v38

    aput-wide v42, p1, v41

    aput-wide v45, p1, v44

    .line 434
    aput-wide v16, p1, v47

    aput-wide v14, p1, v50

    aput-wide v18, p1, v53

    aput-wide v30, p1, v56

    .line 435
    goto/16 :goto_0

    .line 362
    .end local v2    # "d":J
    .end local v4    # "c05":J
    .end local v14    # "c13":J
    .end local v16    # "c12":J
    .end local v18    # "c14":J
    .end local v20    # "c00":J
    .end local v22    # "c01":J
    .end local v24    # "c02":J
    .end local v26    # "c03":J
    .end local v28    # "c04":J
    .end local v30    # "c15":J
    .end local v32    # "c06":J
    .end local v34    # "c07":J
    .end local v36    # "c08":J
    .end local v39    # "c09":J
    .end local v42    # "c10":J
    .end local v45    # "c11":J
    :sswitch_1
    aget-wide v20, p1, v13

    .local v20, "c0":J
    aget-wide v22, p1, v12

    .local v22, "c1":J
    aget-wide v24, p1, v11

    .local v24, "c2":J
    aget-wide v26, p1, v10

    .line 363
    .local v26, "c3":J
    aget-wide v28, p1, v9

    .local v28, "c4":J
    aget-wide v30, p1, v8

    .local v30, "c5":J
    aget-wide v32, p1, v7

    .local v32, "c6":J
    aget-wide v34, p1, v6

    .line 366
    .local v34, "c7":J
    xor-long v36, v20, v28

    and-long v4, v36, v4

    .local v4, "d":J
    xor-long v20, v20, v4

    xor-long v28, v28, v4

    .line 367
    xor-long v36, v22, v30

    and-long v2, v36, v2

    .end local v4    # "d":J
    .restart local v2    # "d":J
    xor-long v4, v22, v2

    .end local v22    # "c1":J
    .local v4, "c1":J
    xor-long v22, v30, v2

    .line 368
    .end local v30    # "c5":J
    .local v22, "c5":J
    xor-long v30, v24, v32

    const-wide v36, 0xffffffff0000L

    and-long v1, v30, v36

    .end local v2    # "d":J
    .local v1, "d":J
    xor-long v24, v24, v1

    xor-long v30, v32, v1

    .line 369
    .end local v32    # "c6":J
    .local v30, "c6":J
    xor-long v32, v26, v34

    const-wide v36, 0xffffffff00L

    and-long v1, v32, v36

    xor-long v26, v26, v1

    xor-long v32, v34, v1

    .line 371
    .end local v34    # "c7":J
    .local v32, "c7":J
    xor-long v34, v20, v24

    and-long v1, v34, v16

    xor-long v20, v20, v1

    xor-long v24, v24, v1

    .line 372
    xor-long v34, v4, v26

    and-long v1, v34, v14

    xor-long/2addr v4, v1

    xor-long v26, v26, v1

    .line 373
    xor-long v34, v28, v30

    and-long v1, v34, v16

    xor-long v16, v28, v1

    .end local v28    # "c4":J
    .local v16, "c4":J
    xor-long v28, v30, v1

    .line 374
    .end local v30    # "c6":J
    .local v28, "c6":J
    xor-long v30, v22, v32

    and-long v1, v30, v14

    xor-long v14, v22, v1

    .end local v22    # "c5":J
    .local v14, "c5":J
    xor-long v22, v32, v1

    .line 376
    .end local v32    # "c7":J
    .local v22, "c7":J
    xor-long v30, v20, v4

    and-long v1, v30, v18

    xor-long v20, v20, v1

    xor-long/2addr v4, v1

    .line 377
    xor-long v30, v24, v26

    and-long v1, v30, v18

    xor-long v24, v24, v1

    xor-long v26, v26, v1

    .line 378
    xor-long v30, v16, v14

    and-long v1, v30, v18

    xor-long v16, v16, v1

    xor-long/2addr v14, v1

    .line 379
    xor-long v30, v28, v22

    and-long v1, v30, v18

    xor-long v18, v28, v1

    .end local v28    # "c6":J
    .local v18, "c6":J
    xor-long v22, v22, v1

    .line 381
    aput-wide v20, p1, v13

    aput-wide v4, p1, v12

    aput-wide v24, p1, v11

    aput-wide v26, p1, v10

    .line 382
    aput-wide v16, p1, v9

    aput-wide v14, p1, v8

    aput-wide v18, p1, v7

    aput-wide v22, p1, v6

    .line 383
    nop

    .line 442
    .end local v1    # "d":J
    .end local v4    # "c1":J
    .end local v14    # "c5":J
    .end local v16    # "c4":J
    .end local v18    # "c6":J
    .end local v20    # "c0":J
    .end local v22    # "c7":J
    .end local v24    # "c2":J
    .end local v26    # "c3":J
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private subBytes([J)V
    .locals 19
    .param p1, "s"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object/from16 v1, p0

    iget v2, v1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v2, :cond_0

    .line 448
    aget-wide v2, p1, v0

    .line 449
    .local v2, "u":J
    long-to-int v4, v2

    .local v4, "lo":I
    const/16 v5, 0x20

    ushr-long v6, v2, v5

    long-to-int v7, v6

    .line 450
    .local v7, "hi":I
    sget-object v6, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S0:[B

    and-int/lit16 v8, v4, 0xff

    aget-byte v6, v6, v8

    .line 451
    .local v6, "t0":B
    sget-object v8, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S1:[B

    ushr-int/lit8 v9, v4, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    .line 452
    .local v8, "t1":B
    sget-object v9, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S2:[B

    ushr-int/lit8 v10, v4, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    .line 453
    .local v9, "t2":B
    sget-object v10, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S3:[B

    ushr-int/lit8 v11, v4, 0x18

    aget-byte v10, v10, v11

    .line 454
    .local v10, "t3":B
    and-int/lit16 v11, v6, 0xff

    and-int/lit16 v12, v8, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    and-int/lit16 v12, v9, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v10, 0x18

    or-int v4, v11, v12

    .line 455
    sget-object v11, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S0:[B

    and-int/lit16 v12, v7, 0xff

    aget-byte v11, v11, v12

    .line 456
    .local v11, "t4":B
    sget-object v12, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S1:[B

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    .line 457
    .local v12, "t5":B
    sget-object v13, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S2:[B

    ushr-int/lit8 v14, v7, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    .line 458
    .local v13, "t6":B
    sget-object v14, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S3:[B

    ushr-int/lit8 v15, v7, 0x18

    aget-byte v14, v14, v15

    .line 459
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

    .line 460
    .end local v7    # "hi":I
    .local v5, "hi":I
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    int-to-long v0, v4

    const-wide v17, 0xffffffffL

    and-long v0, v0, v17

    move-wide/from16 v17, v0

    int-to-long v0, v5

    shl-long v0, v0, v16

    or-long v0, v17, v0

    aput-wide v0, p1, v7

    .line 446
    .end local v2    # "u":J
    .end local v4    # "lo":I
    .end local v5    # "hi":I
    .end local v6    # "t0":B
    .end local v8    # "t1":B
    .end local v9    # "t2":B
    .end local v10    # "t3":B
    .end local v11    # "t4":B
    .end local v12    # "t5":B
    .end local v13    # "t6":B
    .end local v14    # "t7":B
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 462
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 586
    new-instance v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;-><init>(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    .line 598
    const/16 v0, 0x100

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 10
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

    .line 179
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 180
    .local v0, "inputBytes":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    .line 182
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    add-int/lit8 v1, v1, -0xc

    .line 183
    .local v1, "lenPos":I
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    const/4 v3, 0x0

    if-le v2, v1, :cond_1

    .line 185
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-ge v2, v4, :cond_0

    .line 187
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    aput-byte v3, v2, v4

    goto :goto_0

    .line 189
    :cond_0
    iput v3, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 190
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 193
    :cond_1
    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    if-ge v2, v1, :cond_2

    .line 195
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    aput-byte v3, v2, v4

    goto :goto_1

    .line 198
    :cond_2
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v6, v2

    mul-long v4, v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    const/4 v2, 0x3

    shl-long/2addr v4, v2

    .line 199
    .local v4, "c":J
    long-to-int v6, v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v8, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 200
    iget v6, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 201
    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    .line 202
    iget-wide v7, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    ushr-long v6, v7, v6

    iget v8, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v8, v8

    mul-long v6, v6, v8

    shl-long/2addr v6, v2

    add-long/2addr v4, v6

    .line 203
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v7, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    invoke-static {v4, v5, v6, v7}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 205
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-direct {p0, v6, v3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 209
    .end local v0    # "inputBytes":I
    .end local v1    # "lenPos":I
    .end local v4    # "c":J
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    iget v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->P([J)V

    .line 213
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_2
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v1, :cond_3

    .line 215
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    aget-wide v3, v1, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    aget-wide v6, v5, v0

    xor-long/2addr v3, v6

    aput-wide v3, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    .end local v0    # "col":I
    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    ushr-int/2addr v0, v2

    .line 220
    .local v0, "neededColumns":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    sub-int/2addr v1, v0

    .local v1, "col":I
    :goto_3
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v1, v2, :cond_4

    .line 222
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 223
    add-int/lit8 p2, p2, 0x8

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 226
    .end local v1    # "col":I
    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->reset()V

    .line 228
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "DSTU7564"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    return v0
.end method

.method public reset()V
    .locals 6

    .line 233
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 234
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget v3, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v3, v3

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    .line 236
    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    .line 237
    iput v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 238
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 591
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    .line 593
    .local v0, "d":Lorg/bouncycastle/crypto/digests/DSTU7564Digest;
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->copyIn(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V

    .line 594
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    aput-byte p1, v0, v1

    .line 141
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 144
    iput v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 145
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    .line 147
    :cond_0
    return-void
.end method

.method public update([BII)V
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

    .line 151
    nop

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 153
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "inOff":I
    .local v0, "inOff":I
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update(B)V

    .line 154
    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    .line 157
    .end local v0    # "inOff":I
    .restart local p2    # "inOff":I
    :cond_0
    if-lez p3, :cond_2

    .line 159
    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-lt p3, v0, :cond_1

    .line 161
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 162
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    add-int/2addr p2, v0

    .line 163
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    sub-int/2addr p3, v0

    .line 164
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    goto :goto_1

    .line 167
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 169
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update(B)V

    .line 170
    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_2

    .line 173
    .end local v0    # "inOff":I
    .restart local p2    # "inOff":I
    :cond_2
    return-void
.end method
