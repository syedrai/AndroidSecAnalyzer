.class public Lcom/afwsamples/testdpc/policy/EsimControlFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "EsimControlFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACTION_DELETE_ESIM:Ljava/lang/String; = "com.afwsamples.testdpc.esim_delete"

.field private static final ACTION_DOWNLOAD_ESIM:Ljava/lang/String; = "com.afwsamples.testdpc.esim_download"

.field private static final DELETE_ESIM:Ljava/lang/String; = "delete_esim"

.field private static final DOWNLOAD_ESIM:Ljava/lang/String; = "download_esim"

.field private static final GET_MANAGED_ESIM:Ljava/lang/String; = "get_managed_esim"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteESIMReceiver:Landroid/content/BroadcastReceiver;

.field private mDeleteEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDownloadESIMReceiver:Landroid/content/BroadcastReceiver;

.field private mDownloadEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mGetManagedEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;


# direct methods
.method public static synthetic $r8$lambda$GGHDoCq4zEKSbGeEXvPpSfnUjQ4(Lcom/afwsamples/testdpc/policy/EsimControlFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->lambda$showDownloadEsimUi$0(Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_pSoLthi6Tal0rcw902rds3AaeU(Lcom/afwsamples/testdpc/policy/EsimControlFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->lambda$showDeleteEsimUi$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDeleteESIMReceiver(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDeleteESIMReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDownloadESIMReceiver(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDownloadESIMReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEuiccManager(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)Landroid/telephony/euicc/EuiccManager;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetResultText(Lcom/afwsamples/testdpc/policy/EsimControlFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getResultText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/EsimControlFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDownloadESIMReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;-><init>(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDeleteESIMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private deleteEsim(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subId"
        }
    .end annotation

    .line 282
    nop

    .line 283
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDeleteESIMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.afwsamples.testdpc.esim_delete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 287
    nop

    .line 289
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 293
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v1, p1, v0}, Landroid/telephony/euicc/EuiccManager;->deleteSubscription(ILandroid/app/PendingIntent;)V

    .line 295
    const-string/jumbo v1, "started deleting eSIM"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->showToast(Ljava/lang/String;I)V

    .line 296
    return-void
.end method

.method private getResultText(I)Ljava/lang/String;
    .locals 2
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultCode"
        }
    .end annotation

    .line 64
    if-nez p1, :cond_0

    .line 65
    const-string v0, "EMBEDDED_SUBSCRIPTION_RESULT_OK"

    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 67
    const-string v0, "EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR"

    return-object v0

    .line 68
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 69
    const-string v0, "EMBEDDED_SUBSCRIPTION_RESULT_ERROR"

    return-object v0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showDeleteEsimUi$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "subIdEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 249
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "subId":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->deleteEsim(I)V

    .line 251
    return-void
.end method

.method private synthetic lambda$showDownloadEsimUi$0(Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "activationCodeEditText"    # Landroid/widget/EditText;
    .param p2, "activateAfterDownloadCheckBox"    # Landroid/widget/CheckBox;
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 227
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "activationCodeString":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->startEsimDownload(Ljava/lang/String;Z)V

    .line 229
    return-void
.end method

.method static synthetic lambda$showManagedEsimUi$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 195
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private showDeleteEsimUi()V
    .locals 6

    .line 235
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    nop

    .line 240
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 243
    .local v1, "subIdEditText":Landroid/widget/EditText;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->delete_esim_dialog_title:I

    .line 244
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 245
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/EsimControlFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/EsimControlFragment;Landroid/widget/EditText;)V

    .line 246
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 252
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 254
    return-void

    .line 236
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "subIdEditText":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showDownloadEsimUi()V
    .locals 7

    .line 210
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    nop

    .line 215
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->esim_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->activation_code:I

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 218
    .local v1, "activationCodeEditText":Landroid/widget/EditText;
    sget v3, Lcom/afwsamples/testdpc/R$id;->activate_esim:I

    .line 219
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 221
    .local v3, "activateAfterDownloadCheckBox":Landroid/widget/CheckBox;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/afwsamples/testdpc/R$string;->esim_activation_code:I

    .line 222
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 223
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/afwsamples/testdpc/policy/EsimControlFragment$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v1, v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$$ExternalSyntheticLambda3;-><init>(Lcom/afwsamples/testdpc/policy/EsimControlFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    .line 224
    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 230
    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 232
    return-void

    .line 211
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "activationCodeEditText":Landroid/widget/EditText;
    .end local v3    # "activateAfterDownloadCheckBox":Landroid/widget/CheckBox;
    :cond_1
    :goto_0
    return-void
.end method

.method private showManagedEsimUi()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v0

    .line 193
    .local v0, "managedSubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/afwsamples/testdpc/R$string;->get_managed_esim_dialog_title:I

    .line 194
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 195
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/EsimControlFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/EsimControlFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 197
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "duration"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 201
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    sget-object v1, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing toast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 207
    return-void

    .line 202
    :cond_1
    :goto_0
    sget-object v1, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not toasting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' as activity is finishing or finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method private startEsimDownload(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "activationCode"    # Ljava/lang/String;
    .param p2, "switchAfterDownload"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activationCode",
            "switchAfterDownload"
        }
    .end annotation

    .line 257
    nop

    .line 258
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDownloadESIMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.afwsamples.testdpc.esim_download"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 262
    nop

    .line 263
    invoke-static {p1}, Landroid/telephony/euicc/DownloadableSubscription;->forActivationCode(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription;

    move-result-object v0

    .line 264
    .local v0, "downloadableSubscription":Landroid/telephony/euicc/DownloadableSubscription;
    nop

    .line 266
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    const/4 v3, 0x0

    const/high16 v4, 0x3000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 270
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v2, v0, p2, v1}, Landroid/telephony/euicc/EuiccManager;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;)V

    .line 271
    sget-object v2, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "started downloading eSIM, activationCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", switchAfterDownload : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string/jumbo v2, "started downloading eSIM"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->showToast(Ljava/lang/String;I)V

    .line 279
    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 165
    const/4 v0, 0x1

    return v0
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

    .line 76
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 77
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 78
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->manage_esim:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 79
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "savedInstanceState",
            "rootKey"
        }
    .end annotation

    .line 151
    sget v0, Lcom/afwsamples/testdpc/R$xml;->esim_control_preferences:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->addPreferencesFromResource(I)V

    .line 153
    const-string v0, "download_esim"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDownloadEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 154
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDownloadEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    const-string v0, "delete_esim"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDeleteEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 157
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mDeleteEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 159
    const-string v0, "get_managed_esim"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mGetManagedEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 160
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->mGetManagedEsimPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "newValue"
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "get_managed_esim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "download_esim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "delete_esim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 188
    return v2

    .line 185
    :pswitch_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->showManagedEsimUi()V

    .line 186
    return v3

    .line 182
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->showDeleteEsimUi()V

    .line 183
    return v3

    .line 179
    :pswitch_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->showDownloadEsimUi()V

    .line 180
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x42e4539a -> :sswitch_2
        0x1dfaba9 -> :sswitch_1
        0x41a5313b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
