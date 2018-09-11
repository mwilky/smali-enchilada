.class Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;
.super Landroid/database/ContentObserver;
.source "OPSystemUpdatePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUpdateObserver"
.end annotation


# static fields
.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"


# instance fields
.field private final SYSTEM_UPDATE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    .line 105
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 101
    const-string p1, "has_new_version_to_update"

    .line 102
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    .line 107
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    iget-object v1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    iget-object v1, v1, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 117
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    iget-object v1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    iget-object v1, v1, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 112
    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->access$000(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 122
    iget-object v1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->access$000(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method
