.class Lcom/google/common/io/MoreFiles$2;
.super Ljava/lang/Object;
.source "MoreFiles.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/MoreFiles;->isRegularFile([Lj$/nio/file/LinkOption;)Lcom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lj$/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$optionsCopy:[Lj$/nio/file/LinkOption;


# direct methods
.method constructor <init>([Lj$/nio/file/LinkOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$optionsCopy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lcom/google/common/io/MoreFiles$2;->val$optionsCopy:[Lj$/nio/file/LinkOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lj$/nio/file/Path;)Z
    .locals 1
    .param p1, "input"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$2;->val$optionsCopy:[Lj$/nio/file/LinkOption;

    invoke-static {p1, v0}, Lj$/nio/file/Files;->isRegularFile(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .line 369
    check-cast p1, Lj$/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/google/common/io/MoreFiles$2;->apply(Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$2;->val$optionsCopy:[Lj$/nio/file/LinkOption;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoreFiles.isRegularFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
