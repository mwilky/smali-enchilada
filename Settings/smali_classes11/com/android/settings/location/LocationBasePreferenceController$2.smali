.class Lcom/android/settings/location/LocationBasePreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationBasePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationBasePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationBasePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationBasePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationBasePreferenceController$2;->this$0:Lcom/android/settings/location/LocationBasePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefControllerMixin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHighPowerChangeReceiver receive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/location/LocationBasePreferenceController$2;->this$0:Lcom/android/settings/location/LocationBasePreferenceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationBasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method
