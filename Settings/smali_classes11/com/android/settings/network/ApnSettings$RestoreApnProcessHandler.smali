.class Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "restoreApnUiHandler"    # Landroid/os/Handler;

    .line 800
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 801
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 802
    iput-object p3, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 803
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 807
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnSettings;->access$600(Lcom/android/settings/network/ApnSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 811
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "mccmnc":Ljava/lang/String;
    :goto_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete apn mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 815
    .local v2, "where":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v3}, Lcom/android/settings/network/ApnSettings;->access$700(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 816
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$800()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/network/ApnSettings;->access$900(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 818
    iget-object v4, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    .line 819
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 822
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/StringBuilder;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void
.end method
