.class Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;
.super Landroid/database/ContentObserver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUpdateObserver"
.end annotation


# instance fields
.field private final SYSTEM_UPDATE_URI:Landroid/net/Uri;

.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 386
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    .line 387
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 381
    const-string p1, "has_new_version_to_update"

    .line 382
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    .line 383
    const-string p1, "zen_mode"

    .line 384
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 389
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->onChange(ZLandroid/net/Uri;)V

    .line 409
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 394
    if-eqz p1, :cond_0

    .line 395
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->access$000(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 403
    :cond_2
    return-void
.end method

.method public startObserving()V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 415
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 416
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "com.oneplus.appupgrader"

    invoke-static {v1, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardSummary;->access$000(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 418
    :cond_0
    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 422
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 423
    return-void
.end method
