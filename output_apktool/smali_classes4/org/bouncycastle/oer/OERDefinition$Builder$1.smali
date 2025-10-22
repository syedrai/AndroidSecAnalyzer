.class Lorg/bouncycastle/oer/OERDefinition$Builder$1;
.super Ljava/lang/Object;
.source "OERDefinition.java"

# interfaces
.implements Lorg/bouncycastle/oer/OERDefinition$ItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/oer/OERDefinition$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/oer/OERDefinition$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$1;->this$0:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public existingChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "existingChild"    # Lorg/bouncycastle/oer/OERDefinition$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "existingChild"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$1;->this$0:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->-$$Nest$fgetdefaultItemProvider(Lorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->-$$Nest$mcopy(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method
