.class abstract Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;
.super Ljava/lang/Object;
.source "DesugarAbstractBasicFileAttributeView.java"

# interfaces
.implements Lj$/nio/file/attribute/BasicFileAttributeView;
.implements Lj$/desugar/sun/nio/fs/DesugarDynamicFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;
    }
.end annotation


# static fields
.field private static final CREATION_TIME_NAME:Ljava/lang/String; = "creationTime"

.field private static final FILE_KEY_NAME:Ljava/lang/String; = "fileKey"

.field private static final IS_DIRECTORY_NAME:Ljava/lang/String; = "isDirectory"

.field private static final IS_OTHER_NAME:Ljava/lang/String; = "isOther"

.field private static final IS_REGULAR_FILE_NAME:Ljava/lang/String; = "isRegularFile"

.field private static final IS_SYMBOLIC_LINK_NAME:Ljava/lang/String; = "isSymbolicLink"

.field private static final LAST_ACCESS_TIME_NAME:Ljava/lang/String; = "lastAccessTime"

.field private static final LAST_MODIFIED_TIME_NAME:Ljava/lang/String; = "lastModifiedTime"

.field private static final SIZE_NAME:Ljava/lang/String; = "size"

.field static final basicAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "creationTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lastAccessTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lastModifiedTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fileKey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "isDirectory"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isRegularFile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "isSymbolicLink"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "isOther"

    aput-object v2, v0, v1

    .line 57
    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarUtil;->newSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    .line 56
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addRequestedBasicAttributes(Lj$/nio/file/attribute/BasicFileAttributes;Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;)V
    .locals 3
    .param p1, "attrs"    # Lj$/nio/file/attribute/BasicFileAttributes;
    .param p2, "builder"    # Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrs",
            "builder"
        }
    .end annotation

    .line 148
    const-string v0, "size"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_0
    const-string v0, "creationTime"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->creationTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_1
    const-string v0, "lastAccessTime"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_2
    const-string v0, "lastModifiedTime"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :cond_3
    const-string v0, "fileKey"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_4
    const-string v0, "isDirectory"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_5
    const-string v0, "isRegularFile"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 161
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    :cond_6
    const-string v0, "isSymbolicLink"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 163
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    :cond_7
    const-string v0, "isOther"

    invoke-virtual {p2, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 165
    invoke-interface {p1}, Lj$/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    :cond_8
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "basic"

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requested"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    sget-object v0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    .line 173
    invoke-static {v0, p1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v0

    .line 174
    .local v0, "builder":Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->addRequestedBasicAttributes(Lj$/nio/file/attribute/BasicFileAttributes;Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 175
    invoke-virtual {v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attribute",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "lastModifiedTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p2

    check-cast v0, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, v0, v1, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V

    .line 80
    return-void

    .line 82
    :cond_0
    const-string v0, "lastAccessTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    move-object v0, p2

    check-cast v0, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, v0, v1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V

    .line 84
    return-void

    .line 86
    :cond_1
    const-string v0, "creationTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    move-object v0, p2

    check-cast v0, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, v1, v0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V

    .line 88
    return-void

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
