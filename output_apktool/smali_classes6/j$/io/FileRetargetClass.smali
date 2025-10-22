.class public final synthetic Lj$/io/FileRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toPath(Ljava/io/File;)Lj$/nio/file/Path;
    .locals 1

    instance-of v0, p0, Lj$/io/FileRetargetInterface;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/io/FileRetargetInterface;

    invoke-interface {p0}, Lj$/io/FileRetargetInterface;->toPath()Lj$/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj$/io/DesugarFile;->toPath(Ljava/io/File;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
