.class Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;
.super Ljava/lang/Object;
.source "SecrecySwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/policy/SecrecySwitchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecrecySwitchUpdateInfo"
.end annotation


# static fields
.field static final SWITCH_ACTIVITY:Ljava/lang/String; = "activity_sw"

.field static final SWITCH_ADB:Ljava/lang/String; = "adb_sw"

.field static final SWITCH_ID_TIMEOUT:Ljava/lang/String; = "id_timeout"

.field static final SWITCH_LOG:Ljava/lang/String; = "log_sw"

.field static final SWITCH_MAC_TIMEOUT:Ljava/lang/String; = "mac_timeout"

.field static final SWITCH_SUPPORT:Ljava/lang/String; = "support"


# instance fields
.field private final TAG_ACTIVITY:Ljava/lang/Object;

.field private mActivitySwitch:Z

.field private mAdbSwitch:Z

.field private final mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

.field private mIdTimeout:J

.field private mLogSwitch:Z

.field private mMacTimeout:J

.field private mSupportSwitch:Z

.field final synthetic this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "activity"

    iput-object p1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->TAG_ACTIVITY:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    return-void
.end method


# virtual methods
.method public dumpToString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nSecrecy Switch Info:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "log : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mac_timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "id_timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActivitySwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    return v0
.end method

.method public getAdbSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    return v0
.end method

.method public getIdTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    return-wide v0
.end method

.method public getLogSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    return v0
.end method

.method public getMacTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    return-wide v0
.end method

.method public getSupportSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    return v0
.end method

.method public parseContentFromXML(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v2

    nop

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-static {v5}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->access$000(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;)Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/secrecy/work/ActivityConfig;->clearActivityInfo()V

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_a

    if-eqz v4, :cond_8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "support"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_2
    const-string v6, "activity_sw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v6, "log_sw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const-string v6, "adb_sw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "mac_timeout"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "id_timeout"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->TAG_ACTIVITY:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-static {v6}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->access$000(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;)Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/secrecy/work/ActivityConfig;->parseActivityInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    nop

    :cond_9
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto/16 :goto_0

    :cond_a
    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "SecrecyService.SecrecySwitchHelper"

    const-string v5, "Got execption close permReader."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "SecrecyService.SecrecySwitchHelper"

    const-string v5, "Got execption parsing permissions."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_5
    const-string v4, "SecrecyService.SecrecySwitchHelper"

    const-string v5, "Got execption parsing permissions."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    invoke-interface {v3}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;->onSecrecySwitchUpdate()V

    :cond_b
    return-void

    :goto_4
    nop

    nop

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v4

    const-string v5, "SecrecyService.SecrecySwitchHelper"

    const-string v6, "Got execption close permReader."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_5
    throw v3

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method
