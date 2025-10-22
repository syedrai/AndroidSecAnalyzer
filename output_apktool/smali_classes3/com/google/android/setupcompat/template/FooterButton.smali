.class public final Lcom/google/android/setupcompat/template/FooterButton;
.super Ljava/lang/Object;
.source "FooterButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/template/FooterButton$ButtonType;,
        Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;,
        Lcom/google/android/setupcompat/template/FooterButton$Builder;
    }
.end annotation


# static fields
.field static final KEY_BUTTON_ON_CLICK_COUNT:Ljava/lang/String; = "_onClickCount"

.field static final KEY_BUTTON_TEXT:Ljava/lang/String; = "_text"

.field static final KEY_BUTTON_TEXT_RESOURCE_NAME:Ljava/lang/String; = "_textResName"

.field static final KEY_BUTTON_TYPE:Ljava/lang/String; = "_type"

.field private static final MAX_BUTTON_TYPE:I = 0x8


# instance fields
.field private buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

.field private final buttonType:I

.field private clickCount:I

.field private direction:I

.field private enabled:Z

.field private locale:Ljava/util/Locale;

.field private loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

.field private text:Ljava/lang/CharSequence;

.field private textResourceName:Ljava/lang/String;

.field private theme:I

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    .line 63
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    .line 69
    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 70
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_android_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    .line 71
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    .line 72
    sget v2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_sucButtonType:I

    .line 74
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 73
    invoke-direct {p0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonTypeValue(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    .line 75
    sget v2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_android_theme:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    .line 76
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILjava/util/Locale;IILjava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "buttonType"    # I
    .param p4, "theme"    # I
    .param p5, "locale"    # Ljava/util/Locale;
    .param p6, "direction"    # I
    .param p7, "visibility"    # I
    .param p8, "textResourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "listener",
            "buttonType",
            "theme",
            "locale",
            "direction",
            "visibility",
            "textResourceName"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    .line 63
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    .line 98
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    .line 99
    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    .line 100
    iput p3, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    .line 101
    iput p4, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    .line 102
    iput-object p5, p0, Lcom/google/android/setupcompat/template/FooterButton;->locale:Ljava/util/Locale;

    .line 103
    iput p6, p0, Lcom/google/android/setupcompat/template/FooterButton;->direction:I

    .line 104
    iput p7, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    .line 105
    iput-object p8, p0, Lcom/google/android/setupcompat/template/FooterButton;->textResourceName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILjava/util/Locale;IILjava/lang/String;Lcom/google/android/setupcompat/template/FooterButton-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILjava/util/Locale;IILjava/lang/String;)V

    return-void
.end method

.method private getButtonTypeName()Ljava/lang/String;
    .locals 1

    .line 335
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    packed-switch v0, :pswitch_data_0

    .line 354
    const-string v0, "OTHER"

    return-object v0

    .line 351
    :pswitch_0
    const-string v0, "STOP"

    return-object v0

    .line 349
    :pswitch_1
    const-string v0, "SKIP"

    return-object v0

    .line 347
    :pswitch_2
    const-string v0, "OPT_IN"

    return-object v0

    .line 345
    :pswitch_3
    const-string v0, "NEXT"

    return-object v0

    .line 343
    :pswitch_4
    const-string v0, "DONE"

    return-object v0

    .line 341
    :pswitch_5
    const-string v0, "CLEAR"

    return-object v0

    .line 339
    :pswitch_6
    const-string v0, "CANCEL"

    return-object v0

    .line 337
    :pswitch_7
    const-string v0, "ADD_ANOTHER"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getButtonTypeValue(I)I
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 326
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    .line 327
    return p1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a ButtonType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getTextResourceName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public getButtonType()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->direction:I

    return v0
.end method

.method public getMetrics(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 3
    .param p1, "buttonName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonName"
        }
    .end annotation

    .line 367
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 368
    .local v0, "bundle":Landroid/os/PersistableBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/logging/CustomEvent;->trimsStringOverMaxLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_onClickCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 372
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->textResourceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->textResourceName:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_textResName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->textResourceName:Ljava/lang/String;

    .line 375
    invoke-static {v2}, Lcom/google/android/setupcompat/logging/CustomEvent;->trimsStringOverMaxLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    return-object v0
.end method

.method public getOnClickListenerWhenDisabled()Landroid/view/View$OnClickListener;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    new-instance v1, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInteractionEvent;

    sget-object v2, Lcom/google/android/setupcompat/logging/LoggingObserver$InteractionType;->TAP:Lcom/google/android/setupcompat/logging/LoggingObserver$InteractionType;

    invoke-direct {v1, p1, v2}, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInteractionEvent;-><init>(Landroid/view/View;Lcom/google/android/setupcompat/logging/LoggingObserver$InteractionType;)V

    invoke-interface {v0, v1}, Lcom/google/android/setupcompat/logging/LoggingObserver;->log(Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent;)V

    .line 241
    :cond_0
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    .line 242
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 244
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 154
    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    .line 155
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onEnabledChanged(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 216
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->direction:I

    .line 217
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onDirectionChanged(I)V

    .line 220
    :cond_0
    return-void
.end method

.method setLoggingObserver(Lcom/google/android/setupcompat/logging/LoggingObserver;)V
    .locals 0
    .param p1, "loggingObserver"    # Lcom/google/android/setupcompat/logging/LoggingObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggingObserver"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    .line 248
    return-void
.end method

.method setOnButtonEventListener(Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 228
    if-eqz p1, :cond_0

    .line 229
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    .line 233
    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Event listener of footer button may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    .line 120
    return-void
.end method

.method public setOnClickListenerWhenDisabled(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

    .line 134
    return-void
.end method

.method public setText(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    .line 194
    invoke-static {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton;->getTextResourceName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->textResourceName:Ljava/lang/String;

    .line 195
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    .line 201
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onTextChanged(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->locale:Ljava/util/Locale;

    .line 209
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onLocaleChanged(Ljava/util/Locale;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 181
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    .line 182
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onVisibilityChanged(I)V

    .line 185
    :cond_0
    return-void
.end method
