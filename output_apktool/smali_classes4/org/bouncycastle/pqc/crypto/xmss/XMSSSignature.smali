.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;
.super Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
.source "XMSSSignature.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;
.implements Lorg/bouncycastle/util/Encodable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    }
.end annotation


# instance fields
.field private final index:I

.field private final random:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;)V
    .locals 4
    .param p1, "builder"    # Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)V

    .line 22
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;->-$$Nest$fgetindex(Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    .line 23
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigestSize()I

    move-result v0

    .line 24
    .local v0, "n":I
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;->-$$Nest$fgetrandom(Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;)[B

    move-result-object v1

    .line 25
    .local v1, "tmpRandom":[B
    if-eqz v1, :cond_1

    .line 27
    array-length v2, v1

    if-ne v2, v0, :cond_0

    .line 31
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    goto :goto_0

    .line 29
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "size of random needs to be equal to size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_1
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    .line 37
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    return v0
.end method

.method public getRandom()[B
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 11

    .line 109
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigestSize()I

    move-result v0

    .line 110
    .local v0, "n":I
    const/4 v1, 0x4

    .line 111
    .local v1, "indexSize":I
    move v2, v0

    .line 112
    .local v2, "randomSize":I
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v3

    mul-int v3, v3, v0

    .line 113
    .local v3, "signatureSize":I
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v4

    mul-int v4, v4, v0

    .line 114
    .local v4, "authPathSize":I
    add-int v5, v1, v2

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    .line 115
    .local v5, "totalSize":I
    new-array v6, v5, [B

    .line 116
    .local v6, "out":[B
    const/4 v7, 0x0

    .line 118
    .local v7, "position":I
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    invoke-static {v8, v6, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 119
    add-int/2addr v7, v1

    .line 121
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    invoke-static {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 122
    add-int/2addr v7, v2

    .line 124
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getWOTSPlusSignature()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;->toByteArray()[[B

    move-result-object v8

    .line 125
    .local v8, "signature":[[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_0

    .line 127
    aget-object v10, v8, v9

    invoke-static {v6, v10, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 128
    add-int/2addr v7, v0

    .line 125
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 131
    .end local v9    # "i":I
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getAuthPath()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 133
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getAuthPath()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v10

    .line 134
    .local v10, "value":[B
    invoke-static {v6, v10, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 135
    add-int/2addr v7, v0

    .line 131
    .end local v10    # "value":[B
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 137
    .end local v9    # "i":I
    :cond_1
    return-object v6
.end method
