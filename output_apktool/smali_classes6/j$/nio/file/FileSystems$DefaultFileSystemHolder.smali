.class Lj$/nio/file/FileSystems$DefaultFileSystemHolder;
.super Ljava/lang/Object;
.source "FileSystems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/FileSystems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFileSystemHolder"
.end annotation


# static fields
.field static final defaultFileSystem:Lj$/nio/file/FileSystem;


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaultProvider()Lj$/nio/file/spi/FileSystemProvider;
    .locals 1

    invoke-static {}, Lj$/nio/file/FileSystems$DefaultFileSystemHolder;->getDefaultProvider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 92
    invoke-static {}, Lj$/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    sput-object v0, Lj$/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem:Lj$/nio/file/FileSystem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static defaultFileSystem()Lj$/nio/file/FileSystem;
    .locals 2

    .line 97
    new-instance v0, Lj$/nio/file/FileSystems$DefaultFileSystemHolder$1;

    invoke-direct {v0}, Lj$/nio/file/FileSystems$DefaultFileSystemHolder$1;-><init>()V

    .line 98
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/spi/FileSystemProvider;

    .line 105
    .local v0, "provider":Lj$/nio/file/spi/FileSystemProvider;
    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Lj$/nio/file/FileSystem;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultProvider()Lj$/nio/file/spi/FileSystemProvider;
    .locals 12

    .line 111
    invoke-static {}, Lj$/adapter/HybridFileSystemProvider;->instance()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 115
    .local v0, "provider":Lj$/nio/file/spi/FileSystemProvider;
    const-string v1, "java.nio.file.spi.DefaultFileSystemProvider"

    .line 116
    .local v1, "prop":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "propValue":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 118
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 120
    .local v7, "cn":Ljava/lang/String;
    nop

    .line 121
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v9, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 122
    .local v8, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Lj$/nio/file/spi/FileSystemProvider;

    aput-object v11, v10, v5

    .line 123
    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 124
    .local v10, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v5

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj$/nio/file/spi/FileSystemProvider;

    move-object v0, v9

    .line 127
    invoke-virtual {v0}, Lj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v9

    const-string v11, "file"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 132
    .end local v8    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 118
    .end local v7    # "cn":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 128
    .restart local v7    # "cn":Ljava/lang/String;
    .restart local v8    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Default provider must use scheme \'file\'"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local v0    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "propValue":Ljava/lang/String;
    .end local v7    # "cn":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v8    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v0    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    .restart local v1    # "prop":Ljava/lang/String;
    .restart local v2    # "propValue":Ljava/lang/String;
    .restart local v7    # "cn":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 131
    .local v3, "x":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 135
    .end local v3    # "x":Ljava/lang/Exception;
    .end local v7    # "cn":Ljava/lang/String;
    :cond_1
    return-object v0
.end method
