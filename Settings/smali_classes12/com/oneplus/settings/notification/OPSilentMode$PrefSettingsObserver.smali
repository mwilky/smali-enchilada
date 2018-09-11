.class final Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPSilentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSilentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrefSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSilentMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPSilentMode;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 93
    invoke-static {}, Lcom/oneplus/settings/notification/OPSilentMode;->access$100()[Lcom/android/settings/notification/SettingPref;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 94
    .local v3, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v3}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSilentMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 96
    return-void

    .line 93
    .end local v3    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 7
    .param p1, "register"    # Z

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSilentMode;->access$000(Lcom/oneplus/settings/notification/OPSilentMode;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/oneplus/settings/notification/OPSilentMode;->access$100()[Lcom/android/settings/notification/SettingPref;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 83
    .local v5, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v5}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    .end local v5    # "pref":Lcom/android/settings/notification/SettingPref;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    :cond_1
    return-void
.end method
