.class Lcom/android/internal/location/GpsNetInitiatedHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setInEmergency(Z)V

    const-string v2, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_NEW_OUTGOING_CALL - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->updateLocationMode()V

    const-string v1, "GpsNetInitiatedHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location enabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
