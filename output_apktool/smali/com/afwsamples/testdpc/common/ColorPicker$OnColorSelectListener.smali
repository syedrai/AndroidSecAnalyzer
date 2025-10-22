.class public interface abstract Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;
.super Ljava/lang/Object;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/ColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnColorSelectListener"
.end annotation


# virtual methods
.method public abstract onColorSelected(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedColor",
            "id"
        }
    .end annotation
.end method
