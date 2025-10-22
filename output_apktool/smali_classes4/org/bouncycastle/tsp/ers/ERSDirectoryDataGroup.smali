.class public Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;
.super Lorg/bouncycastle/tsp/ers/ERSDataGroup;
.source "ERSDirectoryDataGroup.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "dataDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataDirectory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;->buildGroup(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/ers/ERSDataGroup;-><init>(Ljava/util/List;)V

    .line 24
    return-void
.end method

.method private static buildGroup(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .param p0, "dataDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataDirectory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 32
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .local v1, "dataObjects":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 35
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 39
    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_0
    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSFileData;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/ers/ERSFileData;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 52
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "dataObjects":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSData;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file reference does not refer to directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSFileData;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSFileData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 66
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/tsp/ers/ERSFileData;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSFileData;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getSubdirectories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "subdirectories":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
