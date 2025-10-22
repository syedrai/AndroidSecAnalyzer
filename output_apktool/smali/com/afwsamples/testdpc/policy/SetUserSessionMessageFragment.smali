.class public Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;
.super Landroid/app/Fragment;
.source "SetUserSessionMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SetUserSessionMessage"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEndSessionMessage:Landroid/widget/EditText;

.field private mStartSessionMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "startSessionMessage":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 69
    .local v1, "endSessionMessage":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 70
    .local v2, "id":I
    sget v3, Lcom/afwsamples/testdpc/R$id;->set_message:I

    if-ne v2, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mStartSessionMessage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 72
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mEndSessionMessage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_0
    sget v3, Lcom/afwsamples/testdpc/R$id;->clear_message:I

    if-ne v2, v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mStartSessionMessage:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mEndSessionMessage:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v0}, Landroid/app/admin/DevicePolicyManager;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v1}, Landroid/app/admin/DevicePolicyManager;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->set_user_session_message:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 49
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 55
    sget v0, Lcom/afwsamples/testdpc/R$layout;->set_user_session_message:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "root":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->set_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v1, Lcom/afwsamples/testdpc/R$id;->clear_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v1, Lcom/afwsamples/testdpc/R$id;->start_session_message_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mStartSessionMessage:Landroid/widget/EditText;

    .line 59
    sget v1, Lcom/afwsamples/testdpc/R$id;->end_session_message_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mEndSessionMessage:Landroid/widget/EditText;

    .line 60
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mStartSessionMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mEndSessionMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object v0
.end method
