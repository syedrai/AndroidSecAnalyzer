.class Lorg/bouncycastle/tsp/ers/ERSUtil;
.super Ljava/lang/Object;
.source "ERSUtil.java"


# static fields
.field private static final hashComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/bouncycastle/tsp/ers/ByteArrayComparator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/ByteArrayComparator;-><init>()V

    sput-object v0, Lorg/bouncycastle/tsp/ers/ERSUtil;->hashComp:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static buildHashList(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/List;[B)Ljava/util/List;
    .locals 3
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "previousChainHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "dataObjects",
            "previousChainHash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/operator/DigestCalculator;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 146
    .local p1, "dataObjects":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSData;>;"
    new-instance v0, Lorg/bouncycastle/tsp/ers/SortedHashList;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;-><init>()V

    .line 148
    .local v0, "hashes":Lorg/bouncycastle/tsp/ers/SortedHashList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSData;

    invoke-interface {v2, p0, p2}, Lorg/bouncycastle/tsp/ers/ERSData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/tsp/ers/SortedHashList;->add([B)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static buildIndexedHashList(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/List;[B)Ljava/util/List;
    .locals 4
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "previousChainsHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "dataObjects",
            "previousChainsHash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/operator/DigestCalculator;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;[B)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/IndexedHash;",
            ">;"
        }
    .end annotation

    .line 158
    .local p1, "dataObjects":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSData;>;"
    new-instance v0, Lorg/bouncycastle/tsp/ers/SortedIndexedHashList;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/SortedIndexedHashList;-><init>()V

    .line 160
    .local v0, "hashes":Lorg/bouncycastle/tsp/ers/SortedIndexedHashList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSData;

    invoke-interface {v2, p0, p2}, Lorg/bouncycastle/tsp/ers/ERSData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v2

    .line 164
    .local v2, "hash":[B
    new-instance v3, Lorg/bouncycastle/tsp/ers/IndexedHash;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/tsp/ers/IndexedHash;-><init>(I[B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/tsp/ers/SortedIndexedHashList;->add(Lorg/bouncycastle/tsp/ers/IndexedHash;)V

    .line 160
    .end local v2    # "hash":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/SortedIndexedHashList;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static buildIndexedHashList([[B)Ljava/util/List;
    .locals 3
    .param p0, "values"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/bouncycastle/tsp/ers/SortedHashList;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;-><init>()V

    .line 136
    .local v0, "hashes":Lorg/bouncycastle/tsp/ers/SortedHashList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 138
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/tsp/ers/SortedHashList;->add([B)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B
    .locals 1
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "a",
            "b"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/bouncycastle/tsp/ers/ERSUtil;->hashComp:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 45
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    invoke-static {p0, p2, p1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[[B)[B
    .locals 2
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p1, "values"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "values"
        }
    .end annotation

    .line 55
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 57
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->buildIndexedHashList([[B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/Iterator;)[B

    move-result-object v0

    return-object v0
.end method

.method static calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "inStream"
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 108
    .local v0, "mdOut":Ljava/io/OutputStream;
    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 112
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 114
    .end local v0    # "mdOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to calculate hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/tsp/ers/ExpUtil;->createIllegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method static calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/Iterator;)[B
    .locals 4
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "dataGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/operator/DigestCalculator;",
            "Ljava/util/Iterator<",
            "[B>;)[B"
        }
    .end annotation

    .line 86
    .local p1, "dataGroup":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 87
    .local v0, "mdOut":Ljava/io/OutputStream;
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 94
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 96
    .end local v0    # "mdOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to calculate hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/tsp/ers/ExpUtil;->createIllegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method static calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .locals 4
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "data"
        }
    .end annotation

    .line 27
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 29
    .local v0, "mdOut":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 31
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 33
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 35
    .end local v0    # "mdOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to calculate hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/tsp/ers/ExpUtil;->createIllegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method static calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B
    .locals 4
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "a",
            "b"
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 69
    .local v0, "mdOut":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 72
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 74
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 76
    .end local v0    # "mdOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to calculate hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/tsp/ers/ExpUtil;->createIllegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method static computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B
    .locals 3
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p1, "node"    # Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "node"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValues()[[B

    move-result-object v0

    .line 124
    .local v0, "values":[[B
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 126
    invoke-static {v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->buildIndexedHashList([[B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/Iterator;)[B

    move-result-object v1

    return-object v1

    .line 129
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method static concatPreviousHashes(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B
    .locals 3
    .param p0, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p1, "chainHash"    # [B
    .param p2, "dataHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "chainHash",
            "dataHash"
        }
    .end annotation

    .line 172
    if-nez p1, :cond_0

    .line 174
    return-object p2

    .line 179
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 181
    .local v0, "digOut":Ljava/io/OutputStream;
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 182
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 183
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 185
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 187
    .end local v0    # "digOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unable to hash data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
