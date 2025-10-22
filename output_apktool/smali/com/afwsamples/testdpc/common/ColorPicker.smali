.class public Lcom/afwsamples/testdpc/common/ColorPicker;
.super Landroid/app/DialogFragment;
.source "ColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;
    }
.end annotation


# static fields
.field private static final ARG_COLOR_VALUE:Ljava/lang/String; = "init_color"

.field private static final ARG_ID:Ljava/lang/String; = "id"

.field private static final ARG_LISTENER_FRAGMENT_TAG:Ljava/lang/String; = "listener_fragment_tag"

.field public static final COLOR_STRING_FORMATTER:Ljava/lang/String; = "#%08x"


# instance fields
.field private mBlueBar:Landroid/widget/SeekBar;

.field private mBlueBarValue:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mColorValue:Landroid/widget/EditText;

.field private mCurrentColor:I

.field private mDoneButton:Landroid/widget/Button;

.field private mGreenBar:Landroid/widget/SeekBar;

.field private mGreenBarValue:Landroid/widget/TextView;

.field private mId:Ljava/lang/String;

.field private mListenerTag:Ljava/lang/String;

.field private mPreviewButton:Landroid/widget/Button;

.field private mRedBar:Landroid/widget/SeekBar;

.field private mRedBarValue:Landroid/widget/TextView;

.field private mTitleHeader:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCancelButton(Lcom/afwsamples/testdpc/common/ColorPicker;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCancelButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentColor(Lcom/afwsamples/testdpc/common/ColorPicker;)I
    .locals 0

    iget p0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoneButton(Lcom/afwsamples/testdpc/common/ColorPicker;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mDoneButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/afwsamples/testdpc/common/ColorPicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerTag(Lcom/afwsamples/testdpc/common/ColorPicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mListenerTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCancelButton(Lcom/afwsamples/testdpc/common/ColorPicker;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCancelButton:Landroid/widget/Button;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDoneButton(Lcom/afwsamples/testdpc/common/ColorPicker;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mDoneButton:Landroid/widget/Button;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateViewsColor(Lcom/afwsamples/testdpc/common/ColorPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->updateViewsColor()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initializeViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 138
    sget v0, Lcom/afwsamples/testdpc/R$id;->title_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mTitleHeader:Landroid/view/View;

    .line 140
    sget v0, Lcom/afwsamples/testdpc/R$id;->red_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBar:Landroid/widget/SeekBar;

    .line 141
    sget v0, Lcom/afwsamples/testdpc/R$id;->green_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBar:Landroid/widget/SeekBar;

    .line 142
    sget v0, Lcom/afwsamples/testdpc/R$id;->blue_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBar:Landroid/widget/SeekBar;

    .line 144
    sget v0, Lcom/afwsamples/testdpc/R$id;->red_bar_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBarValue:Landroid/widget/TextView;

    .line 145
    sget v0, Lcom/afwsamples/testdpc/R$id;->green_bar_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBarValue:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/afwsamples/testdpc/R$id;->blue_bar_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBarValue:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 152
    sget v0, Lcom/afwsamples/testdpc/R$id;->color_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    .line 153
    sget v0, Lcom/afwsamples/testdpc/R$id;->color_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mPreviewButton:Landroid/widget/Button;

    .line 154
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mPreviewButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/ColorPicker;
    .locals 3
    .param p0, "initColor"    # I
    .param p1, "listenerTag"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "initColor",
            "listenerTag",
            "id"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/common/ColorPicker;-><init>()V

    .line 70
    .local v0, "fragment":Lcom/afwsamples/testdpc/common/ColorPicker;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "init_color"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v2, "listener_fragment_tag"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v0
.end method

.method private updateViewsColor()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mTitleHeader:Landroid/view/View;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mDoneButton:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCancelButton:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 164
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 165
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 167
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBarValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBarValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBarValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "#%08x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 173
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 174
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mPreviewButton:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 175
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "color":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/afwsamples/testdpc/R$string;->not_valid_color:I

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 211
    return-void

    .line 215
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    .line 216
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->updateViewsColor()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->not_valid_color:I

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 220
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
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

    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "id"

    const-string v1, "listener_fragment_tag"

    const-string v2, "init_color"

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mListenerTag:Ljava/lang/String;

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mId:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/afwsamples/testdpc/R$color;->teal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    .line 87
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mListenerTag:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mId:Ljava/lang/String;

    .line 90
    :cond_1
    :goto_0
    return-void
.end method

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

    .line 94
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->color_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/afwsamples/testdpc/R$string;->color_picker_done:I

    new-instance v4, Lcom/afwsamples/testdpc/common/ColorPicker$1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/common/ColorPicker$1;-><init>(Lcom/afwsamples/testdpc/common/ColorPicker;)V

    .line 98
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 111
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 113
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/afwsamples/testdpc/common/ColorPicker$2;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/ColorPicker$2;-><init>(Lcom/afwsamples/testdpc/common/ColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->initializeViews(Landroid/view/View;)V

    .line 126
    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "progress",
            "fromUser"
        }
    .end annotation

    .line 179
    if-eqz p3, :cond_0

    .line 180
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBar:Landroid/widget/SeekBar;

    .line 181
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    .line 182
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->updateViewsColor()V

    .line 184
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 131
    const-string v0, "init_color"

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v0, "listener_fragment_tag"

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "id"

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 189
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 194
    return-void
.end method
