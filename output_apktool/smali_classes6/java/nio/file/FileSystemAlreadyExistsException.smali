.class public Ljava/nio/file/FileSystemAlreadyExistsException;
.super Ljava/lang/RuntimeException;
.source "FileSystemAlreadyExistsException.java"


# static fields
.field static final serialVersionUID:J = -0x4b792561d7523d8cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
