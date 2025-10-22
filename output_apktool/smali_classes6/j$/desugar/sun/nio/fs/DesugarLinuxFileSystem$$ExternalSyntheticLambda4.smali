.class public final synthetic Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/nio/file/PathMatcher;


# instance fields
.field public final synthetic f$0:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;->f$0:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final matches(Lj$/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;->f$0:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->lambda$getPathMatcher$0(Ljava/util/regex/Pattern;Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method
