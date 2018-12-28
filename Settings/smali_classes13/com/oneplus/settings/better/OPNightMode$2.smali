.class Lcom/oneplus/settings/better/OPNightMode$2;
.super Landroid/database/ContentObserver;
.source "OPNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPNightMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPNightMode;->access$300(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    const/4 v2, -0x2

    const/16 v3, 0x67

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForEffectStrength()V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->access$400(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->access$400(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setSeekBarProgress(I)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->access$500(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "reading_mode_status"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPNightMode;->access$400(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPNightMode;->access$400(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    :cond_2
    iget-object v5, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPNightMode;->access$600(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "night_display_activated"

    invoke-static {v5, v6, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    move v2, v3

    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->access$400(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->access$400(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    :cond_4
    return-void
.end method
