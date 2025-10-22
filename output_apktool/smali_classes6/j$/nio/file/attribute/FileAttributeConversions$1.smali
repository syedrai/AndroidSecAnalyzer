.class final Lj$/nio/file/attribute/FileAttributeConversions$1;
.super Ljava/lang/Object;
.source "FileAttributeConversions.java"

# interfaces
.implements Lj$/nio/file/attribute/FileAttribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileAttribute;)Lj$/nio/file/attribute/FileAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/nio/file/attribute/FileAttribute<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$attribute:Ljava/nio/file/attribute/FileAttribute;


# direct methods
.method constructor <init>(Ljava/nio/file/attribute/FileAttribute;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lj$/nio/file/attribute/FileAttributeConversions$1;->val$attribute:Ljava/nio/file/attribute/FileAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "posix:permissions"

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lj$/nio/file/attribute/FileAttributeConversions$1;->val$attribute:Ljava/nio/file/attribute/FileAttribute;

    .line 41
    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lj$/nio/file/FileApiFlips;->flipPosixPermissionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
