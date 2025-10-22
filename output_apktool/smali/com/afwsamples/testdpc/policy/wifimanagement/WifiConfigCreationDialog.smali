.class public Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
.super Landroid/app/DialogFragment;
.source "WifiConfigCreationDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;
    }
.end annotation


# static fields
.field public static final SECURITY_TYPE_NONE:I = 0x0

.field public static final SECURITY_TYPE_WEP:I = 0x1

.field public static final SECURITY_TYPE_WPA:I = 0x2


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

.field private mOldConfig:Landroid/net/wifi/WifiConfiguration;

.field private mPasswordDirty:Z

.field private mPasswordText:Landroid/widget/EditText;

.field private mPasswordView:Landroid/view/View;

.field private mSaveButton:Landroid/widget/Button;

.field private mSecurityChoicesSpinner:Landroid/widget/Spinner;

.field private mSecurityType:I

.field private mSsidText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private enableSaveButtonIfAppropriate()V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    .line 247
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordDirty:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 249
    .end local v0    # "enabled":Z
    .local v1, "enabled":Z
    :goto_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    :cond_3
    return-void
.end method

.method private getQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v4, "\""

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iput v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    goto :goto_0

    .line 166
    :cond_1
    iput v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iput v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityChoicesSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 174
    return-void
.end method

.method public static newInstance()Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    .locals 2

    .line 64
    new-instance v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;-><init>()V

    .line 66
    .local v0, "dialog":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordDirty:Z

    .line 67
    return-object v0
.end method

.method public static newInstance(Landroid/net/wifi/WifiConfiguration;Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    .locals 3
    .param p0, "oldConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "listener"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldConfig",
            "listener"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;-><init>()V

    .line 73
    .local v0, "dialog":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    iput-object p0, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    .line 74
    iput-object p1, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    .line 76
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordDirty:Z

    .line 81
    return-object v0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "msgResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgResId"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    return-void
.end method

.method private updateConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 177
    iget v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 202
    :pswitch_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 203
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 204
    .local v0, "length":I
    if-eqz v0, :cond_4

    .line 205
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "password":Ljava/lang/String;
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 209
    :cond_0
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 183
    .end local v0    # "length":I
    .end local v1    # "password":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 184
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 185
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 186
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 187
    .restart local v0    # "length":I
    if-eqz v0, :cond_3

    .line 188
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .restart local v1    # "password":Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_2

    .line 191
    :cond_1
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, v3, v2

    goto :goto_0

    .line 194
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 196
    :goto_0
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 199
    .end local v0    # "length":I
    .end local v1    # "password":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 179
    :pswitch_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 180
    nop

    .line 215
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 272
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordDirty:Z

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->enableSaveButtonIfAppropriate()V

    .line 275
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    .line 262
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;->onCancel()V

    .line 155
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 131
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 132
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 133
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->updateConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)V

    .line 134
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    .line 138
    .local v1, "success":Z
    if-eqz v1, :cond_1

    sget v2, Lcom/afwsamples/testdpc/R$string;->wifi_config_success:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$string;->wifi_config_fail:I

    :goto_0
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->showToast(I)V

    .line 140
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "success":Z
    :cond_2
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->dismiss()V

    .line 141
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 88
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/afwsamples/testdpc/R$layout;->wifi_config_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "dialogView":Landroid/view/View;
    sget v3, Lcom/afwsamples/testdpc/R$id;->password_layout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordView:Landroid/view/View;

    .line 90
    sget v3, Lcom/afwsamples/testdpc/R$id;->ssid:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    .line 91
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    sget v3, Lcom/afwsamples/testdpc/R$id;->password:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    .line 93
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    sget v3, Lcom/afwsamples/testdpc/R$id;->security:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityChoicesSpinner:Landroid/widget/Spinner;

    .line 96
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityChoicesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 97
    nop

    .line 99
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$array;->wifi_security_choices:I

    .line 98
    const v5, 0x1090008

    invoke-static {v3, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .line 100
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 101
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityChoicesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 102
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->initialize()V

    .line 104
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/afwsamples/testdpc/R$string;->add_network:I

    .line 106
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/afwsamples/testdpc/R$string;->wifi_save:I

    .line 109
    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/afwsamples/testdpc/R$string;->wifi_cancel:I

    .line 110
    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 112
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;->onDismiss()V

    .line 148
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "pos",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 223
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->security:I

    if-ne v0, v1, :cond_1

    .line 224
    iput p3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    .line 225
    iget v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    .line 231
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    sget v1, Lcom/afwsamples/testdpc/R$string;->minimum_limit:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->wifi_unchanged:I

    .line 230
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    nop

    .line 239
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->enableSaveButtonIfAppropriate()V

    .line 240
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 117
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 118
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 119
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 123
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    .line 267
    return-void
.end method
