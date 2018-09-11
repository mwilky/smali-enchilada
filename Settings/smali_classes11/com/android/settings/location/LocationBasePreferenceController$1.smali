.class Lcom/android/settings/location/LocationBasePreferenceController$1;
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
    .param p1, "this$0"    # Lcom/android/settings/location/LocationBasePreferenceController;

    .line 148
    iput-object p1, p0, Lcom/android/settings/location/LocationBasePreferenceController$1;->this$0:Lcom/android/settings/location/LocationBasePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/location/LocationBasePreferenceController$1;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "flag":Z
    :goto_0
    :try_start_0
    const-string v1, "pref_key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "pref_key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/location/LocationBasePreferenceController$1;->this$0:Lcom/android/settings/location/LocationBasePreferenceController;

    iget-object v2, v2, Lcom/android/settings/location/LocationBasePreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPButtonPreference;

    .line 155
    .local v2, "pref":Lcom/oneplus/settings/ui/OPButtonPreference;
    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    .line 156
    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    .line 157
    const-string v3, "PrefControllerMixin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckKillProcessesReceiver flag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-nez v0, :cond_1

    .line 159
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPButtonPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "pref_key":Ljava/lang/String;
    .end local v2    # "pref":Lcom/oneplus/settings/ui/OPButtonPreference;
    :cond_1
    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PrefControllerMixin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckKillProcessesReceiver error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
