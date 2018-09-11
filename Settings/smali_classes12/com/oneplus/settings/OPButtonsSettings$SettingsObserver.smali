.class final Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/OPButtonsSettings;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 762
    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    .line 763
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 759
    const-string p1, "oem_acc_key_lock_mode"

    .line 760
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    .line 764
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 768
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->access$300(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 771
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .line 774
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->access$400(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 775
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 780
    :goto_0
    return-void
.end method
