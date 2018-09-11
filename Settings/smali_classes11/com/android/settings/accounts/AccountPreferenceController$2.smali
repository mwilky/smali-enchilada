.class Lcom/android/settings/accounts/AccountPreferenceController$2;
.super Ljava/lang/Object;
.source "AccountPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceController;->newAddOneplusAccountPreference(Landroid/content/Context;)Lcom/android/settingslib/RestrictedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/AccountPreferenceController;

    .line 632
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .line 637
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountPreferenceController;->access$100(Lcom/android/settings/accounts/AccountPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.oneplus.account"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountPreferenceController;->access$200(Lcom/android/settings/accounts/AccountPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 639
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v9, v1

    .line 640
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v1, "come_from"

    const-string v2, "from_settings"

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "com.oneplus.account"

    const-string v3, ""

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountPreferenceController;->access$300(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v5, v9

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 643
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v9    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
