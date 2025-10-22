.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForGeneratedKeyAlias(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$customChallengeInput:Landroid/widget/EditText;

.field final synthetic val$deviceBrandAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$deviceImeiAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$deviceMeidAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$deviceSerialAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$ecKeyCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$includeAttestationChallengeCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$useIndividualAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$useStrongBoxCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$userSelectableCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$input",
            "val$userSelectableCheckbox",
            "val$includeAttestationChallengeCheckbox",
            "val$customChallengeInput",
            "val$deviceBrandAttestationCheckbox",
            "val$deviceSerialAttestationCheckbox",
            "val$deviceImeiAttestationCheckbox",
            "val$deviceMeidAttestationCheckbox",
            "val$useIndividualAttestationCheckbox",
            "val$useStrongBoxCheckbox",
            "val$ecKeyCheckbox"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3296
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$userSelectableCheckbox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$includeAttestationChallengeCheckbox:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$customChallengeInput:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$deviceBrandAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$deviceSerialAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$deviceImeiAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p9, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$deviceMeidAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p10, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$useIndividualAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p11, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$useStrongBoxCheckbox:Landroid/widget/CheckBox;

    iput-object p12, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$ecKeyCheckbox:Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 3299
    new-instance v0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;-><init>()V

    .line 3301
    .local v0, "paramsBuilder":Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setAlias(Ljava/lang/String;)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3302
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$userSelectableCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setIsUserSelectable(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3304
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$includeAttestationChallengeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3305
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$customChallengeInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3306
    .local v1, "customChallenge":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 3307
    .local v2, "decodedChallenge":[B
    invoke-virtual {v0, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setAttestationChallenge([B)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3310
    .end local v1    # "customChallenge":Ljava/lang/String;
    .end local v2    # "decodedChallenge":[B
    :cond_0
    const/4 v1, 0x0

    .line 3311
    .local v1, "idAttestationFlags":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$deviceBrandAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3312
    or-int/lit8 v1, v1, 0x1

    .line 3314
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$deviceSerialAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3315
    or-int/lit8 v1, v1, 0x2

    .line 3317
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$deviceImeiAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3318
    or-int/lit8 v1, v1, 0x4

    .line 3320
    :cond_3
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$deviceMeidAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3321
    or-int/lit8 v1, v1, 0x8

    .line 3323
    :cond_4
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$useIndividualAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3324
    or-int/lit8 v1, v1, 0x10

    .line 3326
    :cond_5
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setIdAttestationFlags(I)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3327
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$useStrongBoxCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setUseStrongBox(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3328
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$ecKeyCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setGenerateEcKey(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3330
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->build()Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mgenerateKeyPair(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;)V

    .line 3331
    return-void
.end method
