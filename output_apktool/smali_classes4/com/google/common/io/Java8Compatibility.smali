.class final Lcom/google/common/io/Java8Compatibility;
.super Ljava/lang/Object;
.source "Java8Compatibility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clear(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 30
    return-void
.end method

.method static flip(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 34
    return-void
.end method

.method static limit(Ljava/nio/Buffer;I)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "limit"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 38
    return-void
.end method

.method static mark(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 42
    return-void
.end method

.method static position(Ljava/nio/Buffer;I)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "position"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 46
    return-void
.end method

.method static reset(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 50
    return-void
.end method
