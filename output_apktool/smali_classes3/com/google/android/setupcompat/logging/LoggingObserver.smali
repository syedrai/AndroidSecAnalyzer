.class public interface abstract Lcom/google/android/setupcompat/logging/LoggingObserver;
.super Ljava/lang/Object;
.source "LoggingObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;,
        Lcom/google/android/setupcompat/logging/LoggingObserver$InteractionType;,
        Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\u0008J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\t\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/setupcompat/logging/LoggingObserver;",
        "",
        "log",
        "",
        "event",
        "Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent;",
        "SetupCompatUiEvent",
        "ButtonType",
        "InteractionType",
        "third_party.java_src.android_libs.setupcompat_setupcompat"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract log(Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method
