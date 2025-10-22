.class Lj$/nio/file/TempFileHelper$PosixPermissions;
.super Ljava/lang/Object;
.source "TempFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/TempFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PosixPermissions"
.end annotation


# static fields
.field static final dirPermissions:Lj$/nio/file/attribute/FileAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/nio/file/attribute/FileAttribute<",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;>;"
        }
    .end annotation
.end field

.field static final filePermissions:Lj$/nio/file/attribute/FileAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/nio/file/attribute/FileAttribute<",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    sget-object v0, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Lj$/nio/file/attribute/PosixFilePermission;

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 69
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Lj$/nio/file/attribute/FileAttribute;

    move-result-object v0

    sput-object v0, Lj$/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Lj$/nio/file/attribute/FileAttribute;

    .line 70
    sget-object v0, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Lj$/nio/file/attribute/PosixFilePermission;

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    sget-object v2, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 72
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lj$/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Lj$/nio/file/attribute/FileAttribute;

    move-result-object v0

    sput-object v0, Lj$/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Lj$/nio/file/attribute/FileAttribute;

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
