.class public Lcom/android/settings/dashboard/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;,
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
    }
.end annotation


# static fields
.field private static final ATTR_CLASS:Ljava/lang/String; = "cls"

.field private static final CONDITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FILE_NAME:Ljava/lang/String; = "condition_state.xml"

.field private static final PKG:Ljava/lang/String; = "com.android.settings.dashboard.conditional."

.field private static final TAG:Ljava/lang/String; = "ConditionManager"

.field private static final TAG_CONDITION:Ljava/lang/String; = "c"

.field private static final TAG_CONDITIONS:Ljava/lang/String; = "cs"

.field private static sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "ConditionManager"

    const-string v3, "conditions loading synchronously"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$1;)V

    move-object v1, v2

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v2, "ConditionManager"

    const-string v3, "conditions loading asychronously"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/conditional/ConditionManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addMissingConditions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addMissingConditions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/OPOTACondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/dashboard/conditional/Condition;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    if-ne v0, p1, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_0
    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    if-ne v0, p1, :cond_1

    new-instance v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_1
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    if-ne v0, p1, :cond_2

    new-instance v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/DndCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_2
    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    if-ne v0, p1, :cond_3

    new-instance v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_3
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    if-ne v0, p1, :cond_4

    new-instance v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_4
    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    if-ne v0, p1, :cond_5

    new-instance v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_5
    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    if-ne v0, p1, :cond_6

    new-instance v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_6
    const-class v0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    if-ne v0, p1, :cond_7

    new-instance v0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_7
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    if-ne v0, p1, :cond_8

    new-instance v0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_8
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    if-ne v0, p1, :cond_9

    new-instance v0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_9
    const-class v0, Lcom/android/settings/dashboard/conditional/OPOTACondition;

    if-ne v0, p1, :cond_a

    new-instance v0, Lcom/android/settings/dashboard/conditional/OPOTACondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/OPOTACondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_a
    const-string v0, "ConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown condition class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 2

    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    :cond_0
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    return-object v0
.end method

.method private getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const-string v3, "c"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const-string v4, ""

    const-string v5, "cls"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.dashboard.conditional."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.settings.dashboard.conditional."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :cond_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v5

    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Lcom/android/settings/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v7, "ConditionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to add condition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ConditionManager"

    const-string v2, "Problem reading condition_state.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private saveToXml()V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, ""

    const-string v3, "cs"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v5, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5, v4}, Lcom/android/settings/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    const-string v6, "c"

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "cls"

    invoke-interface {v0, v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v6, ""

    const-string v7, "c"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ""

    const-string v4, "cs"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ConditionManager"

    const-string v2, "Problem writing condition_state.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    return-void
.end method

.method public getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    return-object v0
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getVisibleConditions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->saveToXml()V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;

    invoke-interface {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->onPause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->onResume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshAll()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->refreshState()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
