.class public Lcom/afwsamples/testdpc/search/XmlIndexableFragment;
.super Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
.source "XmlIndexableFragment.java"


# static fields
.field private static final NODE_NAME_PREFERENCE_CATEGORY:Ljava/lang/String; = "PreferenceCategory"

.field private static final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String; = "PreferenceScreen"

.field private static final TAG:Ljava/lang/String; = "PreferenceCrawler_Timer"


# instance fields
.field public xmlRes:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .param p2, "xmlRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragmentClass",
            "xmlRes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;",
            ">;I)V"
        }
    .end annotation

    .line 25
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;>;"
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;-><init>(Ljava/lang/Class;)V

    .line 26
    iput p2, p0, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;->xmlRes:I

    .line 27
    return-void
.end method


# virtual methods
.method public index(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "indexablePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;->xmlRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 40
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "nodeName":Ljava/lang/String;
    const-string v5, "PreferenceScreen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 53
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 54
    .local v5, "outerDepth":I
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 55
    .local v6, "attrs":Landroid/util/AttributeSet;
    :cond_1
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v3, v7

    if-eq v7, v4, :cond_5

    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    .line 56
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_5

    .line 57
    :cond_2
    if-eq v3, v7, :cond_1

    const/4 v7, 0x4

    if-ne v3, v7, :cond_3

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 61
    invoke-static {p1, v6}, Lcom/afwsamples/testdpc/search/PreferenceXmlUtil;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "key":Ljava/lang/String;
    invoke-static {p1, v6}, Lcom/afwsamples/testdpc/search/PreferenceXmlUtil;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "title":Ljava/lang/String;
    const-string v9, "PreferenceCategory"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 64
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 65
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 66
    goto :goto_1

    .line 68
    :cond_4
    new-instance v9, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    iget-object v10, p0, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;->fragmentName:Ljava/lang/String;

    invoke-direct {v9, v7, v8, v10}, Lcom/afwsamples/testdpc/search/PreferenceIndex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v9, "indexablePreference":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    nop

    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "indexablePreference":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    goto :goto_1

    .line 73
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    :cond_5
    goto :goto_3

    .line 46
    .restart local v2    # "nodeName":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    .line 50
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "indexablePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "context":Landroid/content/Context;
    throw v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v3    # "type":I
    .restart local v0    # "indexablePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 72
    .local v2, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v3, "PreferenceCrawler_Timer"

    const-string v4, "Error in parsing a preference xml file, skip it"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3
    return-object v0
.end method
