.class public final synthetic Lcom/google/common/io/TempFileCreator$JavaNioCreator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/io/TempFileCreator$JavaNioCreator$PermissionSupplier;


# instance fields
.field public synthetic f$0:Lj$/nio/file/attribute/FileAttribute;


# direct methods
.method public synthetic constructor <init>(Lj$/nio/file/attribute/FileAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/io/TempFileCreator$JavaNioCreator$$ExternalSyntheticLambda3;->f$0:Lj$/nio/file/attribute/FileAttribute;

    return-void
.end method


# virtual methods
.method public final get()Lj$/nio/file/attribute/FileAttribute;
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/TempFileCreator$JavaNioCreator$$ExternalSyntheticLambda3;->f$0:Lj$/nio/file/attribute/FileAttribute;

    invoke-static {v0}, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->lambda$userPermissions$0(Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/attribute/FileAttribute;

    move-result-object v0

    return-object v0
.end method
