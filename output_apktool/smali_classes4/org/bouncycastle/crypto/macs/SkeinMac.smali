.class public Lorg/bouncycastle/crypto/macs/SkeinMac;
.super Ljava/lang/Object;
.source "SkeinMac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field public static final SKEIN_1024:I = 0x400

.field public static final SKEIN_256:I = 0x100

.field public static final SKEIN_512:I = 0x200


# instance fields
.field private engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "stateSizeBits"    # I
    .param p2, "digestSizeBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateSizeBits",
            "digestSizeBits"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/SkeinEngine;-><init>(II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/macs/SkeinMac;)V
    .locals 2
    .param p1, "mac"    # Lorg/bouncycastle/crypto/macs/SkeinMac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v1, p1, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;-><init>(Lorg/bouncycastle/crypto/digests/SkeinEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    .line 56
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
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

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 4

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skein-MAC-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/SkeinParameters;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/SkeinParameters;

    .local v0, "skeinParameters":Lorg/bouncycastle/crypto/params/SkeinParameters;
    goto :goto_0

    .line 77
    .end local v0    # "skeinParameters":Lorg/bouncycastle/crypto/params/SkeinParameters;
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2

    .line 79
    new-instance v0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;-><init>()V

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->setKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->build()Lorg/bouncycastle/crypto/params/SkeinParameters;

    move-result-object v0

    .line 86
    .restart local v0    # "skeinParameters":Lorg/bouncycastle/crypto/params/SkeinParameters;
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SkeinParameters;->getKey()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->init(Lorg/bouncycastle/crypto/params/SkeinParameters;)V

    .line 91
    return-void

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Skein MAC requires a key parameter."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "skeinParameters":Lorg/bouncycastle/crypto/params/SkeinParameters;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter passed to Skein MAC init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->reset()V

    .line 101
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->update(B)V

    .line 106
    return-void
.end method

.method public update([BII)V
    .locals 1
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

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SkeinMac;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->update([BII)V

    .line 111
    return-void
.end method
