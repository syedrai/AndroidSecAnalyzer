.class public final synthetic Lj$/nio/file/AccessMode$EnumConversion;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic convert(Ljava/nio/file/AccessMode;)Lj$/nio/file/AccessMode;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    if-ne p0, v0, :cond_1

    sget-object p0, Lj$/nio/file/AccessMode;->READ:Lj$/nio/file/AccessMode;

    return-object p0

    :cond_1
    sget-object v0, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    if-ne p0, v0, :cond_2

    sget-object p0, Lj$/nio/file/AccessMode;->WRITE:Lj$/nio/file/AccessMode;

    return-object p0

    :cond_2
    sget-object p0, Lj$/nio/file/AccessMode;->EXECUTE:Lj$/nio/file/AccessMode;

    return-object p0
.end method

.method public static synthetic convert(Lj$/nio/file/AccessMode;)Ljava/nio/file/AccessMode;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lj$/nio/file/AccessMode;->READ:Lj$/nio/file/AccessMode;

    if-ne p0, v0, :cond_1

    sget-object p0, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    return-object p0

    :cond_1
    sget-object v0, Lj$/nio/file/AccessMode;->WRITE:Lj$/nio/file/AccessMode;

    if-ne p0, v0, :cond_2

    sget-object p0, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    return-object p0

    :cond_2
    sget-object p0, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    return-object p0
.end method
