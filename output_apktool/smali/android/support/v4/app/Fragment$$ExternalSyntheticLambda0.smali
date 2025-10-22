.class public final synthetic Landroid/support/v4/app/Fragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Landroid/support/v4/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/Fragment$$ExternalSyntheticLambda0;->f$0:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/Fragment$$ExternalSyntheticLambda0;->f$0:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->lambda$performCreateView$0$android-support-v4-app-Fragment()V

    return-void
.end method
