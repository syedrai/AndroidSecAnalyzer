.class public Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
.super Landroid/app/DialogFragment;
.source "KeyValuePairDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;,
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;,
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$DialogType;
    }
.end annotation


# static fields
.field static final ARG_APP_NAME:Ljava/lang/String; = "app_name"

.field static final ARG_CAN_EDIT_KEY:Ljava/lang/String; = "can_edit_key"

.field static final ARG_DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field static final ARG_INITIAL_VALUE:Ljava/lang/String; = "initial_value"

.field static final ARG_KEY:Ljava/lang/String; = "key"

.field static final ARG_SUPPORTED_TYPE:Ljava/lang/String; = "supported_type"

.field public static final RESULT_KEY:Ljava/lang/String; = "key"

.field public static final RESULT_TYPE:Ljava/lang/String; = "type"

.field public static final RESULT_VALUE:Ljava/lang/String; = "value"

.field private static final TYPE_DISPLAY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final bundleArrayButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

.field private final bundleButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

.field private mAppName:Ljava/lang/String;

.field private mBoolView:Landroid/widget/Switch;

.field private mConfigureBundle:Landroid/widget/Button;

.field private mConfigureBundleArray:Landroid/widget/Button;

.field private mDialogType:I

.field private mIntView:Landroid/widget/EditText;

.field private mKeyView:Landroid/widget/EditText;

.field private mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

.field private mStringArrayContainer:Landroid/view/View;

.field private mStringArrayList:Landroid/support/v7/widget/RecyclerView;

.field private mStringView:Landroid/widget/EditText;

.field private mSupportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeSpinner:Landroid/widget/Spinner;

.field private mValueViews:[Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppName(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogType(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyView(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mKeyView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStringArrayAdapter(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportedTypes(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mSupportedTypes:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mputValueFromUiToResultIntent(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->putValueFromUiToResultIntent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetDialogType(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setDialogType(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFragmentForFurtherInput(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->showFragmentForFurtherInput(Landroid/app/Fragment;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowToast(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->showToast(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 93
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Integer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "String"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "String[]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Bundle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Bundle[]"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->TYPE_DISPLAY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 96
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment-IA;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

    .line 98
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment-IA;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleArrayButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

    return-void
.end method

.method private configureKeyView(ZLjava/lang/String;)V
    .locals 1
    .param p1, "canEditKeyView"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canEditKeyView",
            "key"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method private configureStringUi()V
    .locals 3

    .line 308
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 310
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 311
    new-instance v1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;-><init>()V

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    .line 312
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayList:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 313
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayContainer:Landroid/view/View;

    sget v2, Lcom/afwsamples/testdpc/R$id;->add_new_row:I

    .line 314
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V

    .line 315
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    return-void
.end method

.method private configureTypeSpinner()V
    .locals 4

    .line 252
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$2;

    .line 254
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090008

    sget-object v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->TYPE_DISPLAY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$2;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 271
    .local v0, "typeArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 272
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 273
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mTypeSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$3;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 283
    return-void
.end method

.method private configureUsingArguments()V
    .locals 3

    .line 286
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "can_edit_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureKeyView(ZLjava/lang/String;)V

    .line 288
    const-string/jumbo v1, "supported_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setSupportedType([I)V

    .line 289
    const-string v1, "dialog_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setDialogType(I)V

    .line 290
    const-string v1, "initial_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->populateInitialValue(Ljava/lang/Object;)V

    .line 291
    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mAppName:Ljava/lang/String;

    .line 292
    return-void
.end method

.method private createAlertDialog(Landroid/view/View;)Landroid/app/AlertDialog;
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

    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->restriction_save_label:I

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->restriction_cancel_label:I

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 182
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 212
    return-object v0
.end method

.method public static newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .locals 4
    .param p0, "dialogType"    # I
    .param p1, "canEditKey"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "supportedType"    # [I
    .param p5, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialogType",
            "canEditKey",
            "key",
            "value",
            "supportedType",
            "appName"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;-><init>()V

    .line 109
    .local v0, "fragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v1, "argument":Landroid/os/Bundle;
    const-string v2, "dialog_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v2, "can_edit_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    const-string v2, "key"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz p3, :cond_0

    .line 114
    const-string v2, "initial_value"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    move-object v3, p3

    check-cast v3, [Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 128
    :pswitch_1
    move-object v3, p3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    goto :goto_0

    .line 125
    :pswitch_2
    move-object v3, p3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    goto :goto_0

    .line 122
    :pswitch_3
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    goto :goto_0

    .line 119
    :pswitch_4
    move-object v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    goto :goto_0

    .line 116
    :pswitch_5
    move-object v3, p3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    nop

    .line 135
    :cond_0
    :goto_0
    const-string/jumbo v2, "supported_type"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 136
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private populateInitialValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "initialValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialValue"
        }
    .end annotation

    .line 338
    if-nez p1, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    iget v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 358
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleArrayButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

    move-object v1, p1

    check-cast v1, [Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->setBundleArray([Landroid/os/Bundle;)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;->setBundle(Landroid/os/Bundle;)V

    .line 356
    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    new-instance v1, Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->setStringList(Ljava/util/List;)V

    .line 353
    goto :goto_0

    .line 349
    :pswitch_3
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringView:Landroid/widget/EditText;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    goto :goto_0

    .line 346
    :pswitch_4
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mIntView:Landroid/widget/EditText;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    goto :goto_0

    .line 343
    :pswitch_5
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mBoolView:Landroid/widget/Switch;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 344
    nop

    .line 361
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private putValueFromUiToResultIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "result"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 216
    iget v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    const-string v1, "initial_value"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "value"

    packed-switch v0, :pswitch_data_0

    .line 248
    return v2

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 242
    .local v0, "initialBundleArray":[Landroid/os/Parcelable;
    if-nez v0, :cond_0

    .line 243
    new-array v0, v2, [Landroid/os/Bundle;

    .line 245
    :cond_0
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    return v3

    .line 234
    .end local v0    # "initialBundleArray":[Landroid/os/Parcelable;
    :pswitch_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 235
    .local v0, "initialBundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 236
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 238
    :cond_1
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    return v3

    .line 231
    .end local v0    # "initialBundle":Landroid/os/Bundle;
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->getStringList()Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    return v3

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    return v3

    .line 222
    :pswitch_4
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mIntView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    nop

    .line 226
    return v3

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v2

    .line 218
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_5
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mBoolView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDialogType(I)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 326
    iput p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    .line 327
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mValueViews:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 329
    iget v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    if-ne v1, v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mValueViews:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mValueViews:[Landroid/view/View;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setSupportedType([I)V
    .locals 4
    .param p1, "supportedTypes"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportedTypes"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 301
    .local v0, "supportedTypeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 302
    .local v3, "supportType":Ljava/lang/Integer;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v3    # "supportType":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_0
    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mSupportedTypes:Ljava/util/Set;

    .line 305
    return-void
.end method

.method private showFragmentForFurtherInput(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 366
    const-class v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->container:I

    .line 368
    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 370
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 371
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->dismiss()V

    .line 372
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "stringResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringResId"
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 145
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/afwsamples/testdpc/R$layout;->basic_key_value_pair:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "rootView":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/R$id;->key:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mKeyView:Landroid/widget/EditText;

    .line 147
    sget v2, Lcom/afwsamples/testdpc/R$id;->value_bool:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mBoolView:Landroid/widget/Switch;

    .line 148
    sget v2, Lcom/afwsamples/testdpc/R$id;->value_int:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mIntView:Landroid/widget/EditText;

    .line 149
    sget v2, Lcom/afwsamples/testdpc/R$id;->value_string:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringView:Landroid/widget/EditText;

    .line 150
    sget v2, Lcom/afwsamples/testdpc/R$id;->value_str_array_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayContainer:Landroid/view/View;

    .line 151
    sget v2, Lcom/afwsamples/testdpc/R$id;->value_str_array_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayList:Landroid/support/v7/widget/RecyclerView;

    .line 152
    sget v2, Lcom/afwsamples/testdpc/R$id;->configure_bundle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundle:Landroid/widget/Button;

    .line 153
    sget v2, Lcom/afwsamples/testdpc/R$id;->configure_bundle_array:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundleArray:Landroid/widget/Button;

    .line 155
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mBoolView:Landroid/widget/Switch;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mIntView:Landroid/widget/EditText;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringView:Landroid/widget/EditText;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayContainer:Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundle:Landroid/widget/Button;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundleArray:Landroid/widget/Button;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mValueViews:[Landroid/view/View;

    .line 164
    sget v2, Lcom/afwsamples/testdpc/R$id;->type_spinner:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mTypeSpinner:Landroid/widget/Spinner;

    .line 165
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundle:Landroid/widget/Button;

    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundleArray:Landroid/widget/Button;

    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleArrayButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureStringUi()V

    .line 169
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureTypeSpinner()V

    .line 170
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureUsingArguments()V

    .line 171
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->createAlertDialog(Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
