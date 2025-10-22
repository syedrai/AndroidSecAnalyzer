.class public abstract Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;
.super Landroid/app/Fragment;
.source "IntentOrIntentFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field protected static final ACTIONS_LIST:[Ljava/lang/String;

.field protected static final CATEGORIES_LIST:[Ljava/lang/String;

.field private static final CUSTOM:Ljava/lang/String; = "Custom"

.field private static final CUSTOM_INPUT_TYPE_ACTIONS:I = 0x0

.field private static final CUSTOM_INPUT_TYPE_CATEGORIES:I = 0x1

.field private static final CUSTOM_INPUT_TYPE_DATA_TYPES:I = 0x3

.field private static final CUSTOM_INPUT_TYPE_SCHEMES:I = 0x2

.field protected static final DATA_SCHEMES_LIST:[Ljava/lang/String;

.field protected static final DATA_TYPES_LIST:[Ljava/lang/String;


# instance fields
.field protected mActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mActionsSpinner:Landroid/widget/Spinner;

.field protected mAddActionButton:Landroid/widget/Button;

.field protected mAddButton:Landroid/widget/Button;

.field protected mAddDataSchemeAction:Landroid/widget/Button;

.field protected mAddDataTypeButton:Landroid/widget/Button;

.field protected mCategories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCategoriesSpinner:Landroid/widget/Spinner;

.field protected mClearButton:Landroid/widget/Button;

.field protected mDataSchemes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataSchemesSpinner:Landroid/widget/Spinner;

.field protected mDataTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataTypesSpinner:Landroid/widget/Spinner;

.field protected mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field protected mStatusTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mresetSpinners(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->resetSpinners(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 21

    .line 51
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.VIEW"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.ATTACH_DATA"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.EDIT"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "android.intent.action.PICK"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "android.intent.action.CHOOSER"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "android.intent.action.DIAL"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "android.intent.action.CALL"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "android.intent.action.SEND"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "android.intent.action.SENDTO"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "android.intent.action.ANSWER"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "android.intent.action.INSERT"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "android.intent.action.DELETE"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "android.intent.action.RUN"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "android.intent.action.SYNC"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-string v1, "android.intent.action.SEARCH"

    const/16 v19, 0x0

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    const-string v20, "android.intent.action.WEB_SEARCH"

    aput-object v20, v0, v1

    const/16 v1, 0x13

    const-string v20, "android.intent.action.FACTORY_TEST"

    aput-object v20, v0, v1

    const/16 v1, 0x14

    const-string v20, "Custom"

    aput-object v20, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->ACTIONS_LIST:[Ljava/lang/String;

    .line 77
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.intent.category.DEFAULT"

    aput-object v1, v0, v19

    const-string v1, "android.intent.category.BROWSABLE"

    aput-object v1, v0, v3

    const-string v1, "android.intent.category.TAB"

    aput-object v1, v0, v4

    const-string v1, "android.intent.category.ALTERNATIVE"

    aput-object v1, v0, v5

    const-string v1, "android.intent.category.SELECTED_ALTERNATIVE"

    aput-object v1, v0, v6

    const-string v1, "android.intent.category.LAUNCHER"

    aput-object v1, v0, v7

    const-string v1, "android.intent.category.INFO"

    aput-object v1, v0, v8

    const-string v1, "android.intent.category.HOME"

    aput-object v1, v0, v9

    const-string v1, "android.intent.category.PREFERENCE"

    aput-object v1, v0, v10

    const-string v1, "android.intent.category.TEST"

    aput-object v1, v0, v11

    const-string v1, "android.intent.category.CAR_DOCK"

    aput-object v1, v0, v12

    const-string v1, "android.intent.category.DESK_DOCK"

    aput-object v1, v0, v13

    const-string v1, "android.intent.category.LE_DESK_DOCK"

    aput-object v1, v0, v14

    const-string v1, "android.intent.category.HE_DESK_DOCK"

    aput-object v1, v0, v15

    const-string v1, "android.intent.category.CAR_MODE"

    aput-object v1, v0, v16

    const-string v1, "android.intent.category.APP_MARKET"

    aput-object v1, v0, v17

    aput-object v20, v0, v18

    sput-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->CATEGORIES_LIST:[Ljava/lang/String;

    .line 99
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "http"

    aput-object v1, v0, v19

    const-string v1, "https"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tel"

    aput-object v1, v0, v4

    const-string v1, "mailto"

    aput-object v1, v0, v5

    const-string v1, "geo"

    aput-object v1, v0, v6

    aput-object v20, v0, v7

    sput-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_SCHEMES_LIST:[Ljava/lang/String;

    .line 102
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v19

    const-string/jumbo v1, "text/plain"

    aput-object v1, v0, v3

    const-string v1, "image/*"

    aput-object v1, v0, v4

    const-string v1, "image/jpeg"

    aput-object v1, v0, v5

    const-string v1, "image/bmp"

    aput-object v1, v0, v6

    const-string v1, "image/gif"

    aput-object v1, v0, v7

    const-string v1, "image/jpg"

    aput-object v1, v0, v8

    const-string v1, "image/png"

    aput-object v1, v0, v9

    const-string/jumbo v1, "video/wav"

    aput-object v1, v0, v10

    const-string/jumbo v1, "video/mp4"

    aput-object v1, v0, v11

    aput-object v20, v0, v12

    sput-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_TYPES_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActions:Ljava/util/HashSet;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    return-void
.end method

.method private resetSpinners(I)V
    .locals 2
    .param p1, "customInputType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customInputType"
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 340
    :pswitch_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 341
    goto :goto_0

    .line 337
    :pswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 338
    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 335
    goto :goto_0

    .line 331
    :pswitch_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 332
    nop

    .line 345
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showCustomInputDialog(Ljava/lang/String;I)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "customInputType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "title",
            "customInputType"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 273
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "customInputView":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 275
    .local v2, "customInputEditText":Landroid/widget/EditText;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v3, "customInputViewAlertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 278
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 281
    :cond_0
    new-instance v4, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$1;

    invoke-direct {v4, p0, p2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$1;-><init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    sget v4, Lcom/afwsamples/testdpc/R$string;->add:I

    new-instance v5, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;

    invoke-direct {v5, p0, p2, v2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;-><init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;ILandroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    new-instance v4, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;

    invoke-direct {v4, p0, p2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;-><init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 326
    return-void
.end method


# virtual methods
.method protected clearIntentOrIntentFilter()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 238
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 240
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 241
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 242
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "position":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 211
    .local v1, "id":I
    sget v2, Lcom/afwsamples/testdpc/R$id;->btn_add_action:I

    if-ne v1, v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 213
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActions:Ljava/util/HashSet;

    sget-object v3, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->ACTIONS_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 215
    :cond_0
    sget v2, Lcom/afwsamples/testdpc/R$id;->btn_add_category:I

    if-ne v1, v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 217
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    sget-object v3, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->CATEGORIES_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 219
    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$id;->btn_add_data_scheme:I

    if-ne v1, v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 221
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    sget-object v3, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_SCHEMES_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 223
    :cond_2
    sget v2, Lcom/afwsamples/testdpc/R$id;->btn_add_data_type:I

    if-ne v1, v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 225
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    sget-object v3, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_TYPES_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 227
    :cond_3
    sget v2, Lcom/afwsamples/testdpc/R$id;->btn_clear:I

    if-ne v1, v2, :cond_4

    .line 228
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->clearIntentOrIntentFilter()V

    .line 229
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    .line 231
    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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

    .line 150
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 152
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-direct {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 154
    sget v1, Lcom/afwsamples/testdpc/R$layout;->add_intent_or_intent_filter:I

    .line 155
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "intentOrIntentFilterView":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/R$id;->list_of_actions:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    .line 159
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->ACTIONS_LIST:[Ljava/lang/String;

    .line 161
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const v5, 0x1090008

    invoke-direct {v3, v0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 162
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    sget v2, Lcom/afwsamples/testdpc/R$id;->btn_add_action:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    .line 164
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget v2, Lcom/afwsamples/testdpc/R$id;->list_of_categories:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    .line 168
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->CATEGORIES_LIST:[Ljava/lang/String;

    .line 170
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 168
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 172
    sget v2, Lcom/afwsamples/testdpc/R$id;->btn_add_category:I

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 174
    .local v2, "addCategoryButton":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    sget v3, Lcom/afwsamples/testdpc/R$id;->list_of_data_schemes:I

    .line 178
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    .line 179
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v6, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_SCHEMES_LIST:[Ljava/lang/String;

    .line 181
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 179
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 182
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    sget v3, Lcom/afwsamples/testdpc/R$id;->btn_add_data_scheme:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddDataSchemeAction:Landroid/widget/Button;

    .line 184
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddDataSchemeAction:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    sget v3, Lcom/afwsamples/testdpc/R$id;->list_of_data_types:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    .line 188
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v6, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_TYPES_LIST:[Ljava/lang/String;

    .line 190
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 188
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 191
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    sget v3, Lcom/afwsamples/testdpc/R$id;->btn_add_data_type:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddDataTypeButton:Landroid/widget/Button;

    .line 193
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddDataTypeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    sget v3, Lcom/afwsamples/testdpc/R$id;->tv_intent_filter:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mStatusTextView:Landroid/widget/TextView;

    .line 198
    sget v3, Lcom/afwsamples/testdpc/R$id;->btn_add:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddButton:Landroid/widget/Button;

    .line 199
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    sget v3, Lcom/afwsamples/testdpc/R$id;->btn_clear:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mClearButton:Landroid/widget/Button;

    .line 202
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-object v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
            "position",
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

    .line 246
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    .line 247
    .local v0, "parentId":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->list_of_actions:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    sget-object v1, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->ACTIONS_LIST:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ne p3, v1, :cond_3

    .line 249
    sget v1, Lcom/afwsamples/testdpc/R$string;->actions_title:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 251
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->list_of_categories:I

    if-ne v0, v1, :cond_1

    .line 252
    sget-object v1, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->CATEGORIES_LIST:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ne p3, v1, :cond_3

    .line 253
    sget v1, Lcom/afwsamples/testdpc/R$string;->categories_title:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 255
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->list_of_data_schemes:I

    if-ne v0, v1, :cond_2

    .line 256
    sget-object v1, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_SCHEMES_LIST:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ne p3, v1, :cond_3

    .line 257
    sget v1, Lcom/afwsamples/testdpc/R$string;->data_schemes_title:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 259
    :cond_2
    sget v1, Lcom/afwsamples/testdpc/R$id;->list_of_data_types:I

    if-ne v0, v1, :cond_3

    .line 260
    sget-object v1, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_TYPES_LIST:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ne p3, v1, :cond_3

    .line 261
    sget v1, Lcom/afwsamples/testdpc/R$string;->data_types_title:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V

    .line 264
    :cond_3
    :goto_0
    return-void
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

    .line 269
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected abstract updateStatusTextView()V
.end method
