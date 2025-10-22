.class public abstract Landroidx/fragment/app/strictmode/Violation;
.super Ljava/lang/RuntimeException;
.source "Violation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/fragment/app/strictmode/Violation;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "fragment",
        "Landroid/support/v4/app/Fragment;",
        "violationMessage",
        "",
        "<init>",
        "(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V",
        "getFragment",
        "()Landroid/support/v4/app/Fragment;",
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
.field private final fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "violationMessage"    # Ljava/lang/String;

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Landroidx/fragment/app/strictmode/Violation;->fragment:Landroid/support/v4/app/Fragment;

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 26
    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/strictmode/Violation;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 25
    iget-object v0, p0, Landroidx/fragment/app/strictmode/Violation;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method
