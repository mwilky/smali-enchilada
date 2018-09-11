.class Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiMeteredPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    .line 81
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x60e99352

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 86
    :cond_2
    const-string v0, "wifiConfiguration"

    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 88
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->access$100(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;Landroid/support/v7/preference/DropDownPreference;I)V

    .line 94
    .end local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    return-void
.end method
