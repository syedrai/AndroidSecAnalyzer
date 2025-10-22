.class Landroid/support/v7/widget/SearchView$Api29Impl;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    return-void
.end method

.method static refreshAutoCompleteResults(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "autoCompleteTextView"    # Landroid/widget/AutoCompleteTextView;

    .line 2132
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->refreshAutoCompleteResults()V

    .line 2133
    return-void
.end method

.method static setInputMethodMode(Landroid/support/v7/widget/SearchView$SearchAutoComplete;I)V
    .locals 0
    .param p0, "searchAutoComplete"    # Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    .param p1, "mode"    # I

    .line 2128
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputMethodMode(I)V

    .line 2129
    return-void
.end method
