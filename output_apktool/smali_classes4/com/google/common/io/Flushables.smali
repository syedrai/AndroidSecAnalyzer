.class public final Lcom/google/common/io/Flushables;
.super Ljava/lang/Object;
.source "Flushables.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/google/common/io/Flushables;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/io/Flushables;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flush(Ljava/io/Flushable;Z)V
    .locals 7
    .param p0, "flushable"    # Ljava/io/Flushable;
    .param p1, "swallowIOException"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flushable",
            "swallowIOException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 56
    .local v6, "e":Ljava/io/IOException;
    if-eqz p1, :cond_0

    .line 57
    sget-object v1, Lcom/google/common/io/Flushables;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "flush"

    const-string v5, "IOException thrown while flushing Flushable."

    const-string v3, "com.google.common.io.Flushables"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v6    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 59
    .restart local v6    # "e":Ljava/io/IOException;
    :cond_0
    throw v6
.end method

.method public static flushQuietly(Ljava/io/Flushable;)V
    .locals 7
    .param p0, "flushable"    # Ljava/io/Flushable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flushable"
        }
    .end annotation

    .line 73
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/common/io/Flushables;->flush(Ljava/io/Flushable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 75
    .local v6, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/common/io/Flushables;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "flushQuietly"

    const-string v5, "IOException should not have been thrown."

    const-string v3, "com.google.common.io.Flushables"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v6    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
