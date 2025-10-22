.class public Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;
.super Landroid/app/Fragment;
.source "PrivateDnsModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field static final PRIVATE_DNS_MODE_OFF:I = 0x1

.field static final PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field static final PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field static final PRIVATE_DNS_MODE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PDNS_FRAG"


# instance fields
.field private mCurrentResolver:Landroid/widget/EditText;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

.field private mSelectedMode:I

.field private mSetButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$0zQ-kY21wY3W1xXXsh93_5Z4_t4(Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->lambda$setPrivateDnsMode$0(I[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getPrivateDnsHost()Ljava/lang/String;
    .locals 3

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "PDNS_FRAG"

    const-string v2, "Failure getting host"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/lang/SecurityException;
    const-string v0, "<error getting resolver>"

    return-object v0
.end method

.method private getPrivateDnsMode()I
    .locals 3

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "PDNS_FRAG"

    const-string v2, "Failure getting current mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v0    # "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$setPrivateDnsMode$0(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    return-void
.end method

.method private setPrivateDnsMode(ILjava/lang/String;)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "resolver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "resolver"
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "Setting mode %d host %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PDNS_FRAG"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    .line 144
    .local v5, "component":Landroid/content/ComponentName;
    new-instance v3, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v8, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;)V

    move v6, p1

    move-object v7, p2

    .end local p1    # "mode":I
    .end local p2    # "resolver":Ljava/lang/String;
    .local v6, "mode":I
    .local v7, "resolver":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;ILjava/lang/String;Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;)V

    new-array p1, v2, [Ljava/lang/Void;

    .line 152
    invoke-virtual {v3, p1}, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method

.method private updateSelectedMode(I)V
    .locals 3
    .param p1, "checkedId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedId"
        }
    .end annotation

    .line 105
    sget v0, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_off:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 106
    iput v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 107
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 108
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_automatic:I

    if-ne p1, v0, :cond_1

    .line 109
    const/4 v0, 0x2

    iput v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 110
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 111
    :cond_1
    sget v0, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_specific_host:I

    if-ne p1, v0, :cond_2

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 113
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 115
    :cond_2
    iput v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 116
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    :goto_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "checkedId"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->updateSelectedMode(I)V

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mCurrentResolver:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "resolver":Ljava/lang/String;
    iget v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->setPrivateDnsMode(ILjava/lang/String;)V

    .line 66
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

    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 60
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

    .line 76
    sget v0, Lcom/afwsamples/testdpc/R$layout;->private_dns_mode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_apply:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v1, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_selection:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    .line 81
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getPrivateDnsMode()I

    move-result v1

    .line 82
    .local v1, "currentMode":I
    packed-switch v1, :pswitch_data_0

    .line 93
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    sget v3, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_unknown:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    sget v3, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_specific_host:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 91
    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    sget v3, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_automatic:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 88
    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    sget v3, Lcom/afwsamples/testdpc/R$id;->private_dns_mode_off:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 85
    nop

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 97
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->updateSelectedMode(I)V

    .line 99
    sget v2, Lcom/afwsamples/testdpc/R$id;->private_dns_resolver:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mCurrentResolver:Landroid/widget/EditText;

    .line 100
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mCurrentResolver:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getPrivateDnsHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
