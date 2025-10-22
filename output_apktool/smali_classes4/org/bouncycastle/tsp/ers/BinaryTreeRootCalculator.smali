.class public Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;
.super Ljava/lang/Object;
.source "BinaryTreeRootCalculator.java"

# interfaces
.implements Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;


# instance fields
.field private tree:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computePathToRoot(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;I)[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .locals 5
    .param p1, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "node"    # Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "node",
            "index"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/asn1/tsp/PartialHashtree;>;"
    invoke-static {p1, p2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v1

    .line 64
    .local v1, "nodeHash":[B
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "row":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 69
    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_1

    .line 74
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 75
    .local v3, "hashes":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    goto :goto_2

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 81
    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 p3, v4, -0x1

    .line 82
    .end local v3    # "hashes":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_1

    .line 86
    :cond_1
    :goto_2
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_2

    .line 88
    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    add-int/lit8 v4, p3, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .local v3, "neighborHash":[B
    goto :goto_3

    .line 92
    .end local v3    # "neighborHash":[B
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 95
    .restart local v3    # "neighborHash":[B
    :goto_3
    new-instance v4, Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {p1, v1, v3}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v1

    .line 98
    div-int/lit8 p3, p3, 0x2

    .line 99
    nop

    .end local v3    # "neighborHash":[B
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_0

    .line 102
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    return-object v3
.end method

.method public computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B
    .locals 7
    .param p1, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "nodes"    # [Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "nodes"
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/bouncycastle/tsp/ers/SortedHashList;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;-><init>()V

    .line 22
    .local v0, "hashes":Lorg/bouncycastle/tsp/ers/SortedHashList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 24
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v2

    .line 26
    .local v2, "left":[B
    invoke-virtual {v0, v2}, Lorg/bouncycastle/tsp/ers/SortedHashList;->add([B)V

    .line 22
    .end local v2    # "left":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;->toList()Ljava/util/List;

    move-result-object v1

    .line 31
    .local v1, "hashValues":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    .line 32
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 38
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .local v2, "newHashes":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-gt v4, v5, :cond_2

    .line 42
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {p1, v5, v6}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 45
    .end local v4    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_3

    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    move-object v1, v2

    .line 53
    .end local v2    # "newHashes":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 56
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v2
.end method

.method public recoverRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B
    .locals 3
    .param p1, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "nodes"    # [Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "nodes"
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v0

    .line 109
    .local v0, "baseHash":[B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 111
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
