.class public Lcom/afwsamples/testdpc/common/MediaDisplayFragment;
.super Landroid/app/Fragment;
.source "MediaDisplayFragment.java"


# static fields
.field private static final ARG_DISPLAY_REQUEST:Ljava/lang/String; = "argDisplayRequest"

.field private static final ARG_MEDIA_URI:Ljava/lang/String; = "argMediaUri"

.field public static final REQUEST_DISPLAY_IMAGE:I = 0x1

.field public static final REQUEST_DISPLAY_VIDEO:I = 0x2


# instance fields
.field private mDisplayRequest:I

.field private mMediaUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMediaUri(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mMediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILandroid/net/Uri;)Lcom/afwsamples/testdpc/common/MediaDisplayFragment;
    .locals 4
    .param p0, "displayRequest"    # I
    .param p1, "mediaUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayRequest",
            "mediaUri"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;-><init>()V

    .line 43
    .local v0, "fragment":Lcom/afwsamples/testdpc/common/MediaDisplayFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "argDisplayRequest"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "argMediaUri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method


# virtual methods
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

    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argDisplayRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mDisplayRequest:I

    .line 55
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMediaUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mMediaUri:Landroid/net/Uri;

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->display_media:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    .line 64
    sget v0, Lcom/afwsamples/testdpc/R$layout;->fragment_media_display:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    iget v2, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mDisplayRequest:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    sget v2, Lcom/afwsamples/testdpc/R$id;->video:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    .line 73
    .local v2, "videoView":Landroid/widget/VideoView;
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 75
    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 76
    sget v3, Lcom/afwsamples/testdpc/R$id;->play_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 77
    .local v3, "playButton":Landroid/widget/Button;
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    new-instance v4, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$1;-><init>(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;Landroid/widget/VideoView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v4, Lcom/afwsamples/testdpc/R$id;->stop_button:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 86
    .local v4, "stopButton":Landroid/widget/Button;
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    new-instance v1, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$2;

    invoke-direct {v1, p0, v2}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$2;-><init>(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;Landroid/widget/VideoView;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 67
    .end local v2    # "videoView":Landroid/widget/VideoView;
    .end local v3    # "playButton":Landroid/widget/Button;
    .end local v4    # "stopButton":Landroid/widget/Button;
    :pswitch_1
    sget v2, Lcom/afwsamples/testdpc/R$id;->image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 68
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 69
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    nop

    .line 97
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :goto_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->delete_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 98
    .local v1, "deleteButton":Landroid/widget/Button;
    new-instance v2, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;-><init>(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
