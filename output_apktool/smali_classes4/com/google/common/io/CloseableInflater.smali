.class public final Lcom/google/common/io/CloseableInflater;
.super Ljava/util/zip/Inflater;
.source "CloseableInflater.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "nowrap"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nowrap"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 43
    invoke-super {p0}, Ljava/util/zip/Inflater;->end()V

    .line 44
    return-void
.end method
