.class Landroidx/preference/ListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/ListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/ListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/preference/ListPreferenceDialogFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/preference/ListPreferenceDialogFragmentCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 89
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/ListPreferenceDialogFragmentCompat;

    iput p2, v0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 93
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/ListPreferenceDialogFragmentCompat;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    return-void
.end method
