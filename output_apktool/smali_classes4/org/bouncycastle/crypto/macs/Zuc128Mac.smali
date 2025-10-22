.class public final Lorg/bouncycastle/crypto/macs/Zuc128Mac;
.super Ljava/lang/Object;
.source "Zuc128Mac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;
    }
.end annotation


# static fields
.field private static final TOPBIT:I = 0x80


# instance fields
.field private theByteIndex:I

.field private final theEngine:Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

.field private final theKeyStream:[I

.field private theMac:I

.field private theState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

.field private theWordIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;-><init>(Lorg/bouncycastle/crypto/macs/Zuc128Mac-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    .line 56
    return-void
.end method

.method private getFinalWord()I
    .locals 2

    .line 200
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result v0

    return v0

    .line 204
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    .line 205
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private getKeyStreamWord(I)I
    .locals 4
    .param p1, "bitNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitNo"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    aget v0, v0, v1

    .line 168
    .local v0, "myFirst":I
    if-nez p1, :cond_0

    .line 170
    return v0

    .line 174
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    .line 175
    .local v1, "mySecond":I
    shl-int v2, v0, p1

    rsub-int/lit8 v3, p1, 0x20

    ushr-int v3, v1, v3

    or-int/2addr v2, v3

    return v2
.end method

.method private initKeyStream()V
    .locals 3

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    .line 106
    return-void
.end method

.method private shift4NextByte()V
    .locals 3

    .line 137
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    .line 140
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v0, v1

    .line 143
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    .line 145
    :cond_0
    return-void
.end method

.method private updateMac(I)V
    .locals 2
    .param p1, "bitNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitNo"
        }
    .end annotation

    .line 155
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->getKeyStreamWord(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    .line 156
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->shift4NextByte()V

    .line 219
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->getKeyStreamWord(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    .line 220
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->getFinalWord()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    .line 221
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->encode32be(I[BI)V

    .line 224
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->reset()V

    .line 225
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "Zuc128Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 75
    const/4 v0, 0x4

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "pParams"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pParams"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    .line 88
    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->initKeyStream()V

    .line 89
    return-void
.end method

.method public reset()V
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 234
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->initKeyStream()V

    .line 235
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->shift4NextByte()V

    .line 119
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    mul-int/lit8 v0, v0, 0x8

    .line 120
    .local v0, "bitBase":I
    const/16 v1, 0x80

    .local v1, "bitMask":I
    const/4 v2, 0x0

    .local v2, "bitNo":I
    :goto_0
    if-lez v1, :cond_1

    .line 123
    and-int v3, p1, v1

    if-eqz v3, :cond_0

    .line 126
    add-int v3, v0, v2

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->updateMac(I)V

    .line 120
    :cond_0
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "bitMask":I
    .end local v2    # "bitNo":I
    :cond_1
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    .local v0, "byteNo":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 189
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/macs/Zuc128Mac;->update(B)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "byteNo":I
    :cond_0
    return-void
.end method
