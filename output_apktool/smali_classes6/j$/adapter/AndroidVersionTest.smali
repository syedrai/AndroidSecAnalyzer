.class public Lj$/adapter/AndroidVersionTest;
.super Ljava/lang/Object;
.source "AndroidVersionTest.java"


# static fields
.field public static final is24OrAbove:Z

.field public static final is26OrAbove:Z

.field public static final isHeadfull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "java.util.StringJoiner"

    invoke-static {v0}, Lj$/adapter/AndroidVersionTest;->setUp(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lj$/adapter/AndroidVersionTest;->is24OrAbove:Z

    .line 10
    const-string v0, "java.nio.file.FileSystems"

    invoke-static {v0}, Lj$/adapter/AndroidVersionTest;->setUp(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lj$/adapter/AndroidVersionTest;->is26OrAbove:Z

    .line 11
    const-string v0, "android.os.Build"

    invoke-static {v0}, Lj$/adapter/AndroidVersionTest;->setUp(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lj$/adapter/AndroidVersionTest;->isHeadfull:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setUp(Ljava/lang/String;)Z
    .locals 0

    .line 19
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const/4 p0, 0x1

    return p0

    .line 21
    :catch_0
    move-exception p0

    .line 23
    const/4 p0, 0x0

    return p0
.end method
