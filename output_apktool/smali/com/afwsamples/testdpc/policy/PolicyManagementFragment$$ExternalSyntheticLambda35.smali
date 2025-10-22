.class public final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public synthetic f$0:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda35;->f$0:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda35;->f$0:Landroid/widget/CheckBox;

    invoke-static {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showLockNowPrompt$1(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
