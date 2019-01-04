.class Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpairedWifiDisplayPreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x104071a

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setSummary(I)V

    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setOrder(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setOrder(I)V

    const p1, 0x7f121439

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setSummary(I)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    const/4 v0, 0x1

    return v0
.end method
