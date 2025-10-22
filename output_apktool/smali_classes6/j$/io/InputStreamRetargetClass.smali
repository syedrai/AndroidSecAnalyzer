.class public final synthetic Lj$/io/InputStreamRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1

    instance-of v0, p0, Lj$/io/InputStreamRetargetInterface;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/io/InputStreamRetargetInterface;

    invoke-interface {p0, p1}, Lj$/io/InputStreamRetargetInterface;->transferTo(Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0
.end method
