.class final Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPRingPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPRingPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPRingPattern;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPRingPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "vibrate_when_ringing"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPRingPattern;->access$200(Lcom/oneplus/settings/notification/OPRingPattern;)V

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPRingPattern;->access$100(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
