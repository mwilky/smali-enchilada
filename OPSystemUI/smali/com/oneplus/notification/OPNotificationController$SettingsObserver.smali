.class final Lcom/oneplus/notification/OPNotificationController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OPNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final GAME_MODE_BLOCK_NOTIFICATION_URI:Landroid/net/Uri;

.field private final GAME_MODE_NOTIFICATIONS_3RD_CALLS_UID_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/notification/OPNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "game_mode_block_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_BLOCK_NOTIFICATION_URI:Landroid/net/Uri;

    const-string p1, "game_mode_notifications_3rd_calls_uid"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_NOTIFICATIONS_3RD_CALLS_UID_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$000(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_BLOCK_NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_NOTIFICATIONS_3RD_CALLS_UID_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$000(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_BLOCK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    const-string v2, "game_mode_block_notification"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/notification/OPNotificationController;->access$102(Lcom/oneplus/notification/OPNotificationController;I)I

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OPNotificationController;->access$100(Lcom/oneplus/notification/OPNotificationController;)I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1}, Lcom/oneplus/oimc/OIMCManager;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_NOTIFICATIONS_3RD_CALLS_UID_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    const-string v2, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/notification/OPNotificationController;->access$202(Lcom/oneplus/notification/OPNotificationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OPNotificationController;->access$200(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "-1"

    iget-object v2, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v2}, Lcom/oneplus/notification/OPNotificationController;->access$200(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OPNotificationController;->access$300(Lcom/oneplus/notification/OPNotificationController;)Lcom/android/systemui/statusbar/NotificationEntryManager;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OPNotificationController;->access$300(Lcom/oneplus/notification/OPNotificationController;)Lcom/android/systemui/statusbar/NotificationEntryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeHeadsUps()V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OPNotificationController;->access$400(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeHeadsUps for calling uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$200(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OPNotificationController;->access$400(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mGameModeNotifType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$100(Lcom/oneplus/notification/OPNotificationController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mGameMode3rdCallUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$200(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method
