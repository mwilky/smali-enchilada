.class Landroid/preference/PreferenceInflater;
.super Landroid/preference/GenericInflater;
.source "PreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/GenericInflater<",
        "Landroid/preference/Preference;",
        "Landroid/preference/PreferenceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private mPreferenceManager:Landroid/preference/PreferenceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/GenericInflater;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method constructor <init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;",
            "Landroid/preference/PreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Landroid/preference/GenericInflater;-><init>(Landroid/preference/GenericInflater;Landroid/content/Context;)V

    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method private init(Landroid/preference/PreferenceManager;)V
    .locals 1

    iput-object p1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const-string v0, "android.preference."

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceInflater;->setDefaultPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/preference/GenericInflater;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/preference/GenericInflater<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/preference/PreferenceInflater;

    iget-object v1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-direct {v0, p0, v1, p1}, Landroid/preference/PreferenceInflater;-><init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    nop

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return v2

    :catch_0
    move-exception v2

    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :cond_1
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "extra"

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v3, p3, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :try_start_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    return v2

    :catch_1
    move-exception v1

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Error parsing preference"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method protected bridge synthetic onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    check-cast p2, Landroid/preference/Preference;

    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;
    .locals 0

    check-cast p1, Landroid/preference/PreferenceGroup;

    check-cast p3, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;

    move-result-object p1

    return-object p1
.end method

.method protected onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceGroup;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-object p3

    :cond_0
    return-object p1
.end method
