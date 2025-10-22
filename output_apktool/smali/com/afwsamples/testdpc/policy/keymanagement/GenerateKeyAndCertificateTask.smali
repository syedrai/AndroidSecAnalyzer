.class public Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;
.super Landroid/os/AsyncTask;
.source "GenerateKeyAndCertificateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/security/AttestedKeyPair;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PolicyManagement"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAdminComponentName:Landroid/content/ComponentName;

.field final mAlias:Ljava/lang/String;

.field private final mAttestationChallenge:[B

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mGenerateEcKey:Z

.field private final mIdAttestationFlags:I

.field final mIsUserSelectable:Z

.field private final mUseStrongBox:Z


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;Landroid/app/Activity;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "params"    # Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "activity",
            "admin"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    iget-object v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    .line 67
    iget-boolean v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->isUserSelectable:Z

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mIsUserSelectable:Z

    .line 68
    iget-object v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->attestationChallenge:[B

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAttestationChallenge:[B

    .line 69
    iget v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->idAttestationFlags:I

    iput v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mIdAttestationFlags:I

    .line 70
    iget-boolean v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->useStrongBox:Z

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mUseStrongBox:Z

    .line 71
    iget-boolean v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->generateEcKey:Z

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mGenerateEcKey:Z

    .line 72
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    .line 73
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAdminComponentName:Landroid/content/ComponentName;

    .line 74
    nop

    .line 75
    const-string v0, "device_policy"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 76
    return-void
.end method

.method private showKeyGenerationResult(Landroid/security/AttestedKeyPair;)V
    .locals 17
    .param p1, "keyPair"    # Landroid/security/AttestedKeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyPair"
        }
    .end annotation

    .line 175
    move-object/from16 v1, p0

    const-string v0, "\n"

    iget-object v2, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 178
    :cond_0
    iget-object v2, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    .line 179
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$layout;->key_generation_result:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, "keyGenResultView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/security/AttestedKeyPair;->getAttestationRecord()Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, "attestationChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    sget v5, Lcom/afwsamples/testdpc/R$id;->attestation_details:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 184
    .local v5, "attestationDetailsView":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 186
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v6, "attestationDetails":Ljava/lang/StringBuilder;
    new-instance v7, Lcom/afwsamples/testdpc/policy/utils/Attestation;

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/security/AttestedKeyPair;->getAttestationRecord()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-direct {v7, v8}, Lcom/afwsamples/testdpc/policy/utils/Attestation;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 190
    .local v7, "attestationRecord":Lcom/afwsamples/testdpc/policy/utils/Attestation;
    iget-object v8, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    sget v10, Lcom/afwsamples/testdpc/R$string;->attestation_challenge_description:I

    .line 191
    invoke-virtual {v8, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/afwsamples/testdpc/policy/utils/Attestation;->getAttestationChallenge()[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v7}, Lcom/afwsamples/testdpc/policy/utils/Attestation;->getTeeEnforced()Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    move-result-object v8

    .line 194
    .local v8, "teeList":Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;
    if-eqz v8, :cond_1

    .line 195
    iget-object v10, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    sget v11, Lcom/afwsamples/testdpc/R$string;->device_serial_number_description:I

    .line 196
    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 195
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v8}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v10, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    sget v11, Lcom/afwsamples/testdpc/R$string;->device_imei_description:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v8}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getImei()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v10, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    sget v11, Lcom/afwsamples/testdpc/R$string;->device_meid_description:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v8}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getMeid()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v10, "Individual Attestation:\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v8}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->isIndividualAttestation()Z

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 208
    .local v0, "root":Ljava/security/cert/Certificate;
    nop

    .line 210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const-string v12, "%s: %d\n"

    iget-object v13, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    sget v14, Lcom/afwsamples/testdpc/R$string;->attestation_chain_length_description:I

    .line 212
    invoke-virtual {v13, v14}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/security/AttestedKeyPair;->getAttestationRecord()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v13, v9, v16

    aput-object v14, v9, v10

    .line 209
    invoke-static {v11, v12, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 208
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    nop

    .line 217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v11, "%s\n%s\n"

    iget-object v12, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    sget v13, Lcom/afwsamples/testdpc/R$string;->attestation_root_description:I

    .line 219
    invoke-virtual {v12, v13}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object v13, v0

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 220
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v13

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v12, v14, v16

    aput-object v13, v14, v10

    .line 216
    invoke-static {v9, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 215
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "root":Ljava/security/cert/Certificate;
    .end local v6    # "attestationDetails":Ljava/lang/StringBuilder;
    .end local v7    # "attestationRecord":Lcom/afwsamples/testdpc/policy/utils/Attestation;
    .end local v8    # "teeList":Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    const-string v6, "PolicyManagement"

    const-string v7, "Failed parsing attestation record"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const-string v6, "<INVALID>"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .end local v0    # "e":Ljava/security/cert/CertificateParsingException;
    :goto_0
    goto :goto_1

    .line 228
    :cond_2
    const-string v0, "<none>"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, v1, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->key_generation_successful:I

    .line 232
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    const v6, 0x104000a

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 236
    return-void

    .line 176
    .end local v2    # "keyGenResultView":Landroid/view/View;
    .end local v3    # "attestationChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v5    # "attestationDetailsView":Landroid/widget/TextView;
    :cond_3
    :goto_2
    return-void
.end method

.method private showToast(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgId",
            "extra"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    .line 168
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/security/AttestedKeyPair;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voids"
        }
    .end annotation

    .line 82
    const-string v0, "PolicyManagement"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "SHA-256"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 85
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mUseStrongBox:Z

    .line 86
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 88
    .local v2, "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAttestationChallenge:[B

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAttestationChallenge:[B

    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 92
    :cond_0
    iget-boolean v4, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mGenerateEcKey:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 93
    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_0

    .line 96
    :cond_1
    new-array v4, v5, [Ljava/lang/String;

    const-string v7, "PSS"

    aput-object v7, v4, v6

    const-string v6, "PKCS1"

    aput-object v6, v4, v3

    .line 97
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 99
    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 103
    :goto_0
    iget-boolean v3, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mGenerateEcKey:Z

    if-eqz v3, :cond_2

    .line 104
    const-string v3, "EC"

    .local v3, "keyAlgorithm":Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    :cond_2
    const-string v3, "RSA"

    .line 109
    .restart local v3    # "keyAlgorithm":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 110
    .local v4, "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAdminComponentName:Landroid/content/ComponentName;

    iget v8, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mIdAttestationFlags:I

    .line 111
    invoke-virtual {v6, v7, v3, v4, v8}, Landroid/app/admin/DevicePolicyManager;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;I)Landroid/security/AttestedKeyPair;

    move-result-object v6

    .line 114
    .local v6, "keyPair":Landroid/security/AttestedKeyPair;
    if-nez v6, :cond_3

    .line 115
    return-object v1

    .line 118
    :cond_3
    invoke-virtual {v6}, Landroid/security/AttestedKeyPair;->getAttestationRecord()Ljava/util/List;

    move-result-object v7

    .line 119
    .local v7, "attestationRecord":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v7, :cond_5

    .line 120
    const-string v8, "Attestation record:"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/Certificate;

    .line 122
    .local v9, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-static {v10, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    nop

    .end local v9    # "cert":Ljava/security/cert/Certificate;
    goto :goto_2

    .line 124
    :cond_4
    const-string v5, "End of attestation record."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_5
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    const-string v8, "CN=TestDPC, O=Android, C=US"

    invoke-direct {v5, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 129
    .local v5, "subject":Ljavax/security/auth/x500/X500Principal;
    nop

    .line 130
    invoke-virtual {v6}, Landroid/security/AttestedKeyPair;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v8

    invoke-static {v8, v5, v5}, Lcom/afwsamples/testdpc/policy/utils/CertificateUtils;->createCertificate(Ljava/security/KeyPair;Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 132
    .local v8, "selfSigned":Ljava/security/cert/X509Certificate;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v9, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v11, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAdminComponentName:Landroid/content/ComponentName;

    iget-object v12, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mIsUserSelectable:Z

    invoke-virtual {v10, v11, v12, v9, v13}, Landroid/app/admin/DevicePolicyManager;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/StrongBoxUnavailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_6

    .line 137
    return-object v1

    .line 140
    :cond_6
    return-object v6

    .line 145
    .end local v2    # "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    .end local v4    # "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v5    # "subject":Ljavax/security/auth/x500/X500Principal;
    .end local v6    # "keyPair":Landroid/security/AttestedKeyPair;
    .end local v7    # "attestationRecord":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v8    # "selfSigned":Ljava/security/cert/X509Certificate;
    .end local v9    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Not permitted to generate key"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 143
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 144
    .local v2, "e":Landroid/security/keystore/StrongBoxUnavailableException;
    const-string v3, "StrongBox unavailable"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/security/keystore/StrongBoxUnavailableException;
    goto :goto_4

    .line 141
    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3

    :catch_4
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v3, "Failed to create certificate"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    nop

    .line 149
    :goto_5
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "voids"
        }
    .end annotation

    .line 51
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->doInBackground([Ljava/lang/Void;)Landroid/security/AttestedKeyPair;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/security/AttestedKeyPair;)V
    .locals 2
    .param p1, "keyPair"    # Landroid/security/AttestedKeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyPair"
        }
    .end annotation

    .line 154
    if-eqz p1, :cond_0

    .line 155
    sget v0, Lcom/afwsamples/testdpc/R$string;->key_generation_successful:I

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->showToast(ILjava/lang/String;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->showKeyGenerationResult(Landroid/security/AttestedKeyPair;)V

    goto :goto_0

    .line 158
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->key_generation_failed:I

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->showToast(ILjava/lang/String;)V

    .line 160
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "keyPair"
        }
    .end annotation

    .line 51
    check-cast p1, Landroid/security/AttestedKeyPair;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->onPostExecute(Landroid/security/AttestedKeyPair;)V

    return-void
.end method
