.class public abstract Lj$/nio/file/spi/FileTypeDetector;
.super Ljava/lang/Object;
.source "FileTypeDetector.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 68
    invoke-static {}, Lj$/nio/file/spi/FileTypeDetector;->checkPermission()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/nio/file/spi/FileTypeDetector;-><init>(Ljava/lang/Void;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;)V
    .locals 0
    .param p1, "ignore"    # Ljava/lang/Void;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission()Ljava/lang/Void;
    .locals 3

    .line 53
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 54
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "fileTypeDetector"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 56
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public abstract probeContentType(Lj$/nio/file/Path;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
