.class public Ljava/nio/file/FileSystemLoopException;
.super Ljava/nio/file/FileSystemException;
.source "FileSystemLoopException.java"


# static fields
.field private static final serialVersionUID:J = 0x4335eed96f492f51L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
