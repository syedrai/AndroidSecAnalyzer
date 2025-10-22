.class public final synthetic Landroid/support/v7/app/AppCompatDelegate$SerialExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;

.field public synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor$$ExternalSyntheticLambda0;->f$0:Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;

    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor$$ExternalSyntheticLambda0;->f$0:Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;->lambda$execute$0$android-support-v7-app-AppCompatDelegate$SerialExecutor(Ljava/lang/Runnable;)V

    return-void
.end method
