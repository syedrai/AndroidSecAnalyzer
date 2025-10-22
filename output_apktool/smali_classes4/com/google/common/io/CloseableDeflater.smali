.class public final Lcom/google/common/io/CloseableDeflater;
.super Ljava/util/zip/Deflater;
.source "CloseableDeflater.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/util/zip/Deflater;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "nowrap"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "nowrap"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 51
    invoke-super {p0}, Ljava/util/zip/Deflater;->end()V

    .line 52
    return-void
.end method
