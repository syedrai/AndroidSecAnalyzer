.class public Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;
.super Landroid/app/Fragment;
.source "SetSupportMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final TYPE_LONG:I = 0x1

.field public static final TYPE_SHORT:I


# instance fields
.field private mAdmin:Landroid/content/ComponentName;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mMessageType:I

.field private mSupportMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    return-void
.end method

.method public static newInstance(I)Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;
    .locals 3
    .param p0, "messageType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;-><init>()V

    .line 47
    .local v0, "fragment":Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "message_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 90
    .local v1, "id":I
    sget v2, Lcom/afwsamples/testdpc/R$id;->set_default_message:I

    if-ne v1, v2, :cond_1

    .line 91
    nop

    .line 93
    iget v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    if-nez v2, :cond_0

    .line 94
    sget v2, Lcom/afwsamples/testdpc/R$string;->default_short_message:I

    goto :goto_0

    .line 95
    :cond_0
    sget v2, Lcom/afwsamples/testdpc/R$string;->default_long_message:I

    .line 92
    :goto_0
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 96
    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$id;->set_message:I

    if-ne v1, v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_2
    sget v2, Lcom/afwsamples/testdpc/R$id;->clear_message:I

    if-ne v1, v2, :cond_3

    .line 99
    const/4 v0, 0x0

    .line 101
    :cond_3
    :goto_1
    iget v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    if-nez v2, :cond_4

    .line 102
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 106
    :goto_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "message_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 63
    iget v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    if-nez v2, :cond_1

    .line 64
    sget v2, Lcom/afwsamples/testdpc/R$string;->set_short_support_message:I

    goto :goto_0

    .line 65
    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$string;->set_long_support_message:I

    .line 62
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 66
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 67
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    .line 68
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

    .line 73
    sget v0, Lcom/afwsamples/testdpc/R$layout;->set_support_message:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "root":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->set_default_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v1, Lcom/afwsamples/testdpc/R$id;->set_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v1, Lcom/afwsamples/testdpc/R$id;->clear_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v1, Lcom/afwsamples/testdpc/R$id;->message_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    .line 78
    iget v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    return-object v0
.end method
