.class public Lorg/bouncycastle/jce/exception/ExtIOException;
.super Ljava/io/IOException;
.source "ExtIOException.java"

# interfaces
.implements Lorg/bouncycastle/jce/exception/ExtException;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lorg/bouncycastle/jce/exception/ExtIOException;->cause:Ljava/lang/Throwable;

    .line 15
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/jce/exception/ExtIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
