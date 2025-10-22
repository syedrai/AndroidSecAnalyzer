.class public Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;
.super Landroid/app/Fragment;
.source "ResetPasswordWithTokenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "password-token"

.field private static final REQUEST_CONFIRM_CREDENTIAL:I = 0x1

.field private static final TOKEN_NAME:Ljava/lang/String; = "token"


# instance fields
.field private mBtnActivateToken:Landroid/widget/Button;

.field private mBtnNewToken:Landroid/widget/Button;

.field private mBtnRemoveToken:Landroid/widget/Button;

.field private mBtnSetPassword:Landroid/widget/Button;

.field private mChkDoNotAllowOtherAdminsChange:Landroid/widget/CheckBox;

.field private mChkDoNotRequirePasswordOnBoot:Landroid/widget/CheckBox;

.field private mChkRequireEntry:Landroid/widget/CheckBox;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEdtPassword:Landroid/widget/EditText;

.field private mEdtToken:Landroid/widget/EditText;

.field private mEdtTokenStatus:Landroid/widget/EditText;

.field private mEdtUseToken:Landroid/widget/EditText;

.field private mKeyguardMgr:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private activatePasswordToken()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mKeyguardMgr:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    :cond_0
    return-void
.end method

.method private createNewPasswordToken()V
    .locals 3

    .line 188
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->generateRandomPasswordToken()[B

    move-result-object v0

    .line 189
    .local v0, "token":[B
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    sget v1, Lcom/afwsamples/testdpc/R$string;->set_password_reset_token_failed:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    .line 191
    return-void

    .line 193
    :cond_0
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->savePasswordResetTokenToPreference([B)V

    .line 194
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->reloadTokenInfomation()V

    .line 195
    return-void
.end method

.method private generateRandomPasswordToken()[B
    .locals 2

    .line 180
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 183
    const/4 v1, 0x0

    return-object v1
.end method

.method public static loadPasswordResetTokenFromPreference(Landroid/content/Context;)[B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "directBootContext":Landroid/content/Context;
    const-string v1, "password-token"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "tokenString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 77
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v3

    return-object v3

    .line 79
    :cond_0
    return-object v3
.end method

.method private reloadTokenInfomation()V
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->loadPasswordResetTokenFromPreference(Landroid/content/Context;)[B

    move-result-object v0

    .line 103
    .local v0, "token":[B
    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->reset_password_token_none:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 106
    .local v1, "tokenString":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtToken:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtUseToken:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 109
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v2

    .line 110
    .local v2, "active":Z
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtTokenStatus:Landroid/widget/EditText;

    .line 112
    if-eqz v2, :cond_1

    .line 113
    sget v4, Lcom/afwsamples/testdpc/R$string;->reset_password_token_active:I

    goto :goto_1

    .line 114
    :cond_1
    sget v4, Lcom/afwsamples/testdpc/R$string;->reset_password_token_inactive:I

    .line 111
    :goto_1
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnActivateToken:Landroid/widget/Button;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    return-void
.end method

.method private removePasswordToken()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    sget v0, Lcom/afwsamples/testdpc/R$string;->clear_password_reset_token_failed:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->savePasswordResetTokenToPreference([B)V

    .line 210
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->reloadTokenInfomation()V

    .line 211
    return-void
.end method

.method private resetPasswordWithToken()V
    .locals 8

    .line 214
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtUseToken:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "tokenString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .local v1, "token":[B
    goto :goto_0

    .line 218
    .end local v1    # "token":[B
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    move-object v1, v2

    .line 222
    .local v1, "token":[B
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "password":Ljava/lang/String;
    const/4 v3, 0x0

    .line 224
    .local v3, "flags":I
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkRequireEntry:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    or-int/2addr v3, v4

    .line 225
    nop

    .line 226
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkDoNotRequirePasswordOnBoot:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 227
    const/4 v4, 0x2

    goto :goto_1

    .line 228
    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    .line 229
    nop

    .line 230
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkDoNotAllowOtherAdminsChange:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 231
    const/4 v4, 0x1

    goto :goto_2

    .line 232
    :cond_1
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v3, v4

    .line 234
    if-eqz v1, :cond_3

    .line 235
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 237
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v7

    .line 236
    invoke-virtual {v4, v7, v2, v1, v3}, Landroid/app/admin/DevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v4

    .line 238
    .local v4, "result":Z
    if-eqz v4, :cond_2

    .line 239
    sget v7, Lcom/afwsamples/testdpc/R$string;->reset_password_with_token_succeed:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-virtual {p0, v7, v6}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 241
    :cond_2
    sget v5, Lcom/afwsamples/testdpc/R$string;->reset_password_with_token_failed:I

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    .line 243
    .end local v4    # "result":Z
    :goto_3
    goto :goto_4

    .line 244
    :cond_3
    sget v4, Lcom/afwsamples/testdpc/R$string;->reset_password_no_token:I

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    .line 246
    :goto_4
    return-void
.end method

.method private savePasswordResetTokenToPreference([B)V
    .locals 5
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "directBootContext":Landroid/content/Context;
    const-string v1, "password-token"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 92
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "token"

    if-eqz p1, :cond_0

    .line 93
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 169
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 170
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->reloadTokenInfomation()V

    goto :goto_0

    .line 173
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->activate_reset_password_token_cancelled:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 156
    .local v0, "id":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->btnNewToken:I

    if-ne v0, v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->createNewPasswordToken()V

    goto :goto_0

    .line 158
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->btnRemoveToken:I

    if-ne v0, v1, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->removePasswordToken()V

    goto :goto_0

    .line 160
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->btnActivateToken:I

    if-ne v0, v1, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->activatePasswordToken()V

    goto :goto_0

    .line 162
    :cond_2
    sget v1, Lcom/afwsamples/testdpc/R$id;->btnSetPassword:I

    if-ne v0, v1, :cond_3

    .line 163
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->resetPasswordWithToken()V

    .line 165
    :cond_3
    :goto_0
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

    .line 120
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 122
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mKeyguardMgr:Landroid/app/KeyguardManager;

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutInflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 128
    sget v0, Lcom/afwsamples/testdpc/R$layout;->reset_password_token:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->edtToken:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtToken:Landroid/widget/EditText;

    .line 131
    sget v1, Lcom/afwsamples/testdpc/R$id;->edtUseToken:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtUseToken:Landroid/widget/EditText;

    .line 132
    sget v1, Lcom/afwsamples/testdpc/R$id;->edtTokenStatus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtTokenStatus:Landroid/widget/EditText;

    .line 133
    sget v1, Lcom/afwsamples/testdpc/R$id;->edtPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtPassword:Landroid/widget/EditText;

    .line 135
    sget v1, Lcom/afwsamples/testdpc/R$id;->require_password_entry_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkRequireEntry:Landroid/widget/CheckBox;

    .line 136
    sget v1, Lcom/afwsamples/testdpc/R$id;->dont_require_password_on_boot_checkbox:I

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkDoNotRequirePasswordOnBoot:Landroid/widget/CheckBox;

    .line 138
    sget v1, Lcom/afwsamples/testdpc/R$id;->dont_allow_other_admins_change_password:I

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkDoNotAllowOtherAdminsChange:Landroid/widget/CheckBox;

    .line 141
    sget v1, Lcom/afwsamples/testdpc/R$id;->btnNewToken:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnNewToken:Landroid/widget/Button;

    .line 142
    sget v1, Lcom/afwsamples/testdpc/R$id;->btnRemoveToken:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnRemoveToken:Landroid/widget/Button;

    .line 143
    sget v1, Lcom/afwsamples/testdpc/R$id;->btnActivateToken:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnActivateToken:Landroid/widget/Button;

    .line 144
    sget v1, Lcom/afwsamples/testdpc/R$id;->btnSetPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnSetPassword:Landroid/widget/Button;

    .line 146
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnNewToken:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnRemoveToken:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnActivateToken:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnSetPassword:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 69
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->reloadTokenInfomation()V

    .line 70
    return-void
.end method
