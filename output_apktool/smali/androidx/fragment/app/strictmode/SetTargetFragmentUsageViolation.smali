.class public final Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;
.super Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;
.source "SetTargetFragmentUsageViolation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;",
        "Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;",
        "fragment",
        "Landroid/support/v4/app/Fragment;",
        "targetFragment",
        "requestCode",
        "",
        "<init>",
        "(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;I)V",
        "getTargetFragment",
        "()Landroid/support/v4/app/Fragment;",
        "getRequestCode",
        "()I",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final requestCode:I

.field private final targetFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "requestCode"    # I

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    nop

    .line 30
    nop

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to set target fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with request code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    nop

    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    nop

    .line 31
    const-string v1, " for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    nop

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->targetFragment:Landroid/support/v4/app/Fragment;

    .line 27
    iput p3, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->requestCode:I

    .line 22
    return-void
.end method


# virtual methods
.method public final getRequestCode()I
    .locals 1

    .line 27
    iget v0, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->requestCode:I

    return v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 25
    iget-object v0, p0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;->targetFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method
