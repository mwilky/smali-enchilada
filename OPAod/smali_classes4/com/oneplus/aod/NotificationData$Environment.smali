.class public interface abstract Lcom/oneplus/aod/NotificationData$Environment;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Environment"
.end annotation


# virtual methods
.method public abstract getCurrentMediaNotificationKey()Ljava/lang/String;
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract onSecureLockScreen()Z
.end method

.method public abstract shouldHideNotifications(I)Z
.end method

.method public abstract shouldHideNotifications(Ljava/lang/String;)Z
.end method
