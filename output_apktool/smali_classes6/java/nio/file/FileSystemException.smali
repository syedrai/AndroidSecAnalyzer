.class public Ljava/nio/file/FileSystemException;
.super Ljava/io/IOException;
.source "FileSystemException.java"


# static fields
.field static final serialVersionUID:J = -0x2a670d87892c9f04L


# instance fields
.field private final file:Ljava/lang/String;

.field private final other:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 110
    iget-object v0, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 116
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2
    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 120
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOtherFile()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
