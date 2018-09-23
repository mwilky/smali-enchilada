.class public Lcom/android/settings/core/PreferenceXmlParserUtils;
.super Ljava/lang/Object;
.source "PreferenceXmlParserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/PreferenceXmlParserUtils$MetadataFlag;
    }
.end annotation


# static fields
.field private static final ENTRIES_SEPARATOR:Ljava/lang/String; = "|"

.field public static final METADATA_CONTROLLER:Ljava/lang/String; = "controller"

.field public static final METADATA_ICON:Ljava/lang/String; = "icon"

.field public static final METADATA_KEY:Ljava/lang/String; = "key"

.field public static final METADATA_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final METADATA_PLATFORM_SLICE_FLAG:Ljava/lang/String; = "platform_slice"

.field public static final METADATA_PREF_TYPE:Ljava/lang/String; = "type"

.field public static final METADATA_SUMMARY:Ljava/lang/String; = "summary"

.field public static final METADATA_TITLE:Ljava/lang/String; = "title"

.field static final PREF_SCREEN_TAG:Ljava/lang/String; = "PreferenceScreen"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SUPPORTED_PREF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PreferenceXmlParserUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Preference"

    const-string v1, "PreferenceCategory"

    const-string v2, "PreferenceScreen"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractMetadata(Landroid/content/Context;II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    const-string v1, "PreferenceXmlParserUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_2
    if-eq v3, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v5}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "PreferenceScreen"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_1

    :cond_4
    sget-object v7, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "Preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_1

    :cond_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    sget-object v9, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "type"

    invoke-virtual {v7, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {p2, v4}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "key"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getKey(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v10, 0x8

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "controller"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getController(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v10, 0x10

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "title"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getTitle(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 v10, 0x20

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "summary"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getSummary(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/16 v10, 0x40

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "icon"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getIcon(Landroid/content/res/TypedArray;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    const/16 v10, 0x80

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "platform_slice"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getPlatformSlice(Landroid/content/res/TypedArray;)Z

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    const/16 v10, 0x100

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "keywords"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getKeywords(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v3, v6

    if-eq v6, v5, :cond_e

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-gt v6, v2, :cond_2

    :cond_e
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0
.end method

.method public static getController(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/16 v1, 0x12

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getController(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataChildFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/16 v1, 0xd

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    array-length v4, v2

    :goto_0
    if-nez v4, :cond_2

    const/4 v3, 0x0

    return-object v3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDataIcon(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public static getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/16 v1, 0x1b

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x7

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIcon(Landroid/content/res/TypedArray;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method private static getKey(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKeywords(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPlatformSlice(Landroid/content/res/TypedArray;)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method private static getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private static getSummary(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTitle(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasFlag(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
