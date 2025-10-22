.class public Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "GCFBBlockCipher.java"


# static fields
.field private static final C:[B


# instance fields
.field private final cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

.field private counter:J

.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x0t
        0x72t
        0x22t
        0x64t
        -0x37t
        0x4t
        0x23t
        -0x73t
        0x3at
        -0x25t
        -0x6at
        0x46t
        -0x17t
        0x2at
        -0x3ct
        0x18t
        -0x2t
        -0x54t
        -0x6ct
        0x0t
        -0x13t
        0x7t
        0x12t
        -0x40t
        -0x7at
        -0x24t
        -0x3et
        -0x11t
        0x4ct
        -0x57t
        0x2bt
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 36
    new-instance v0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    .line 37
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 7
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 86
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v4, 0x400

    rem-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    .line 90
    .local v0, "base":Lorg/bouncycastle/crypto/BlockCipher;
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 92
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 94
    .local v1, "nextKey":[B
    sget-object v3, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v3, v2, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 95
    sget-object v3, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    const/16 v4, 0x8

    invoke-interface {v0, v3, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 96
    sget-object v3, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    const/16 v4, 0x10

    invoke-interface {v0, v3, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 97
    sget-object v3, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    const/16 v4, 0x18

    invoke-interface {v0, v3, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 99
    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iput-object v3, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 101
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 103
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getCurrentIV()[B

    move-result-object v3

    .line 105
    .local v3, "iv":[B
    invoke-interface {v0, v3, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 107
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->forEncryption:Z

    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v2, v4, v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 110
    .end local v0    # "base":Lorg/bouncycastle/crypto/BlockCipher;
    .end local v1    # "nextKey":[B
    .end local v3    # "iv":[B
    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->calculateByte(B)B

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 4

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBlockSize()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
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

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 45
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->forEncryption:Z

    .line 47
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 52
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 57
    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    if-eqz v0, :cond_2

    .line 59
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 62
    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 63
    return-void
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

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v2, "in":[B
    .local v3, "inOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBytes([BII[BI)I

    .line 81
    iget-object p1, v1, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 119
    return-void
.end method
