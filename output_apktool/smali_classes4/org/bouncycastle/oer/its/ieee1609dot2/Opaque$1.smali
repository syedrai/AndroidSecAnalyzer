.class Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;
.super Ljava/lang/Object;
.source "Opaque.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getValue(Ljava/lang/Class;Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$definition:Lorg/bouncycastle/oer/Element;

.field final synthetic val$src:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;Lorg/bouncycastle/oer/Element;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$src",
            "val$definition",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;->val$src:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;->val$definition:Lorg/bouncycastle/oer/Element;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;->val$src:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->-$$Nest$fgetcontent(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;->val$definition:Lorg/bouncycastle/oer/Element;

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parse([BLorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 72
    .local v0, "value":Lorg/bouncycastle/asn1/ASN1Encodable;
    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;->val$type:Ljava/lang/Class;

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;->val$type:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 75
    .end local v0    # "value":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not invoke getInstance on type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
