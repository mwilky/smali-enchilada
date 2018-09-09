.class public Lcom/android/server/secrecy/work/ActivityConfig;
.super Ljava/lang/Object;
.source "ActivityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/secrecy/work/ActivityConfig;


# instance fields
.field private final ACTIVITY_CONFIG_FILE:Ljava/lang/String;

.field private final ATTR_CLASSNAME:Ljava/lang/String;

.field private final ATTR_PACKAGE:Ljava/lang/String;

.field private final START_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TAG_ACTIVITY:Ljava/lang/Object;

.field private final mActivityItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/secrecy/work/ActivityConfig;->DEBUG:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "SecrecyService.ActivityConfig"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->TAG:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "system/etc/activity_config.xml"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->ACTIVITY_CONFIG_FILE:Ljava/lang/String;

    .line 44
    const-string v0, "activityconfig"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->START_TAG:Ljava/lang/String;

    .line 45
    const-string v0, "activity"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->TAG_ACTIVITY:Ljava/lang/Object;

    .line 46
    const-string/jumbo v0, "packageName"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->ATTR_PACKAGE:Ljava/lang/String;

    .line 47
    const-string v0, "className"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->ATTR_CLASSNAME:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/server/secrecy/work/ActivityConfig;
    .locals 2

    .line 54
    const-class v0, Lcom/android/server/secrecy/work/ActivityConfig;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/android/server/secrecy/work/ActivityConfig;->sInstance:Lcom/android/server/secrecy/work/ActivityConfig;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/android/server/secrecy/work/ActivityConfig;

    invoke-direct {v1}, Lcom/android/server/secrecy/work/ActivityConfig;-><init>()V

    sput-object v1, Lcom/android/server/secrecy/work/ActivityConfig;->sInstance:Lcom/android/server/secrecy/work/ActivityConfig;

    .line 58
    :cond_0
    sget-object v1, Lcom/android/server/secrecy/work/ActivityConfig;->sInstance:Lcom/android/server/secrecy/work/ActivityConfig;

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readConfigFromXml(Ljava/io/File;)V
    .locals 10
    .param p1, "configFile"    # Ljava/io/File;

    .line 74
    const/4 v0, 0x0

    move-object v1, v0

    .line 76
    .local v1, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v2

    .line 81
    nop

    .line 84
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 85
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 88
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 88
    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    if-eq v4, v5, :cond_0

    .line 88
    .end local v4    # "type":I
    goto :goto_0

    .line 92
    .restart local v4    # "type":I
    :cond_0
    if-ne v4, v6, :cond_4

    .line 96
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "activityconfig"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 102
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 103
    goto :goto_2

    .line 106
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/secrecy/work/ActivityConfig;->TAG_ACTIVITY:Ljava/lang/Object;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    const-string/jumbo v6, "packageName"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "className"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "className":Ljava/lang/String;
    new-instance v8, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    invoke-direct {v8, p0, v6, v7}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;-><init>(Lcom/android/server/secrecy/work/ActivityConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v8, "activiytItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    iget-object v9, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 113
    goto :goto_1

    .line 115
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "activiytItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    :cond_2
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 116
    goto :goto_1

    .line 97
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start tag in : found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", expected \'permissions\' or \'config\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 120
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 128
    nop

    .line 129
    return-void

    .line 127
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 77
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 80
    return-void
.end method


# virtual methods
.method public clearActivityInfo()V
    .locals 3

    .line 201
    sget-object v0, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 203
    const-string v1, "SecrecyService.ActivityConfig"

    const-string v2, "clearActivityInfo"

    invoke-static {v1, v2}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActivityItems.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    .line 184
    .local v2, "activityItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->access$000(Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->access$100(Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    .end local v2    # "activityItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    goto :goto_0

    .line 186
    :cond_0
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInActivityConfig(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 151
    if-nez p1, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/work/ActivityConfig;->isInActivityConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInActivityConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    sget-object v1, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    move v2, v0

    .local v2, "index":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    .line 142
    .local v3, "activityItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    invoke-virtual {v3}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 140
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "index":I
    .end local v3    # "activityItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    :cond_2
    monitor-exit v1

    .line 147
    return v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 133
    :cond_3
    :goto_1
    return v0
.end method

.method public parseActivityInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 191
    const-string/jumbo v0, "packageName"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "className"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;-><init>(Lcom/android/server/secrecy/work/ActivityConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v2, "activiytItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    sget-object v3, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 195
    :try_start_0
    iget-object v4, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const-string v3, "SecrecyService.ActivityConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseActivityInfo, packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", className = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public readConfigs()V
    .locals 4

    .line 64
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system/etc/activity_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/secrecy/work/ActivityConfig;->readConfigFromXml(Ljava/io/File;)V

    .line 70
    return-void

    .line 66
    :cond_1
    :goto_0
    const-string v1, "SecrecyService.ActivityConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error hanppend when readConfigs from system/etc/activity_config.xml, configFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/secrecy/policy/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
