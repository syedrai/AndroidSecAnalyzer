.class public Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
.super Ljava/lang/Object;
.source "XMSSReducedSignature.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;
    }
.end annotation


# instance fields
.field private final authPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

.field private final wotsPlusSignature:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)V
    .locals 13
    .param p1, "builder"    # Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->-$$Nest$fgetparams(Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigestSize()I

    move-result v0

    .line 26
    .local v0, "n":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v1

    .line 27
    .local v1, "len":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v2

    .line 28
    .local v2, "height":I
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->-$$Nest$fgetreducedSignature(Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)[B

    move-result-object v3

    .line 29
    .local v3, "reducedSignature":[B
    if-eqz v3, :cond_3

    .line 32
    mul-int v4, v1, v0

    .line 33
    .local v4, "signatureSize":I
    mul-int v5, v2, v0

    .line 34
    .local v5, "authPathSize":I
    add-int v6, v4, v5

    .line 35
    .local v6, "totalSize":I
    array-length v7, v3

    if-ne v7, v6, :cond_2

    .line 39
    const/4 v7, 0x0

    .line 40
    .local v7, "position":I
    new-array v8, v1, [[B

    .line 41
    .local v8, "wotsPlusSignature":[[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_0

    .line 43
    invoke-static {v3, v7, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v10

    aput-object v10, v8, v9

    .line 44
    add-int/2addr v7, v0

    .line 41
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 46
    .end local v9    # "i":I
    :cond_0
    new-instance v9, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    iput-object v9, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    .line 48
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v9, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v2, :cond_1

    .line 51
    new-instance v11, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {v3, v7, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/2addr v7, v0

    .line 49
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 54
    .end local v10    # "i":I
    :cond_1
    iput-object v9, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    .line 55
    .end local v4    # "signatureSize":I
    .end local v5    # "authPathSize":I
    .end local v6    # "totalSize":I
    .end local v7    # "position":I
    .end local v8    # "wotsPlusSignature":[[B
    .end local v9    # "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;>;"
    goto :goto_3

    .line 37
    .restart local v4    # "signatureSize":I
    .restart local v5    # "authPathSize":I
    .restart local v6    # "totalSize":I
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "signature has wrong size"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    .end local v4    # "signatureSize":I
    .end local v5    # "authPathSize":I
    .end local v6    # "totalSize":I
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->-$$Nest$fgetwotsPlusSignature(Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v4

    .line 60
    .local v4, "tmpSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    if-eqz v4, :cond_4

    .line 62
    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    goto :goto_2

    .line 66
    :cond_4
    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v0, v7, v8

    const/4 v8, 0x0

    aput v1, v7, v8

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    iput-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    .line 68
    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->-$$Nest$fgetauthPath(Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Ljava/util/List;

    move-result-object v5

    .line 69
    .local v5, "tmpAuthPath":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;>;"
    if-eqz v5, :cond_6

    .line 71
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_5

    .line 75
    iput-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    goto :goto_3

    .line 73
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "size of authPath needs to be equal to height of tree"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 79
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    .line 82
    .end local v4    # "tmpSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .end local v5    # "tmpAuthPath":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;>;"
    :goto_3
    return-void

    .line 23
    .end local v0    # "n":I
    .end local v1    # "len":I
    .end local v2    # "height":I
    .end local v3    # "reducedSignature":[B
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAuthPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    return-object v0
.end method

.method public getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method public getWOTSPlusSignature()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 9

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigestSize()I

    move-result v0

    .line 128
    .local v0, "n":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v1

    mul-int v1, v1, v0

    .line 129
    .local v1, "signatureSize":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v2

    mul-int v2, v2, v0

    .line 130
    .local v2, "authPathSize":I
    add-int v3, v1, v2

    .line 131
    .local v3, "totalSize":I
    new-array v4, v3, [B

    .line 132
    .local v4, "out":[B
    const/4 v5, 0x0

    .line 134
    .local v5, "position":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;->toByteArray()[[B

    move-result-object v6

    .line 135
    .local v6, "signature":[[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 137
    aget-object v8, v6, v7

    invoke-static {v4, v8, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 138
    add-int/2addr v5, v0

    .line 135
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 141
    .end local v7    # "i":I
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 143
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v8

    .line 144
    .local v8, "value":[B
    invoke-static {v4, v8, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 145
    add-int/2addr v5, v0

    .line 141
    .end local v8    # "value":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 147
    .end local v7    # "i":I
    :cond_1
    return-object v4
.end method
