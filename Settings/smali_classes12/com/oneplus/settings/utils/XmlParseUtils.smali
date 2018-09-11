.class public Lcom/oneplus/settings/utils/XmlParseUtils;
.super Ljava/lang/Object;
.source "XmlParseUtils.java"


# static fields
.field private static final NODE_NAME_ONEPLUS_PREFERENCE_SCREEN:Ljava/lang/String; = "com.oneplus.lib.preference.PreferenceScreen"

.field private static final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String; = "PreferenceScreen"

.field private static final SKIP_NODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XmlParserUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-string v0, "intent"

    const-string v1, "extra"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/XmlParseUtils;->SKIP_NODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "resId"    # I

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-object v1
.end method

.method public static getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1}, Lcom/oneplus/settings/utils/XmlParseUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/4 v1, 0x7

    invoke-static {p0, p1, v0, v1}, Lcom/oneplus/settings/utils/XmlParseUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/oneplus/settings/utils/XmlParseUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parsePreferenceKeyFromResource(ILandroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "xmlResId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v0, v2

    .line 49
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_0

    .end local v3    # "type":I
    goto :goto_0

    .line 53
    .restart local v3    # "type":I
    :cond_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "nodeName":Ljava/lang/String;
    const-string v5, "PreferenceScreen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.oneplus.lib.preference.PreferenceScreen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 59
    .local v5, "outerDepth":I
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 60
    .local v6, "attrs":Landroid/util/AttributeSet;
    invoke-static {p1, v6}, Lcom/oneplus/settings/utils/XmlParseUtils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "headerKey":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v3, v8

    if-eq v8, v4, :cond_7

    const/4 v8, 0x3

    if-ne v3, v8, :cond_4

    .line 64
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 65
    :cond_4
    if-eq v3, v8, :cond_3

    const/4 v8, 0x4

    if-ne v3, v8, :cond_5

    .line 66
    goto :goto_2

    .line 68
    :cond_5
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 69
    sget-object v8, Lcom/oneplus/settings/utils/XmlParseUtils;->SKIP_NODES:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 70
    const-string v8, "XmlParserUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not a valid entity to index, skip."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_2

    .line 73
    :cond_6
    invoke-static {p1, v6}, Lcom/oneplus/settings/utils/XmlParseUtils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v8    # "key":Ljava/lang/String;
    goto :goto_2

    .line 79
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v5    # "outerDepth":I
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "headerKey":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_8

    .line 80
    :goto_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4

    .line 79
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "XmlParserUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML Error parsing e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_8

    goto :goto_3

    .line 83
    :cond_8
    :goto_4
    return-object v1

    .line 79
    :goto_5
    if-eqz v0, :cond_9

    .line 80
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v2
.end method
