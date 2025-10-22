.class Lcom/google/android/setupcompat/template/FooterBarMixin$1;
.super Ljava/lang/Object;
.source "FooterBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupcompat/template/FooterBarMixin;->createButtonEventListener(I)Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/template/FooterBarMixin;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupcompat/template/FooterBarMixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChanged(I)V
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

    .line 219
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 222
    :cond_0
    return-void
.end method

.method public onEnabledChanged(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_9

    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetcontext(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetprimaryButtonId(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetisSecondaryButtonInPrimaryStyle(Lcom/google/android/setupcompat/template/FooterBarMixin;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetsecondaryButtonId(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 145
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 148
    if-eqz p1, :cond_1

    .line 149
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetfooterBarSecondaryButtonEnabledTextColor(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v2

    goto :goto_0

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetfooterBarSecondaryButtonDisabledTextColor(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v2

    .line 145
    :goto_0
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$mupdateTextColorForButton(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;ZI)V

    goto :goto_7

    .line 138
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 141
    if-eqz p1, :cond_3

    .line 142
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetfooterBarPrimaryButtonEnabledTextColor(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v2

    goto :goto_2

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetfooterBarPrimaryButtonDisabledTextColor(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v2

    .line 138
    :goto_2
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$mupdateTextColorForButton(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;ZI)V

    goto :goto_7

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-boolean v1, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-boolean v1, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    if-nez v1, :cond_9

    .line 154
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 156
    iget v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    iget-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetprimaryButtonId(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v3

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetisSecondaryButtonInPrimaryStyle(Lcom/google/android/setupcompat/template/FooterBarMixin;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 158
    :cond_5
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_4

    .line 157
    :cond_6
    :goto_3
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 159
    :goto_4
    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetprimaryButtonId(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v4

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetisSecondaryButtonInPrimaryStyle(Lcom/google/android/setupcompat/template/FooterBarMixin;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    .line 161
    :cond_7
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_6

    .line 160
    :cond_8
    :goto_5
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 154
    :goto_6
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$mupdateButtonTextColorWithStates(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 166
    .end local v0    # "button":Landroid/widget/Button;
    :cond_9
    :goto_7
    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 211
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextLocale(Ljava/util/Locale;)V

    .line 215
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 198
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetcontext(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setButtonWidthForExpressiveStyle()V

    .line 202
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$sfgetLOG()Lcom/google/android/setupcompat/util/Logger;

    move-result-object v1

    const-string v2, "onVisibilityChanged: button is null, skiped."

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 175
    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 179
    invoke-static {}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$sfgetLOG()Lcom/google/android/setupcompat/util/Logger;

    move-result-object v1

    const-string v2, "onVisibilityChanged: button visibility is not changed, skiped."

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 180
    return-void

    .line 183
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$mautoSetButtonBarVisibility(Lcom/google/android/setupcompat/template/FooterBarMixin;)V

    .line 186
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->-$$Nest$fgetcontext(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    .line 192
    .end local v0    # "button":Landroid/widget/Button;
    :cond_2
    return-void
.end method
