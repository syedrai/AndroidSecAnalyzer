.class public Lorg/bouncycastle/pkix/util/MissingEntryException;
.super Ljava/lang/RuntimeException;
.source "MissingEntryException.java"


# instance fields
.field private debugMsg:Ljava/lang/String;

.field protected final key:Ljava/lang/String;

.field protected final loader:Ljava/lang/ClassLoader;

.field protected final locale:Ljava/util/Locale;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;
    .param p5, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "resource",
            "key",
            "locale",
            "loader"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->resource:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->key:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->locale:Ljava/util/Locale;

    .line 24
    iput-object p5, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "resource"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/util/Locale;
    .param p6, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "cause",
            "resource",
            "key",
            "locale",
            "loader"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    iput-object p3, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->resource:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->key:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->locale:Ljava/util/Locale;

    .line 33
    iput-object p6, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    .line 34
    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDebugMsg()Ljava/lang/String;
    .locals 5

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->debugMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->key:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->resource:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in resource file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for the locale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    instance-of v0, v0, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    check-cast v0, Ljava/net/URLClassLoader;

    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    .line 64
    .local v0, "urls":[Ljava/net/URL;
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->debugMsg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " The following entries in the classpath were searched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->debugMsg:Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "urls":[Ljava/net/URL;
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->debugMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/MissingEntryException;->resource:Ljava/lang/String;

    return-object v0
.end method
