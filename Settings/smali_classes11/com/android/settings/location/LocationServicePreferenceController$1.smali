.class Lcom/android/settings/location/LocationServicePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationServicePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationServicePreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationServicePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationServicePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController$1;->this$0:Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "LocationServicePrefCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocationServicePrefCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received settings change intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController$1;->this$0:Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-static {v0}, Lcom/android/settings/location/LocationServicePreferenceController;->access$000(Lcom/android/settings/location/LocationServicePreferenceController;)Lcom/android/settings/location/SettingsInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    return-void
.end method
