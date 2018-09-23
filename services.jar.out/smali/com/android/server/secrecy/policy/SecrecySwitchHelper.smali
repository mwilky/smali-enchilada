.class public Lcom/android/server/secrecy/policy/SecrecySwitchHelper;
.super Ljava/lang/Object;
.source "SecrecySwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;,
        Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;
    }
.end annotation


# static fields
.field private static final DATA_FILE_DIR:Ljava/lang/String; = "data/system/sys_secrecy_switch_list.xml"

.field public static final FILTER_NAME:Ljava/lang/String; = "sys_secrecy_switch_list"

.field private static final SYS_FILE_DIR:Ljava/lang/String; = "system/etc/sys_secrecy_switch_list.xml"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

.field private final mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

.field private mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SecrecyService.SecrecySwitchHelper"

    iput-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/secrecy/work/ActivityConfig;->getInstance()Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

    new-instance v0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-direct {v0, p0, p2}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;-><init>(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    iput-object p2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    const-string/jumbo v1, "system/etc/sys_secrecy_switch_list.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->parseContentFromXML(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;)Lcom/android/server/secrecy/work/ActivityConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SecrecySwitchHelper dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "support = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getSupportSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activityswitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getActivitySwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logswitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getLogSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getAdbSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mac_timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getMacTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id_timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getIdTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->dumpToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivitySwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getActivitySwitch()Z

    move-result v0

    return v0
.end method

.method public getAdbSwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getAdbSwitch()Z

    move-result v0

    return v0
.end method

.method public getIdTimeout()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getIdTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLogSwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getLogSwitch()Z

    move-result v0

    return v0
.end method

.method public getMacTimeout()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getMacTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportSwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getSupportSwitch()Z

    move-result v0

    return v0
.end method

.method public getUpdateFromProvider()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    invoke-interface {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;->onSecrecyUpdateFromProvider()V

    :cond_0
    const-string v0, "SecrecyService.SecrecySwitchHelper"

    const-string/jumbo v1, "update SecrecySwitchHelper config"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
