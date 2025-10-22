.class Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;
.super Ljava/lang/Object;
.source "ZlibExpanderProvider.java"

# interfaces
.implements Lorg/bouncycastle/operator/InputExpander;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputExpander;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

.field final synthetic val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 6
    .param p1, "comIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comIn"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v0, "s":Ljava/io/InputStream;
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    invoke-static {v1}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->-$$Nest$fgetlimit(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 51
    new-instance v1, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    invoke-static {v2}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->-$$Nest$fgetlimit(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;)J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object v0, v1

    .line 53
    :cond_0
    return-object v0
.end method
